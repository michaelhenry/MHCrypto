///
//  MHCrypto
//
//  Author: Michael Henry Pantaleon
//  Email: me@iamkel.net
//
#import "NSString+HMACSha1.h"
#import "MHCrypto.h"

@implementation NSString (HMACSha1)

- (NSData *) mh_sha1DigestWithMessage:(NSString*)message {
    return [MHCrypto HMACWithMessage:message
                               key:self
                         algorithm:kCCHmacAlgSHA1
                      digestLength:CC_SHA1_DIGEST_LENGTH];
}

@end
