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
    
    unsigned char macOut[digestLength];
    CCHmacContext ctx;
    
    if ([key isKindOfClass:[NSData class]]){
        CCHmacInit(&ctx, algorithm, [key bytes], [key length]);
    } else if([key isKindOfClass:[NSString class]]) {
        const char *cKey = [key cStringUsingEncoding:NSUTF8StringEncoding];
        CCHmacInit(&ctx, algorithm, cKey, strlen(cKey));
    }
    const char *cMessage = [message cStringUsingEncoding:NSUTF8StringEncoding];
    CCHmacUpdate(&ctx, cMessage, strlen(cMessage));
    CCHmacFinal(&ctx, macOut);
    return [NSData dataWithBytes:macOut length:digestLength];
}

@end
