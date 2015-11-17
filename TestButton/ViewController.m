//
//  ViewController.m
//  TestButton
//
//  Created by admin on 15/7/30.
//  Copyright (c) 2015年 LiLei. All rights reserved.
//

#import "ViewController.h"
#import "LLBootstrap.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //=======================
    // 普通按钮
    //=======================
    UIButton *buttonDefault = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonDefault setFrame:CGRectMake(50, 50, 100, 50)];
    [buttonDefault setTitle:@"Default" forState:UIControlStateNormal];
    [buttonDefault bs_configureAsDefaultStyle];
    [self.view addSubview:buttonDefault];
    
    UIButton *buttonPrimary = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonPrimary setFrame:CGRectMake(50, 120, 100, 50)];
    [buttonPrimary setTitle:@"Primary" forState:UIControlStateNormal];
    [buttonPrimary bs_configureAsPrimaryStyle];
    [self.view addSubview:buttonPrimary];
    
    UIButton *buttonSuccess = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonSuccess setFrame:CGRectMake(50, 190, 100, 50)];
    [buttonSuccess setTitle:@"Success" forState:UIControlStateNormal];
    [buttonSuccess bs_configureAsSuccessStyle];
    [self.view addSubview:buttonSuccess];
    
    UIButton *buttonInfo = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonInfo setFrame:CGRectMake(50, 260, 100, 50)];
    [buttonInfo setTitle:@"Info" forState:UIControlStateNormal];
    [buttonInfo bs_configureAsInfoStyle];
    [self.view addSubview:buttonInfo];
    
    UIButton *buttonWarning = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonWarning setFrame:CGRectMake(50, 330, 100, 50)];
    [buttonWarning setTitle:@"Warning" forState:UIControlStateNormal];
    [buttonWarning bs_configureAsWarningStyle];
    [self.view addSubview:buttonWarning];
    
    
    UIButton *buttonDanger = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonDanger setFrame:CGRectMake(50, 400, 100, 50)];
    [buttonDanger setTitle:@"Danger" forState:UIControlStateNormal];
    [buttonDanger bs_configureAsDangerStyle];
    [self.view addSubview:buttonDanger];
    
    
    
    //=======================
    // 图标
    //=======================
    UIFont *font = [UIFont bs_awesomeFontOfSize:16.f];
    UIButton *iconDefault = [UIButton buttonWithType:UIButtonTypeCustom];
    [iconDefault setFrame:CGRectMake(180, 50, 100, 50)];
    [iconDefault.titleLabel setFont:font];
    [iconDefault setTitle:[NSString stringWithFormat:@"%@ Default", @"fa-github".bs_awesomeIconRepresentation] forState:UIControlStateNormal];
    [iconDefault bs_configureAsDefaultStyle];
    [self.view addSubview:iconDefault];
    
    UIButton *iconPrimary = [UIButton buttonWithType:UIButtonTypeCustom];
    [iconPrimary setFrame:CGRectMake(180, 120, 100, 50)];
    [iconPrimary.titleLabel setFont:font];
    [iconPrimary setTitle:[NSString stringWithFormat:@"%@ Primary", @"fa-apple".bs_awesomeIconRepresentation] forState:UIControlStateNormal];
    [iconPrimary bs_configureAsPrimaryStyle];
    [self.view addSubview:iconPrimary];
    
    UIButton *iconSuccess = [UIButton buttonWithType:UIButtonTypeCustom];
    [iconSuccess setFrame:CGRectMake(180, 190, 100, 50)];
    [iconSuccess setTitle:[NSString stringWithFormat:@"Success %@",@"fa-arrow-right".bs_awesomeIconRepresentation] forState:UIControlStateNormal];
    [iconSuccess bs_configureAsSuccessStyle];
    [iconSuccess.titleLabel setFont:font];
    [self.view addSubview:iconSuccess];
    
    UIButton *iconInfo = [UIButton buttonWithType:UIButtonTypeCustom];
    [iconInfo setFrame:CGRectMake(180, 260, 100, 50)];
    [iconInfo setTitle:[NSString stringWithFormat:@"In%@fo",@"fa-cloud".bs_awesomeIconRepresentation] forState:UIControlStateNormal];
    [iconInfo bs_configureAsInfoStyle];
    [iconInfo.titleLabel setFont:font];
    [self.view addSubview:iconInfo];
    
    UIButton *iconWarning = [UIButton buttonWithType:UIButtonTypeCustom];
    [iconWarning setFrame:CGRectMake(180, 330, 50, 50)];
    [iconWarning bs_configureAsWarningStyle];
    [iconWarning.titleLabel setFont:font];
    [iconWarning setTitle:@"fa-github".bs_awesomeIconRepresentation forState:UIControlStateNormal];
    [self.view addSubview:iconWarning];
    
    
    UIButton *iconDanger = [UIButton buttonWithType:UIButtonTypeCustom];
    [iconDanger setFrame:CGRectMake(180, 400, 50, 50)];
    [iconDanger bs_configureAsDangerStyle];
    [iconDanger.titleLabel setFont:font];
    [iconDanger setTitle:@"fa-twitter".bs_awesomeIconRepresentation forState:UIControlStateNormal];
    [self.view addSubview:iconDanger];
    

    //=======================
    // 图标文本
    //=======================
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(50, 500, 200, 40)];
    [textView setFont:[UIFont bs_awesomeFontOfSize:20]];
    [textView setText:[NSString stringWithFormat:@"这是一个%@图标",@"fa-github-alt".bs_awesomeIconRepresentation]];
    [textView setTextColor:[UIColor blackColor]];
    [self.view addSubview:textView];
    
    
}


@end
