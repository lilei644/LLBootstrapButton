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
- (void)bs_buttonDefault;
- (void)bs_buttonDefaultEnable:(BOOL)enable;

// 原色---深蓝色
- (void)bs_buttonPrimary;
- (void)bs_buttonPrimaryEnable:(BOOL)enable;

// 成功---绿色
- (void)bs_buttonSuccess;
- (void)bs_buttonSuccessEnable:(BOOL)enable;

// 消息---浅蓝色
- (void)bs_buttonInfo;
- (void)bs_buttonInfoEnable:(BOOL)enable;

// 警告---橙色
- (void)bs_buttonWarning;
- (void)bs_buttonWarningEnable:(BOOL)enable;

// 危险---红色
- (void)bs_buttonDanger;
- (void)bs_buttonDangerEnable:(BOOL)enable;

// 添加图标
- (void)bs_buttonAddIcon:(NSString *)icon isBefore:(BOOL)before;






@end
