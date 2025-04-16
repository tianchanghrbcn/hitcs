/**
 * @author See Contributors.txt for code contributors and overview of BadgerDB.
 *
 * @section LICENSE
 * Copyright (c) 2012 Database Group, Computer Sciences Department, University of Wisconsin-Madison.
 */

#include <memory>
#include <iostream>
#include "buffer.h"
#include "exceptions/buffer_exceeded_exception.h"
#include "exceptions/page_not_pinned_exception.h"
#include "exceptions/page_pinned_exception.h"
#include "exceptions/bad_buffer_exception.h"
#include "exceptions/hash_not_found_exception.h"

namespace badgerdb
{
    using namespace std;

    /**
     * @brief Constructor for BufMgr, initializes the buffer manager.
     * @param bufs Number of buffer frames to be allocated.
     */
    BufMgr::BufMgr(std::uint32_t bufs)
        : numBufs(bufs) // Initialize buffer frame count
    {
        // Allocate memory for buffer descriptor table
        bufDescTable = new BufDesc[bufs];

        // Initialize the frame number and validity for each entry in the descriptor table
        for (FrameId i = 0; i < bufs; i++)
        {
            bufDescTable[i].frameNo = i; // Set frame number
            bufDescTable[i].valid = false; // Set frame as invalid
        }

        // Allocate memory for the buffer pool
        bufPool = new Page[bufs];

        // Calculate hash table size and allocate memory
        int htsize = ((((int)(bufs * 1.2)) * 2) / 2) + 1;
        hashTable = new BufHashTbl(htsize);

        // Initialize the clock hand to the last frame
        clockHand = bufs - 1;
    }

    /**
     * @brief Destructor for BufMgr, releases allocated resources.
     */
    BufMgr::~BufMgr()
    {
        delete hashTable; // Release hash table memory
        delete[] bufPool; // Release buffer pool memory
        delete[] bufDescTable; // Release descriptor table memory
    }

    /**
     * @brief Advances the clock hand to the next buffer frame.
     */
    void BufMgr::advanceClock()
    {
        clockHand++; // Move clock hand to the next frame
        if (clockHand >= numBufs) // Wrap around if exceeding frame count
        {
            clockHand %= numBufs;
        }
    }

    /**
     * @brief Allocates a free buffer frame or throws an exception if all frames are pinned.
     * @param frame Returns the allocated frame number.
     * @throw BufferExceededException if all frames are pinned.
     */
    void BufMgr::allocBuf(FrameId& frame)
    {
        unsigned pinned = 0; // Track the number of pinned frames

        while (true) // Loop to find a free frame
        {
            advanceClock(); // Move the clock hand

            if (!bufDescTable[clockHand].valid) // If the frame is invalid
            {
                frame = clockHand; // Allocate the frame
                return;
            }

            if (bufDescTable[clockHand].refbit) // If the reference bit is set
            {
                bufDescTable[clockHand].refbit = false; // Clear the reference bit
                continue;
            }

            if (bufDescTable[clockHand].pinCnt) // If the frame is pinned
            {
                pinned++;
                if (pinned == numBufs) // If all frames are pinned
                {
                    throw BufferExceededException();
                }
                continue;
            }

            if (bufDescTable[clockHand].dirty) // If the frame is dirty
            {
                bufDescTable[clockHand].file->writePage(bufPool[clockHand]); // Write the page back to disk
                bufDescTable[clockHand].dirty = false; // Clear the dirty flag
            }

            frame = clockHand; // Allocate the frame

            if (bufDescTable[clockHand].valid) // If the frame is valid
            {
                try
                {
                    hashTable->remove(bufDescTable[clockHand].file, bufDescTable[clockHand].pageNo); // Remove the page from the hash table
                }
                catch (HashNotFoundException&)
                {
                    // Ignore hash not found exceptions
                }
            }
            break;
        }
    }

    /**
     * @brief Reads a page, loading it from disk if necessary.
     * @param file Pointer to the file object.
     * @param pageNo The page number to read.
     * @param page Returns the page data pointer.
     */
    void BufMgr::readPage(File* file, const PageId pageNo, Page*& page)
    {
        FrameId frame;
        try
        {
            hashTable->lookup(file, pageNo, frame); // Find the frame number in the hash table
            bufDescTable[frame].refbit = true; // Set the reference bit
            bufDescTable[frame].pinCnt++; // Increment the pin count
            page = (bufPool + frame); // Return the page pointer
        }
        catch (HashNotFoundException&) // If page not found in the buffer
        {
            allocBuf(frame); // Allocate a new buffer frame
            bufPool[frame] = file->readPage(pageNo); // Load the page from disk
            hashTable->insert(file, pageNo, frame); // Add to the hash table
            bufDescTable[frame].Set(file, pageNo); // Set the descriptor table entry
            page = (bufPool + frame); // Return the page pointer
        }
    }

