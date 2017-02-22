//
//  MHCrypto
//
//  Author: Michael Henry Pantaleon
//  Email: me@iamkel.net
//

#import "MHCrypto.h"

@implementation MHCrypto

+ (NSData*) HMACWithMessage:(NSString*)message
                          key:(id)key
                    algorithm:(CCHmacAlgorithm)algorithm
                 digestLength:(NSUInteger)digestLength {
    
    unsigned char digest[digestLength];
    CCHmacContext ctx;
    
    if ([key isKindOfClass:[NSData class]]){
        CCHmacInit(&ctx, algorithm, [key bytes], [key length]);
    } else if([key isKindOfClass:[NSString class]]) {
        const char *cKey = [key cStringUsingEncoding:NSUTF8StringEncoding];
        CCHmacInit(&ctx, algorithm, cKey, strlen(cKey));
    }
    const char *cMessage = [message cStringUsingEncoding:NSUTF8StringEncoding];
    CCHmacUpdate(&ctx, cMessage, strlen(cMessage));
    CCHmacFinal(&ctx, digest);
    return [NSData dataWithBytes:digest length:digestLength];
}

+ (NSData*) sha1DigestWithObject:(id) obj {
    unsigned char digest[CC_SHA1_DIGEST_LENGTH];
    if ([obj isKindOfClass:[NSData class]]){
        CC_SHA1([obj bytes], [obj length], digest);
    } else if([obj isKindOfClass:[NSString class]]) {
        const char *s = [obj cStringUsingEncoding:NSUTF8StringEncoding];
        CC_SHA1(s, strlen(s), digest);
    }
    return [NSData dataWithBytes:digest length:CC_SHA1_DIGEST_LENGTH];
}

+ (NSData*) sha256DigestWithObject:(id) obj {
    unsigned char digest[CC_SHA256_DIGEST_LENGTH];
    if ([obj isKindOfClass:[NSData class]]){
        CC_SHA256([obj bytes], [obj length], digest);
    } else if([obj isKindOfClass:[NSString class]]) {
        const char *s = [obj cStringUsingEncoding:NSUTF8StringEncoding];
        CC_SHA256(s, strlen(s), digest);
    }
    return [NSData dataWithBytes:digest length:CC_SHA256_DIGEST_LENGTH];
}

+ (NSData*) md5DigestWithObject:(id) obj {
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    if ([obj isKindOfClass:[NSData class]]){
        CC_MD5([obj bytes], [obj length], digest);
    } else if([obj isKindOfClass:[NSString class]]) {
        const char *s = [obj cStringUsingEncoding:NSUTF8StringEncoding];
        CC_MD5(s, strlen(s), digest);
    }
    return [NSData dataWithBytes:digest length:CC_MD5_DIGEST_LENGTH];
}
@end
