//
//  MHCryptoTests.m
//  MHCryptoTests
//
//  Created by Michael Henry Pantaleon on 02/22/2017.
//  Copyright (c) 2017 Michael Henry Pantaleon. All rights reserved.
//

// https://github.com/Specta/Specta

@import MHCrypto;

SpecBegin(InitialSpecs)

describe(@"Checking HMAC", ^{
    
    it(@"can be a simple string key and message", ^{
        
        NSString *secretKey = @"hello";
        NSString *time = @"123456";
        NSString *hmacSha256 = [[secretKey mh_sha256DigestWithMessage:time]mh_toHexString];
        expect(hmacSha256).to
            .equal(@"8814a5904d59cb8b41da8073a2c4b95c20818935afc3a0ad48dbc4ffb476d8ac");
        
    });
    
    it(@"can be raw like in amazon", ^{
        /*
         aws version 4 - HMAC
         http://docs.aws.amazon.com/general/latest/gr/signature-v4-examples.html
         */
        
        NSString *key = @"wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY";
        NSString *dateStamp = @"20120215";
        NSString *regionName = @"us-east-1";
        NSString *serviceName = @"iam";
        
        NSData *kDate = [[NSString stringWithFormat:@"AWS4%@",key]mh_sha256DigestWithMessage:dateStamp];
        NSLog(@"%@",[kDate mh_toHexString]);
        expect([kDate mh_toHexString]).to.equal(@"969fbb94feb542b71ede6f87fe4d5fa29c789342b0f407474670f0c2489e0a0d");
        
        NSData *kRegion = [kDate mh_sha256DigestWithMessage:regionName];
        NSLog(@"%@",[kRegion mh_toHexString]);
        expect([kRegion mh_toHexString]).to.equal(@"69daa0209cd9c5ff5c8ced464a696fd4252e981430b10e3d3fd8e2f197d7a70c");
        
        NSData *kService = [kRegion mh_sha256DigestWithMessage:serviceName];
        NSLog(@"%@",[kService mh_toHexString]);
        expect([kService mh_toHexString]).to.equal(@"f72cfd46f26bc4643f06a11eabb6c0ba18780c19a8da0c31ace671265e3c87fa");
        
        NSData *kSigning = [kService mh_sha256DigestWithMessage:@"aws4_request"];
        NSLog(@"%@",[kSigning mh_toHexString]);
        expect([kSigning mh_toHexString]).to.equal(@"f4780e2d9f65fa895f9c67b32ce1baf0b0d8a43505a000a1a9e090d414db404d");
        
    });

});

SpecEnd

