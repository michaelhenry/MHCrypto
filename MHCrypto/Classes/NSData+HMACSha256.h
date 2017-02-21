//
//  MHCrypto
//
//  Author: Michael Henry Pantaleon
//  Email: me@iamkel.net
//
#import <Foundation/Foundation.h>

@interface NSData (HMACSha256)

- (NSData *) mh_sha256DigestWithMessage:(NSString*)message;

@end
