//
//  UIResponder+Extensions.m
//  OCFramework
//
//  Created by 尤坤 on 2022/9/21.
//

#import "UIResponder+Extensions.h"

@implementation UIResponder(Extensions)

- (void)myPrint:(BFCWebImageOptions)options {
    NSLog(@"BFCWebImageOptions: %ld", options);
}

- (NSDictionary *)getDictionary {
    return @{@"k1" : @"v1"};
}
- (void)useDictionary:(NSDictionary *)dict {
    NSString *va = [dict valueForKey:@"k2"];
    NSLog(@"%@", va);
}

@end
