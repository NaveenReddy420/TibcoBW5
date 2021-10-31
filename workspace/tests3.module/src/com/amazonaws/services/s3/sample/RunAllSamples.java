package com.amazonaws.services.s3.sample;

public class RunAllSamples {

    /** Put your access key here **/
    private static final String awsAccessKey = "AKIA2V7WYL7FF6EMUJN5";
    
    /** Put your secret key here **/
    private static final String awsSecretKey = "UKaU75CLpIvZIksX4WdFKLsd8Iak11WD217MiMW6";
    
    /** Put your bucket name here **/
    private static final String bucketName = "prowesstestim";
    
    /** The name of the region where the bucket is created. (e.g. us-west-1) **/
    private static final String regionName = "us-east-2";
    
    
    /**
     * Run all the included samples. Before running the samples, you need to
     * specify the bucket name, region name and your credentials.
     */
    public static void main(String[] args) {
        
        PutS3ObjectSample.putS3Object(bucketName, regionName, awsAccessKey, awsSecretKey);
        
        //GetS3ObjectSample.getS3Object(bucketName, regionName, awsAccessKey, awsSecretKey);

        //PresignedUrlSample.getPresignedUrlToS3Object(bucketName, regionName, awsAccessKey, awsSecretKey);

        //PutS3ObjectChunkedSample.putS3ObjectChunked(bucketName, regionName, awsAccessKey, awsSecretKey);

    	//GetAuthorization.getAuth(bucketName, regionName, awsAccessKey, awsSecretKey);
        PutAuthorization.putAuth(bucketName, regionName, awsAccessKey, awsSecretKey, "header1,header2,header3");
    	
    }

}
