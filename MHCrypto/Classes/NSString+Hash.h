//
//  NSString+Hash.h
//  Pods
//
//  Created by Michael Henry Pantaleon on 2/22/17.
//
//

#import <Foundation/Foundation.h>

@interface NSString (Hash)

- (NSString *) mh_sha1;
    
- (NSString *) mh_sha256;

- (NSString *) mh_md5;
@end
