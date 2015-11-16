//
//  UITextView+LLBootstrapText.m
//  TestButton
//
//  Created by admin on 15/11/16.
//  Copyright © 2015年 LiLei. All rights reserved.
//

#import "UITextView+LLBootstrapText.h"
#import "NSString+LLBootstrapString.h"

@implementation UITextView (LLBootstrapText)

- (void)textWithIcon:(NSString *)icon {
    [self setFont:[UIFont fontWithName:@"fontawesome" size:self.font.pointSize]];
    [self setText:[NSString stringWithIcon:icon]];
}

@end
