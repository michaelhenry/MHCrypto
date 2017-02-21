//
//  MHCrypto
//
//  Author: Michael Henry Pantaleon
//  Email: me@iamkel.net
//

#import <Foundation/Foundation.h>

@interface NSString (HMACMd5)

- (NSData *) mh_md5DigestWithMessage:(NSString*)message;

@end
