//
//  NSString+Hash.m
//  Pods
//
//  Created by Michael Henry Pantaleon on 2/22/17.
//
//

#import "NSString+Hash.h"
#import "MHCrypto.h"
#import "NSData+MHCrypto.h"

@implementation NSString (Hash)

- (NSString *) mh_sha1 {
    return  [[MHCrypto sha1DigestWithObject:self] mh_toHexString];
}
    
- (NSString *) mh_sha256 {
    return  [[MHCrypto sha256DigestWithObject:self] mh_toHexString];
}
    
- (NSString *) mh_md5 {
    return  [[MHCrypto md5DigestWithObject:self] mh_toHexString];
}
    
@end
