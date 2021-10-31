package com.amazonaws.services.s3.sample;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;


import com.amazonaws.services.s3.sample.auth.AWS4SignerBase;
import com.amazonaws.services.s3.sample.auth.AWS4SignerForAuthorizationHeader;
import com.amazonaws.services.s3.sample.util.HttpUtils;

/**
 * Samples showing how to GET an object from Amazon S3 using Signature V4
 * authorization.
 */
public class GetS3ObjectSample {
    
    /**
     * Request the content of the object '/ExampleObject.txt' from the given
     * bucket in the given region using virtual hosted-style object addressing.
     */
    public static void getS3Object(String bucketName, String regionName, String awsAccessKey, String awsSecretKey, AWSHeader awsHeader) {
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

        String response = HttpUtils.invokeHttpRequest(endpointUrl, "GET", headers, null);
        System.out.println("--------- Response content ---------");
        System.out.println(response);
        System.out.println("------------------------------------");
    }
}
