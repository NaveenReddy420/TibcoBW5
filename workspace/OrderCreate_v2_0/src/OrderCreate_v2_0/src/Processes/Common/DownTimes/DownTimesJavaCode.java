package Processes.Common.DownTimes;
import java.util.*;
import java.io.*;

public class DownTimesJavaCode{
/****** START SET/GET METHOD, DO NOT MODIFY *****/
	protected String process_name = "";
	protected int day_num = 0;
	public String getprocess_name() {
		return process_name;
	}
	public void setprocess_name(String val) {
		process_name = val;
	}
	public int getday_num() {
		return day_num;
	}
	public void setday_num(int val) {
		day_num = val;
	}
/****** END SET/GET METHOD, DO NOT MODIFY *****/
	public DownTimesJavaCode() {
	}
	public void invoke() throws Exception {
/* Available Variables: DO NOT MODIFY
	In  : String process_name
	Out : int day_num
* Available Variables: DO NOT MODIFY *****/
java.util.Calendar cal = java.util.Calendar.getInstance();
setday_num(cal.get(java.util.Calendar.DAY_OF_WEEK));
}
}
