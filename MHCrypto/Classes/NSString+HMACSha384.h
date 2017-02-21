//
//  MHCrypto
//
//  Author: Michael Henry Pantaleon
//  Email: me@iamkel.net
//
#import <Foundation/Foundation.h>

@interface NSString (HMACSha384)

- (NSData *) mh_sha384DigestWithMessage:(NSString*)message;

@end
