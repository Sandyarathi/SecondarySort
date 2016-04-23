package SecontSort;

import java.io.IOException;
import java.util.Arrays;
import java.util.StringTokenizer;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.mapreduce.lib.input.FileSplit;

public class SortMapper  extends Mapper<Text, Text, Text, IntWritable> {
      
	private final static IntWritable one = new IntWritable(1);
    public void map(Text key, IntWritable value, Context context) throws IOException, InterruptedException {
            
            context.write(new IntWriteable(Integer.parseInt(value.toString())), key);
		
	}
	
	
}
