//
//  LLBootstrapButton.h
//  MyTest
//
//  Created by admin on 15/7/30.
//  Copyright (c) 2015年 LL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton(LLBootstrapButton)

// 图标dic
@property (strong, nonatomic, readonly) NSDictionary *dicIcon;

// 默认---白色
- (void)buttonDefault;
- (void)buttonDefaultEnable:(BOOL)enable;

// 原色---深蓝色
- (void)buttonPrimary;
- (void)buttonPrimaryEnable:(BOOL)enable;

// 成功---绿色
- (void)buttonSuccess;
- (void)buttonSuccessEnable:(BOOL)enable;

// 消息---浅蓝色
- (void)buttonInfo;
- (void)buttonInfoEnable:(BOOL)enable;

// 警告---橙色
- (void)buttonWarning;
- (void)buttonWarningEnable:(BOOL)enable;

// 危险---红色
- (void)buttonDanger;
- (void)buttonDangerEnable:(BOOL)enable;

// 添加图标
- (void)buttonAddIcon:(NSString *)icon isBefore:(BOOL)before;






@end
