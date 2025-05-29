package com.exp.join;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IntWritable;   // ★ 新增
import org.apache.hadoop.io.Text;         // ★ 新增
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.TextInputFormat;
import org.apache.hadoop.mapreduce.lib.output.TextOutputFormat;

/**
 * 统计评分次数（Map + Reduce）
 *   输入：Map-only 连接结果 /movie/join
 *   输出：/movie/joinCount  MovieID\tGenres   Count
 */
public class MoviesCountDriver {

    public static void main(String[] args) throws Exception {
        if (args.length != 2) {
            System.err.println("Usage: MoviesCountDriver <in> <out>");
            System.exit(1);
        }

        Configuration conf = new Configuration();
        Job job = Job.getInstance(conf, "Movies-Count");
        job.setJarByClass(MoviesCountDriver.class);

        /* Mapper & Reducer */
        job.setMapperClass(MoviesCountMapper.class);
        job.setReducerClass(MoviesCountReducer.class);

        /* Map 阶段输出类型 */
        job.setMapOutputKeyClass(Text.class);
        job.setMapOutputValueClass(Text.class);

        /* Reduce 阶段输出类型 */
        job.setOutputKeyClass(Text.class);          // MovieID \t Genres
        job.setOutputValueClass(IntWritable.class); // Count

        /* I/O 路径 */
        TextInputFormat.addInputPath(job, new Path(args[0]));
        TextOutputFormat.setOutputPath(job, new Path(args[1]));

        /* 启动作业 */
        System.exit(job.waitForCompletion(true) ? 0 : 1);
    }
}
