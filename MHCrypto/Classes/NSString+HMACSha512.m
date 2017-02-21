//
//  MHCrypto
//
//  Author: Michael Henry Pantaleon
//  Email: me@iamkel.net
//

#import "NSString+HMACSha512.h"
#import "MHCrypto.h"

@implementation NSString (HMACSha512)

- (NSData *) mh_sha512DigestWithMessage:(NSString*)message {
    return [MHCrypto HMACWithMessage:message
                               key:self
                         algorithm:kCCHmacAlgSHA512
                      digestLength:CC_SHA512_DIGEST_LENGTH];
}

@end
