//
//  MHCrypto
//
//  Author: Michael Henry Pantaleon
//  Email: me@iamkel.net
//

#import "NSString+HMACSha224.h"
#import "MHCrypto.h"

@implementation NSString (HMACSha224)

- (NSData *) mh_sha224DigestWithMessage:(NSString*)message {
    return [MHCrypto HMACWithMessage:message
                               key:self
                         algorithm:kCCHmacAlgSHA224
                      digestLength:CC_SHA224_DIGEST_LENGTH];
}

@end
