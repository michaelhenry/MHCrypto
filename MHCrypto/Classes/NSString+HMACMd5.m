//
//  MHCrypto
//
//  Author: Michael Henry Pantaleon
//  Email: me@iamkel.net
//

#import "NSString+HMACMd5.h"
#import "MHCrypto.h"
@implementation NSString (HMACMd5)

- (NSData *) mh_md5DigestWithMessage:(NSString*)message {
    return [MHCrypto HMACWithMessage:message
                               key:self
                         algorithm:kCCHmacAlgMD5
                      digestLength:CC_MD5_DIGEST_LENGTH];
}

@end
