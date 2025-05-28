package com.exp.join;
import org.apache.hadoop.conf.*; import org.apache.hadoop.fs.Path; import org.apache.hadoop.mapreduce.*;
import org.apache.hadoop.mapreduce.lib.input.TextInputFormat;
import org.apache.hadoop.mapreduce.lib.output.TextOutputFormat; import java.net.URI;
public class MoviesJoinDriver{
  public static void main(String[] a)throws Exception{
    if(a.length!=3){System.err.println("usage: ratings movies out");System.exit(1);}
    Job job=Job.getInstance(new Configuration(),"Movies-Join");
    job.setJarByClass(MoviesJoinDriver.class);
    job.addCacheFile(new URI(a[1]+"#movies"));
    job.setMapperClass(com.exp.join.MoviesJoinMapper.class);
    job.setNumReduceTasks(0);
    TextInputFormat.addInputPath(job,new Path(a[0]));
    TextOutputFormat.setOutputPath(job,new Path(a[2]));
    job.setInputFormatClass(TextInputFormat.class);
    job.setOutputFormatClass(TextOutputFormat.class);
    System.exit(job.waitForCompletion(true)?0:1);
  }
}
