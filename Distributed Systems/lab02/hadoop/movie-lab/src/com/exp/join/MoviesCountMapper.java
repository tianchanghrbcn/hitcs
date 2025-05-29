package com.exp.join;
import org.apache.hadoop.io.*; import org.apache.hadoop.mapreduce.Mapper;
public class MoviesCountMapper extends Mapper<LongWritable,Text,Text,Text>{
  @Override protected void map(LongWritable k,Text v,Context ctx)
      throws java.io.IOException,InterruptedException{
    String[] f=v.toString().split("::");
    ctx.write(new Text(f[1]), new Text(f[4]));
  }
}
