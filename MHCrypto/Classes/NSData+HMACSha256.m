//
//  MHCrypto
//
//  Author: Michael Henry Pantaleon
//  Email: me@iamkel.net
//

#import "NSData+HMACSha256.h"
#import "MHCrypto.h"

@implementation NSData (HMACSha256)

- (NSData *) mh_hmacSha256DigestWithMessage:(NSString*)message {
    return [MHCrypto HMACWithMessage:message
                               key:self
                         algorithm:kCCHmacAlgSHA256
                      digestLength:CC_SHA256_DIGEST_LENGTH];
}

@end
