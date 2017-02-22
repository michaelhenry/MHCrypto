//
//  MHCrypto
//
//  Author: Michael Henry Pantaleon
//  Email: me@iamkel.net
//

#import <Foundation/Foundation.h>

@interface NSString (HMACSha224)

- (NSData *) mh_hmacSha224DigestWithMessage:(NSString*)message;

@end