    /**
 * @brief Unpins a page, optionally marking it as dirty.
 * @param file Pointer to the file object.
 * @param pageNo The page number to unpin.
 * @param dirty Set to true if the page has been modified.
 * @throw PageNotPinnedException if the page is not pinned.
 */
    void BufMgr::unPinPage(File* file, const PageId pageNo, const bool dirty)
    {
        FrameId frame;
        try
        {
            hashTable->lookup(file, pageNo, frame); // Look up the frame in the hash table
        }
        catch (HashNotFoundException&)
        {
            cerr << "Warning: Attempting to unpin a non-existent page" << endl; // Log warning
            return;
        }

        if (bufDescTable[frame].pinCnt > 0) // Check if the page is pinned
        {
            bufDescTable[frame].pinCnt--; // Decrement the pin count
            if (dirty) // Mark as dirty if specified
            {
                bufDescTable[frame].dirty = true;
            }
        }
        else
        {
            throw PageNotPinnedException(bufDescTable[frame].file->filename(), bufDescTable[frame].pageNo, frame); // Throw exception
        }
    }

    /**
     * @brief Flushes all dirty pages of a specified file to disk.
     * @param file Pointer to the file object.
     * @throw PagePinnedException if a page is pinned and cannot be flushed.
     * @throw BadBufferException if an invalid buffer is encountered.
     */
    void BufMgr::flushFile(const File* file)
    {
        for (FrameId fi = 0; fi < numBufs; fi++) // Iterate through all frames
        {
            if (bufDescTable[fi].file == file) // Check if the frame belongs to the file
            {
                if (!bufDescTable[fi].valid) // Validate frame
                {
                    throw BadBufferException(fi, bufDescTable[fi].dirty, bufDescTable[fi].valid, bufDescTable[fi].refbit); // Invalid buffer
                }

                if (bufDescTable[fi].pinCnt > 0) // Check if the page is pinned
                {
                    throw PagePinnedException(file->filename(), bufDescTable[fi].pageNo, fi); // Cannot flush pinned page
                }

                if (bufDescTable[fi].dirty) // Check if the page is dirty
                {
                    bufDescTable[fi].file->writePage(bufPool[fi]); // Write back to disk
                    bufDescTable[fi].dirty = false; // Reset dirty flag
                }

                hashTable->remove(file, bufDescTable[fi].pageNo); // Remove from hash table
                bufDescTable[fi].Clear(); // Clear the descriptor table entry
            }
        }
    }

    /**
     * @brief Allocates a new page and inserts it into the buffer.
     * @param file Pointer to the file object.
     * @param pageNo Returns the allocated page number.
     * @param page Returns a pointer to the allocated page.
     */
    void BufMgr::allocPage(File* file, PageId& pageNo, Page*& page)
    {
        FrameId frame;
        Page newPage = file->allocatePage(); // Allocate a new page in the file
        allocBuf(frame); // Allocate a buffer frame
        bufPool[frame] = newPage; // Assign the new page to the buffer frame
        pageNo = newPage.page_number(); // Return the page number
        hashTable->insert(file, pageNo, frame); // Insert into the hash table
        bufDescTable[frame].Set(file, pageNo); // Update buffer descriptor
        page = bufPool + frame; // Return the page pointer
    }

    /**
     * @brief Deletes a page and removes it from the buffer.
     * @param file Pointer to the file object.
     * @param pageNo The page number to delete.
     */
    void BufMgr::disposePage(File* file, const PageId pageNo)
    {
        FrameId frame;
        try
        {
            hashTable->lookup(file, pageNo, frame); // Look up the frame in the hash table
            hashTable->remove(file, pageNo); // Remove the page from the hash table
            bufDescTable[frame].Clear(); // Clear the descriptor table entry
        }
        catch (HashNotFoundException&)
        {
            // Ignore if the page is not in the hash table
        }

        file->deletePage(pageNo); // Delete the page from the file
    }

    /**
     * @brief Prints the state of the buffer manager, including all buffer frames.
     */
    void BufMgr::printSelf()
    {
        BufDesc* tmpbuf;
        int validFrames = 0;

        for (unsigned i = 0; i < numBufs; i++) // Iterate over all frames
        {
            tmpbuf = &(bufDescTable[i]);
            cout << "FrameNo: " << i << " ";
            tmpbuf->Print(); // Print frame descriptor details

            if (tmpbuf->valid) // Count valid frames
            {
                validFrames++;
            }
        }

        cout << "Total Number of Valid Frames: " << validFrames << endl; // Print total valid frame count
    }

} // namespace badgerdb

