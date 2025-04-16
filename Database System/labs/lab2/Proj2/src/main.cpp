#include <iostream>
#include <stdlib.h>
#include <cstring>
#include <memory>
#include "page.h"
#include "buffer.h"
#include "file_iterator.h"
#include "page_iterator.h"
#include "exceptions/file_not_found_exception.h"
#include "exceptions/invalid_page_exception.h"
#include "exceptions/page_not_pinned_exception.h"
#include "exceptions/page_pinned_exception.h"
#include "exceptions/buffer_exceeded_exception.h"

/**
 * @brief 宏函数用于打印错误信息并退出程序。
 * @param str 错误信息字符串
 */
#define PRINT_ERROR(str) \
{ \
    std::cerr << "On Line No:" << __LINE__ << "\n"; \
    std::cerr << str << "\n"; \
    exit(1); \
}

using namespace badgerdb;

const PageId num = 100; ///< 页面ID的常量值，用于测试
PageId pid[num], pageno1, pageno2, pageno3, i; ///< 页面ID变量
RecordId rid[num], rid2, rid3; ///< 记录ID变量
Page* page, * page2, * page3; ///< 页面指针
char tmpbuf[100]; ///< 临时缓冲区
BufMgr* bufMgr; ///< 缓冲区管理器指针
File* file1ptr, * file2ptr, * file3ptr, * file4ptr, * file5ptr; ///< 文件指针

// 测试函数声明
void test1();
void test2();
void test3();
void test4();
void test5();
void test6();
void testBufMgr();

/**
 * @brief 主函数，演示如何使用File和Page类。
 * @return int 返回程序状态码
 */
int main()
{
	// 测试数据库文件的名称
	const std::string& filename = "test.db"; ///< 数据库文件名

	// 清理任何由于先前的崩溃运行留下的残余文件
	try
	{
		File::remove(filename); ///< 删除已存在的文件
	}
	catch (FileNotFoundException)
	{
		// 忽略异常，文件不存在时无操作
	}

	{
		// 创建一个新的数据库文件
		File new_file = File::create(filename); ///< 创建新的数据库文件

		PageId third_page_number; ///< 记录第三个页面的页面号

		// 分配一些页面并写入数据
		for (int i = 0; i < 5; ++i) {
			Page new_page = new_file.allocatePage(); ///< 分配新的页面
			if (i == 3) {
				third_page_number = new_page.page_number(); ///< 记录第三个页面的编号
			}
			new_page.insertRecord("hello!"); ///< 在页面中插入记录
			new_file.writePage(new_page); ///< 将页面写回到文件
		}

		// 迭代文件中的所有页面
		for (FileIterator iter = new_file.begin(); iter != new_file.end(); ++iter) {
			Page p = *iter; ///< 获取当前页面
			// 迭代页面中的所有记录
			for (PageIterator page_iter = p.begin(); page_iter != p.end(); ++page_iter) {
				std::cout << "Found record: " << *page_iter << " on page " << p.page_number() << "\n"; ///< 打印页面中的记录
			}
		}

		// 读取第三个页面并在其中插入一条新记录
		Page third_page = new_file.readPage(third_page_number); ///< 读取第三个页面
		const RecordId& rid = third_page.insertRecord("world!"); ///< 插入新的记录
		new_file.writePage(third_page); ///< 将更新后的页面写回文件

		// 检索刚插入的记录
		std::cout << "Third page has a new record: " << third_page.getRecord(rid) << "\n\n"; ///< 打印新插入的记录
	}

	// new_file超出作用域，文件会自动关闭

	// 删除文件，因为测试已完成
	File::remove(filename); ///< 删除数据库文件

	// 测试缓冲区管理器，如果不需要测试，请注释掉此行
	testBufMgr();
}

/**
 * @brief 测试缓冲区管理器的功能。
 */

void testBufMgr()
{
	// create buffer manager
	bufMgr = new BufMgr(num);

	// create dummy files
  const std::string& filename1 = "test.1";
  const std::string& filename2 = "test.2";
  const std::string& filename3 = "test.3";
  const std::string& filename4 = "test.4";
  const std::string& filename5 = "test.5";

  try
	{
    File::remove(filename1);
    File::remove(filename2);
    File::remove(filename3);
    File::remove(filename4);
    File::remove(filename5);
  }
	catch(FileNotFoundException e)
	{
  }

	File file1 = File::create(filename1);
	File file2 = File::create(filename2);
	File file3 = File::create(filename3);
	File file4 = File::create(filename4);
	File file5 = File::create(filename5);

	file1ptr = &file1;
	file2ptr = &file2;
	file3ptr = &file3;
	file4ptr = &file4;
	file5ptr = &file5;

	//Test buffer manager
	//Comment tests which you do not wish to run now. Tests are dependent on their preceding tests. So, they have to be run in the following order. 
	//Commenting  a particular test requires commenting all tests that follow it else those tests would fail.
	test1();
	test2();
	test3();
	test4();
	test5();
	test6();

	//Close files before deleting them
	file1.~File();
	file2.~File();
	file3.~File();
	file4.~File();
	file5.~File();

	//Delete files
	File::remove(filename1);
	File::remove(filename2);
	File::remove(filename3);
	File::remove(filename4);
	File::remove(filename5);

	delete bufMgr;

	std::cout << "\n" << "Passed all tests." << "\n";
}

