//
//  MHCrypto
//
//  Author: Michael Henry Pantaleon
//  Email: me@iamkel.net
//

#import <Foundation/Foundation.h>
#include <CommonCrypto/CommonDigest.h>
#include <CommonCrypto/CommonHMAC.h>

@interface MHCrypto : NSObject

+ (NSData*) HMACWithMessage:(NSString*)message
                         key:(id)key
                   algorithm:(CCHmacAlgorithm)algorithm
                digestLength:(NSUInteger)digestLength;

@end
