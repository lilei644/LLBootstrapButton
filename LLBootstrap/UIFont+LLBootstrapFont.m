//
//  UIFont+LLBootstrapFont.m
//  TestButton
//
//  Created by admin on 15/11/16.
//  Copyright © 2015年 LiLei. All rights reserved.
//

#import "UIFont+LLBootstrapFont.h"
#import "NSBundle+LLBootstrapBundle.h"
#import <CoreText/CoreText.h>

@implementation UIFont (LLBootstrapFont)

+ (instancetype)bs_awesomeFontOfSize:(CGFloat)size {
    static UIFont *font;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        //=================
        // 加载Bundle中的字体
        //=================
        NSString *fontPath = [[NSBundle loadFontBundle] pathForResource:@"fontawesome-webfont" ofType:@"ttf"];
        NSData *inData = [NSData dataWithContentsOfFile:fontPath];
        CGDataProviderRef fontDataProvider = CGDataProviderCreateWithCFData((__bridge CFDataRef)inData);
        CFErrorRef error;
        CGFontRef fontRef = CGFontCreateWithDataProvider(fontDataProvider);
        if (!CTFontManagerRegisterGraphicsFont(fontRef, &error)) {
            CFStringRef errorDescription = CFErrorCopyDescription(error);
            NSLog(@"Failed to load font: %@", errorDescription);
            CFRelease(errorDescription);
        }
        NSString *fontName = (__bridge NSString *)CGFontCopyPostScriptName(fontRef);
        font = [UIFont fontWithName:fontName size:size];
        CFRelease(fontRef);
        CFRelease(fontRef);
    });
    return font;
}

@end
