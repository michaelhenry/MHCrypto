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

+ (NSData*) sha1DigestWithObject:(id) obj;

+ (NSData*) sha256DigestWithObject: (id) obj;
    
+ (NSData*) md5DigestWithObject: (id) obj;
@end
