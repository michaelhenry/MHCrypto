//
//  MHCrypto
//
//  Author: Michael Henry Pantaleon
//  Email: me@iamkel.net
//

#import <Foundation/Foundation.h>

@interface NSString (HMACSha512)

- (NSData *) mh_hmacSha512DigestWithMessage:(NSString*)message;

@end
