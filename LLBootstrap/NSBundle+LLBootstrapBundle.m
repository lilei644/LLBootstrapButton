//
//  NSBundle+MyFontBundle.m
//  MyTestFont
//
//  Created by admin on 15/11/17.
//  Copyright © 2015年 LiLei. All rights reserved.
//

#import "NSBundle+LLBootstrapBundle.h"

@implementation NSBundle (LLBootstrapBundle)

+ (NSBundle *)loadFontBundle {
    static NSBundle* frameworkBundle = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        NSString* mainBundlePath = [[NSBundle mainBundle] resourcePath];
        NSString* frameworkBundlePath = [mainBundlePath stringByAppendingPathComponent:@"LLBootstrapFont.bundle"];
        frameworkBundle = [NSBundle bundleWithPath:frameworkBundlePath];
    });
    return frameworkBundle;
}

@end
