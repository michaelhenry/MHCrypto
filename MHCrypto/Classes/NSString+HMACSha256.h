//
//  MHCrypto
//
//  Author: Michael Henry Pantaleon
//  Email: me@iamkel.net
//

#import <Foundation/Foundation.h>

@interface NSString (HMACSha256)

- (NSData *)mh_sha256DigestWithMessage:(NSString*)message;

@end
