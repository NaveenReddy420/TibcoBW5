package Processes.OrderCreateSAP;
import java.util.*;
import java.io.*;
public class OrderCreateSAPgetDate{
/****** START SET/GET METHOD, DO NOT MODIFY *****/
	protected int month = 0;
	protected int year = 0;
	protected String expirationdate = "";
	public int getmonth() {
		return month;
	}
	public void setmonth(int val) {
		month = val;
	}
	public int getyear() {
		return year;
	}
	public void setyear(int val) {
		year = val;
	}
	public String getexpirationdate() {
		return expirationdate;
	}
	public void setexpirationdate(String val) {
		expirationdate = val;
	}
/****** END SET/GET METHOD, DO NOT MODIFY *****/
	public OrderCreateSAPgetDate() {
	}
	public void invoke() throws Exception {
/* Available Variables: DO NOT MODIFY
	In  : int month
	In  : int year
	Out : String expirationdate
* Available Variables: DO NOT MODIFY *****/

String temp = "20"+year;
int yy = Integer.parseInt(temp);
if (month == 2){
	if((yy % 400 == 0) || ((yy % 4 == 0) && (yy % 100 != 0)))
		expirationdate = yy+"-"+"02"+"-"+"29";
	else
		expirationdate = yy+"-"+"02"+"-"+"28";
}
else if(month == 4 || month==6 ||month == 9 || month ==11)
{
	if(String.valueOf(month).length()==1)
		expirationdate= yy+"-"+"0"+month+"-"+"30";
	else
		expirationdate = yy+"-"+month+"-"+"30";
}
else {
	if(String.valueOf(month).length()==1)
		expirationdate= yy+"-"+"0"+month+"-"+"31";
	else
		expirationdate = yy+"-"+month+"-"+"31";

}}
}
