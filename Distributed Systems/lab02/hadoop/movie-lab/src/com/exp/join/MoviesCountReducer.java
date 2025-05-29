package com.exp.join;
import org.apache.hadoop.io.*; import org.apache.hadoop.mapreduce.Reducer;
public class MoviesCountReducer extends Reducer<Text,Text,Text,IntWritable>{
  @Override protected void reduce(Text k,Iterable<Text> vs,Context ctx)
      throws java.io.IOException,InterruptedException{
    int c=0; String g=null; for(Text t:vs){c++; g=t.toString();}
    ctx.write(new Text(k.toString()+"\t"+g), new IntWritable(c));
  }
}
