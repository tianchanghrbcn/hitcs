package com.exp.join;

import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.NullWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;

/**
 * Map-only 作业的 Mapper：
 *   • DistributedCache 读取 movies.dat  (MovieID  →  Genres)
 *   • 处理 ratings.dat 每行，拼成  “UserID::MovieID::Rating::Timestamp::Genres”
 * key 设为 NullWritable，方便直接落文件（无 Reduce）。
 */
public class MoviesJoinMapper extends Mapper<LongWritable, Text, NullWritable, Text> {

    private final Map<String, String> movieMap = new HashMap<>();

    /* 读取缓存文件，只做一次 */
    @Override
    protected void setup(Context ctx) throws IOException {
        URI[] cache = ctx.getCacheFiles();
        if (cache == null || cache.length == 0) {
            throw new IOException("Movies dat not found in DistributedCache");
        }

        // 缓存文件别名应为 ./movies（见 Driver addCacheFile）
        try (BufferedReader br = new BufferedReader(new FileReader(new File("./movies")))) {
            String line;
            while ((line = br.readLine()) != null) {
                // 限制最多切 3 段，可容忍标题里再含 “::”
                String[] f = line.split("::", 3);
                if (f.length == 3) {                 // MovieID, Title, Genres
                    movieMap.put(f[0], f[2]);        // 只存 Genres
                }
            }
        }
    }

    /* 处理 ratings.dat */
    @Override
    protected void map(LongWritable key, Text value, Context ctx)
            throws IOException, InterruptedException {

        String[] f = value.toString().split("::");   // UserID, MovieID, Rating, Timestamp
        if (f.length < 4) return;                    // 跳过脏行

        String genres = movieMap.getOrDefault(f[1], "UNKNOWN");
        String out = String.join("::", f[0], f[1], f[2], f[3], genres);
        ctx.write(NullWritable.get(), new Text(out));
    }
}
