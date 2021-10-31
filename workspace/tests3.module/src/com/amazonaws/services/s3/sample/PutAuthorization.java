package com.amazonaws.services.s3.sample;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import com.amazonaws.services.s3.sample.auth.AWS4SignerBase;
import com.amazonaws.services.s3.sample.auth.AWS4SignerForAuthorizationHeader;
import com.amazonaws.services.s3.sample.util.BinaryUtils;

public class PutAuthorization {
	
	public static AWSHeader putAuth(String bucketName, String regionName, String awsAccessKey, String awsSecretKey, String objectContent) {
        System.out.println("************************************************");
        System.out.println("*        Executing sample 'PutS3Object'        *");
        System.out.println("************************************************");
        AWSHeader awsHeader = new AWSHeader(); //added by Kirti
        URL endpointUrl;
        try {
            if (regionName.equals("us-east-1")) {
                endpointUrl = new URL("https://s3.amazonaws.com/" + bucketName + "/ExampleObject.txt");
            } else {
                endpointUrl = new URL("https://s3-" + regionName + ".amazonaws.com/" + bucketName + "/ExampleObject.txt");
            }
        } catch (MalformedURLException e) {
            throw new RuntimeException("Unable to parse service endpoint: " + e.getMessage());
        }
        
        // precompute hash of the body content
        byte[] contentHash = AWS4SignerBase.hash(objectContent);
        String contentHashString = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855";//BinaryUtils.toHex(contentHash);
        
        Map<String, String> headers = new HashMap<String, String>();
        headers.put("x-amz-content-sha256", contentHashString);
        //awsHeader.amzContentSha256 = contentHashString;
        awsHeader.amzContentSha256 = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855";
        
        //headers.put("content-length", "" + objectContent.length());
        //awsHeader.contentLength = objectContent.length();

        //headers.put("x-amz-storage-class", "REDUCED_REDUNDANCY");
        //awsHeader.storageClass = "REDUCED_REDUNDANCY";
        
        AWS4SignerForAuthorizationHeader signer = new AWS4SignerForAuthorizationHeader(
                endpointUrl, "PUT", "s3", regionName);
        String authorization = signer.computeSignature(headers, 
                                                       null, // no query parameters
                                                       contentHashString, 
                                                       awsAccessKey, 
                                                       awsSecretKey, awsHeader);
                
        // express authorization for this as a header
        headers.put("Authorization", authorization);
        awsHeader.authorization = authorization;
        
        // make the call to Amazon S3
        //String response = HttpUtils.invokeHttpRequest(endpointUrl, "PUT", headers, objectContent);
        //System.out.println("--------- Response content ---------");
        //System.out.println(response);
        //System.out.println("------------------------------------");
        
        return awsHeader;
	}
}
