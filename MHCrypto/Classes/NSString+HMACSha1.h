//
//  MHCrypto
//
//  Author: Michael Henry Pantaleon
//  Email: me@iamkel.net
//

#import <Foundation/Foundation.h>

@interface NSString (HMACSha1)

- (NSData *) mh_sha1DigestWithMessage:(NSString*)message;
@end
