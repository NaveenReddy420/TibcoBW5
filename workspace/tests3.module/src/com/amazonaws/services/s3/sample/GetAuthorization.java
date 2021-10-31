package com.amazonaws.services.s3.sample;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import com.amazonaws.services.s3.sample.auth.AWS4SignerBase;
import com.amazonaws.services.s3.sample.auth.AWS4SignerForAuthorizationHeader;

public class GetAuthorization {
	public static AWSHeader getAuth(String bucketName, String regionName, String awsAccessKey, String awsSecretKey) {
        System.out.println("*******************************************************");
        System.out.println("*  Executing sample 'GetObjectUsingHostedAddressing'  *");
        System.out.println("*******************************************************");
        
        // the region-specific endpoint to the target object expressed in path style
        URL endpointUrl;
        try {
        	// **Kirti: updated url
            //endpointUrl = new URL("https://" + bucketName + ".s3."+ regionName +"amazonaws.com/fileonserver.txt");
            endpointUrl = new URL("https://" + bucketName + ".s3.amazonaws.com/fileonserver.txt");
        } catch (MalformedURLException e) {
            throw new RuntimeException("Unable to parse service endpoint: " + e.getMessage());
        }
        
        // for a simple GET, we have no body so supply the precomputed 'empty' hash
        Map<String, String> headers = new HashMap<String, String>();
        AWSHeader awsHeader = new AWSHeader(); //added by Kirti
        
        headers.put("x-amz-content-sha256", AWS4SignerBase.EMPTY_BODY_SHA256);
        awsHeader.amzContentSha256 = AWS4SignerBase.EMPTY_BODY_SHA256; //added by Kirti
        
        AWS4SignerForAuthorizationHeader signer = new AWS4SignerForAuthorizationHeader(
                endpointUrl, "GET", "s3", regionName);
        String authorization = signer.computeSignature(headers, 
                                                       null, // no query parameters
                                                       AWS4SignerBase.EMPTY_BODY_SHA256, 
                                                       awsAccessKey, 
                                                       awsSecretKey, awsHeader);
                
        // place the computed signature into a formatted 'Authorization' header
        // and call S3
        headers.put("Authorization", authorization);
        awsHeader.authorization = authorization; //added by Kirti
        
        
        return awsHeader;
        
        
        
    }
}
