package com.amazonaws.services.s3.sample;

import java.io.Serializable;;

public class AWSHeader implements Serializable{
	public String amzContentSha256;
	public String authorization;
	public String amzDate;
	public String host;
	public int contentLength;
	public String storageClass;
}
