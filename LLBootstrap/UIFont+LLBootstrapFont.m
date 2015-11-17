//
//  UIFont+LLBootstrapFont.m
//  TestButton
//
//  Created by admin on 15/11/16.
//  Copyright © 2015年 LiLei. All rights reserved.
//

#import "UIFont+LLBootstrapFont.h"

@implementation UIFont (LLBootstrapFont)

+ (instancetype)bs_awesomeFontOfSize:(CGFloat)size {
    UIFont *font = [UIFont fontWithName:@"fontawesome" size:size];
    return font;
}

@end
