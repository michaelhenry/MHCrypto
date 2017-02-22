# MHCrypto

HASHING and HMAC implementation for nsstring and nsdata. 

### HOW to

```objc

/*
aws version 4 - HMAC
http://docs.aws.amazon.com/general/latest/gr/signature-v4-examples.html
*/

NSString *key = @"wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY";
NSString *dateStamp = @"20120215";
NSString *regionName = @"us-east-1";
NSString *serviceName = @"iam";

NSData *kDate = [[NSString stringWithFormat:@"AWS4%@",key]mh_hmacSha256DigestWithMessage:dateStamp];
NSLog(@"%@",[kDate mh_toHexString]);
expect([kDate mh_toHexString]).to.equal(@"969fbb94feb542b71ede6f87fe4d5fa29c789342b0f407474670f0c2489e0a0d");

NSData *kRegion = [kDate mh_hmacSha256DigestWithMessage:regionName];
NSLog(@"%@",[kRegion mh_toHexString]);
expect([kRegion mh_toHexString]).to.equal(@"69daa0209cd9c5ff5c8ced464a696fd4252e981430b10e3d3fd8e2f197d7a70c");

NSData *kService = [kRegion mh_hmacSha256DigestWithMessage:serviceName];
NSLog(@"%@",[kService mh_toHexString]);
expect([kService mh_toHexString]).to.equal(@"f72cfd46f26bc4643f06a11eabb6c0ba18780c19a8da0c31ace671265e3c87fa");

NSData *kSigning = [kService mh_hmacSha256DigestWithMessage:@"aws4_request"];
NSLog(@"%@",[kSigning mh_toHexString]);
expect([kSigning mh_toHexString]).to.equal(@"f4780e2d9f65fa895f9c67b32ce1baf0b0d8a43505a000a1a9e090d414db404d");


NSString *sha1Text = [@"hello" mh_sha1];
//expect(sha1Text).to
.equal(@"aaf4c61ddcc5e8a2dabede0f3b482cd9aea9434d");


NSString *sha256Text = [@"hello" mh_sha256];
//expect(sha256Text).to
.equal(@"2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824");


 
NSString *md5Text = [@"hello" mh_md5];
// expect(md5Text).to
.equal(@"5d41402abc4b2a76b9719d911017c592");

```