void test1()
{
	//Allocating pages in a file...
	for (i = 0; i < num; i++)
	{
		bufMgr->allocPage(file1ptr, pid[i], page);
		sprintf((char*)tmpbuf, "test.1 Page %d %7.1f", pid[i], (float)pid[i]);
		rid[i] = page->insertRecord(tmpbuf);
		bufMgr->unPinPage(file1ptr, pid[i], true);
	}

	//Reading pages back...
	for (i = 0; i < num; i++)
	{
		bufMgr->readPage(file1ptr, pid[i], page);
		sprintf((char*)&tmpbuf, "test.1 Page %d %7.1f", pid[i], (float)pid[i]);
		if(strncmp(page->getRecord(rid[i]).c_str(), tmpbuf, strlen(tmpbuf)) != 0)
		{
			PRINT_ERROR("ERROR :: CONTENTS DID NOT MATCH");
		}
		bufMgr->unPinPage(file1ptr, pid[i], false);
	}
	std::cout<< "Test 1 passed" << "\n";
}

void test2()
{
	//Writing and reading back multiple files
	//The page number and the value should match

	for (i = 0; i < num/3; i++) 
	{
		bufMgr->allocPage(file2ptr, pageno2, page2);
		sprintf((char*)tmpbuf, "test.2 Page %d %7.1f", pageno2, (float)pageno2);
		rid2 = page2->insertRecord(tmpbuf);

		int index = rand() % num;
    pageno1 = pid[index];
		bufMgr->readPage(file1ptr, pageno1, page);
		sprintf((char*)tmpbuf, "test.1 Page %d %7.1f", pageno1, (float)pageno1);
		if(strncmp(page->getRecord(rid[index]).c_str(), tmpbuf, strlen(tmpbuf)) != 0)
		{
			PRINT_ERROR("ERROR :: CONTENTS DID NOT MATCH");
		}

		bufMgr->allocPage(file3ptr, pageno3, page3);
		sprintf((char*)tmpbuf, "test.3 Page %d %7.1f", pageno3, (float)pageno3);
		rid3 = page3->insertRecord(tmpbuf);

		bufMgr->readPage(file2ptr, pageno2, page2);
		sprintf((char*)&tmpbuf, "test.2 Page %d %7.1f", pageno2, (float)pageno2);
		if(strncmp(page2->getRecord(rid2).c_str(), tmpbuf, strlen(tmpbuf)) != 0)
		{
			PRINT_ERROR("ERROR :: CONTENTS DID NOT MATCH");
		}

		bufMgr->readPage(file3ptr, pageno3, page3);
		sprintf((char*)&tmpbuf, "test.3 Page %d %7.1f", pageno3, (float)pageno3);
		if(strncmp(page3->getRecord(rid3).c_str(), tmpbuf, strlen(tmpbuf)) != 0)
		{
			PRINT_ERROR("ERROR :: CONTENTS DID NOT MATCH");
		}

		bufMgr->unPinPage(file1ptr, pageno1, false);
	}

	for (i = 0; i < num/3; i++) {
		bufMgr->unPinPage(file2ptr, i+1, true);
		bufMgr->unPinPage(file2ptr, i+1, true);
		bufMgr->unPinPage(file3ptr, i+1, true);
		bufMgr->unPinPage(file3ptr, i+1, true);
	}

	std::cout << "Test 2 passed" << "\n";
}

void test3()
{
	try
	{
		bufMgr->readPage(file4ptr, 1, page);
		PRINT_ERROR("ERROR :: File4 should not exist. Exception should have been thrown before execution reaches this point.");
	}
	catch(InvalidPageException e)
	{
	}

	std::cout << "Test 3 passed" << "\n";
}

void test4()
{
	bufMgr->allocPage(file4ptr, i, page);
	bufMgr->unPinPage(file4ptr, i, true);
	try
	{
		bufMgr->unPinPage(file4ptr, i, false);
		PRINT_ERROR("ERROR :: Page is already unpinned. Exception should have been thrown before execution reaches this point.");
	}
	catch(PageNotPinnedException&)
	{
	}

	std::cout << "Test 4 passed" << "\n";
}

void test5()
{
	for (i = 0; i < num; i++) {
		bufMgr->allocPage(file5ptr, pid[i], page);
		sprintf((char*)tmpbuf, "test.5 Page %d %7.1f", pid[i], (float)pid[i]);
		rid[i] = page->insertRecord(tmpbuf);
	}

	PageId tmp;
	try
	{
		bufMgr->allocPage(file5ptr, tmp, page);
		PRINT_ERROR("ERROR :: No more frames left for allocation. Exception should have been thrown before execution reaches this point.");
	}
	catch(BufferExceededException&)
	{
	}

	std::cout << "Test 5 passed" << "\n";

	for (i = 1; i <= num; i++)
		bufMgr->unPinPage(file5ptr, i, true);
}

void test6()
{
	//flushing file with pages still pinned. Should generate an error
	for (i = 1; i <= num; i++) {
		bufMgr->readPage(file1ptr, i, page);
	}

	try
	{
		bufMgr->flushFile(file1ptr);
		PRINT_ERROR("ERROR :: Pages pinned for file being flushed. Exception should have been thrown before execution reaches this point.");
	}
	catch(PagePinnedException e)
	{
	}

	std::cout << "Test 6 passed" << "\n";

	for (i = 1; i <= num; i++) 
		bufMgr->unPinPage(file1ptr, i, true);

	bufMgr->flushFile(file1ptr);
}
