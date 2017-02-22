//
//  MHCrypto
//
//  Author: Michael Henry Pantaleon
//  Email: me@iamkel.net
//

#import <Foundation/Foundation.h>

@interface NSString (HMACSha1)

- (NSData *) mh_hmacSha1DigestWithMessage:(NSString*)message;
@end
