package Processes.ParseValidationErrorStackTrace;
import java.util.*;
import java.io.*;
public class ParseValidationErrorStackTraceParseValidationError{
/****** START SET/GET METHOD, DO NOT MODIFY *****/
	protected String stackTrace = "";
	protected String causedBy = "";
	protected String ErrorMsg = "";
	protected String occuredAt = "";
	public String getstackTrace() {
		return stackTrace;
	}
	public void setstackTrace(String val) {
		stackTrace = val;
	}
	public String getcausedBy() {
		return causedBy;
	}
	public void setcausedBy(String val) {
		causedBy = val;
	}
	public String getErrorMsg() {
		return ErrorMsg;
	}
	public void setErrorMsg(String val) {
		ErrorMsg = val;
	}
	public String getoccuredAt() {
		return occuredAt;
	}
	public void setoccuredAt(String val) {
		occuredAt = val;
	}
/****** END SET/GET METHOD, DO NOT MODIFY *****/
	public ParseValidationErrorStackTraceParseValidationError() {
	}
	public void invoke() throws Exception {
/* Available Variables: DO NOT MODIFY
	In  : String stackTrace
	Out : String causedBy
	Out : String ErrorMsg
	Out : String occuredAt
* Available Variables: DO NOT MODIFY *****/


String []arr = stackTrace.split("\\sat\\s");
		int i=0;

String err="",err1="";
		for(i=0;i<arr.length;i++)
			if(arr[i].contains("caused")){
				err = arr[i];
				err1 = arr[i+1];
				}

		causedBy = err.substring(err.indexOf(":"),err.indexOf(":",err.indexOf(":")+1));
		try {
		ErrorMsg = err.substring(err.indexOf("validation"),err.lastIndexOf(". ")+1);
		}
		catch(Exception e){
		ErrorMsg = err.substring(err.indexOf("validation"));
		}
		ErrorMsg = ErrorMsg.replace("\"","\'");
		occuredAt = err1.split("com.tibco")[0];
		


}
}
