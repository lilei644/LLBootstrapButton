//
//  LLBootstrapButton.h
//  MyTest
//
//  Created by admin on 15/7/30.
//  Copyright (c) 2015年 LL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton(LLBootstrapButton)

// 默认---白色
- (void)bs_configureAsDefaultStyle;

// 原色---深蓝色
- (void)bs_configureAsPrimaryStyle;

// 成功---绿色
- (void)bs_configureAsSuccessStyle;

// 消息---浅蓝色
- (void)bs_configureAsInfoStyle;

// 警告---橙色
- (void)bs_configureAsWarningStyle;

// 危险---红色
- (void)bs_configureAsDangerStyle;






@end
