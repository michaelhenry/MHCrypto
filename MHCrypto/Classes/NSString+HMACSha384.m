//
//  MHCrypto
//
//  Author: Michael Henry Pantaleon
//  Email: me@iamkel.net
//

#import "NSString+HMACSha384.h"
#import "MHCrypto.h"

@implementation NSString (HMACSha384)

- (NSData *) mh_hmacSha384DigestWithMessage:(NSString*)message {
    return [MHCrypto HMACWithMessage:message
                               key:self
                         algorithm:kCCHmacAlgSHA384
                      digestLength:CC_SHA384_DIGEST_LENGTH];
}

@end
