//
//  LLBootstrapButton.m
//  MyTest
//
//  Created by admin on 15/7/30.
//  Copyright (c) 2015年 LL. All rights reserved.
//

#import "UIButton+LLBootstrap.h"


@implementation UIButton(LLBootstrapButton)


/**
 *  基本属性
 */
- (void)buttonBase {
    self.layer.borderWidth = 1;
    self.layer.cornerRadius = 4.0;
    self.layer.masksToBounds = YES;
    [self setAdjustsImageWhenHighlighted:NO];
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
}


- (void)buttonDefault {
    [self buttonBase];
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    self.layer.borderColor = [[UIColor colorWithRed:204/255.0 green:204/255.0 blue:204/255.0 alpha:1] CGColor];
    [self setBackgroundColor:[UIColor whiteColor]];
    [self setBackgroundImage:[self imageWithColor:[UIColor colorWithRed:235/255.0 green:235/255.0 blue:235/255.0 alpha:1]] forState:UIControlStateHighlighted];
    
}

- (void)buttonDefaultEnable:(BOOL)enbale{
    [self buttonDefault];
    if(!enbale) {
        self.userInteractionEnabled = NO;
        self.alpha = 0.647;
    }
}

- (void)buttonPrimary {
    [self buttonBase];
    self.layer.borderColor = [[UIColor colorWithRed:53/255.0 green:126/255.0 blue:189/255.0 alpha:1] CGColor];
    [self setBackgroundColor:[UIColor colorWithRed:66/255.0 green:139/255.0 blue:202/255.0 alpha:1]];
    [self setBackgroundImage:[self imageWithColor:[UIColor colorWithRed:51/255.0 green:119/255.0 blue:172/255.0 alpha:1]] forState:UIControlStateHighlighted];
    [self setBackgroundImage:[self imageWithColor:[UIColor colorWithRed:51/255.0 green:119/255.0 blue:172/255.0 alpha:0.64]] forState:UIControlStateDisabled];
}

- (void)buttonPrimaryEnable:(BOOL)enbale{
    [self buttonPrimary];
    if(!enbale) {
        self.userInteractionEnabled = NO;
        self.alpha = 0.647;
    }
}

- (void)buttonInfo {
    [self buttonBase];
    self.layer.borderColor = [[UIColor colorWithRed:70/255.0 green:184/255.0 blue:218/255.0 alpha:1] CGColor];
    [self setBackgroundColor:[UIColor colorWithRed:91/255.0 green:192/255.0 blue:222/255.0 alpha:1]];
    [self setBackgroundImage:[self imageWithColor:[UIColor colorWithRed:57/255.0 green:180/255.0 blue:211/255.0 alpha:1]] forState:UIControlStateHighlighted];
}

- (void)buttonInfoEnable:(BOOL)enbale{
    [self buttonInfo];
    if(!enbale) {
        self.userInteractionEnabled = NO;
        self.alpha = 0.647;
    }
}

- (void)buttonSuccess {
    [self buttonBase];
    self.layer.borderColor = [[UIColor colorWithRed:76/255.0 green:174/255.0 blue:76/255.0 alpha:1] CGColor];
    [self setBackgroundColor:[UIColor colorWithRed:92/255.0 green:184/255.0 blue:92/255.0 alpha:1]];
    [self setBackgroundImage:[self imageWithColor:[UIColor colorWithRed:69/255.0 green:164/255.0 blue:84/255.0 alpha:1]] forState:UIControlStateHighlighted];
}

- (void)buttonSuccessEnable:(BOOL)enbale{
    [self buttonSuccess];
    if(!enbale) {
        self.userInteractionEnabled = NO;
        self.alpha = 0.647;
    }
}

- (void)buttonWarning {
    [self buttonBase];
    self.layer.borderColor = [[UIColor colorWithRed:238/255.0 green:162/255.0 blue:54/255.0 alpha:1] CGColor];
    [self setBackgroundColor:[UIColor colorWithRed:240/255.0 green:173/255.0 blue:78/255.0 alpha:1]];
    [self setBackgroundImage:[self imageWithColor:[UIColor colorWithRed:237/255.0 green:155/255.0 blue:67/255.0 alpha:1]] forState:UIControlStateHighlighted];
}

- (void)buttonWarningEnable:(BOOL)enbale{
    [self buttonWarning];
    if(!enbale) {
        self.userInteractionEnabled = NO;
        self.alpha = 0.647;
    }
}

- (void)buttonDanger {
    [self buttonBase];
    self.layer.borderColor = [[UIColor colorWithRed:212/255.0 green:63/255.0 blue:58/255.0 alpha:1] CGColor];
    [self setBackgroundColor:[UIColor colorWithRed:217/255.0 green:83/255.0 blue:79/255.0 alpha:1]];
    [self setBackgroundImage:[self imageWithColor:[UIColor colorWithRed:210/255.0 green:48/255.0 blue:51/255.0 alpha:1]] forState:UIControlStateHighlighted];
}

- (void)buttonDangerEnable:(BOOL)enbale{
    [self buttonDanger];
    if(!enbale) {
        self.userInteractionEnabled = NO;
        self.alpha = 0.647;
    }
}

/**
 *  将UIColor转化成UIImage
 *
 *  @param color 要转化的UIColor
 *
 *  @return 获取到的UIImage
 */
- (UIImage *) imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}


- (void)buttonAddIcon:(NSString *)icon isBefore:(BOOL)before{
    [self.titleLabel setFont:[UIFont fontWithName:@"fontawesome" size:self.titleLabel.font.pointSize]];
    NSString *strIcon = [self.dicIcon objectForKey:icon];
    
    if(self.titleLabel.text) {
        if (before) {
            strIcon = [strIcon stringByAppendingString:[NSString stringWithFormat:@" %@", self.titleLabel.text]];
        } else {
            strIcon = [self.titleLabel.text stringByAppendingString:[NSString stringWithFormat:@" %@", strIcon]];
        }
    }
    [self setTitle:strIcon forState:UIControlStateNormal];
}


- (NSDictionary *)dicIcon {
    return [NSDictionary dictionaryWithObjectsAndKeys:@"\uf000", @"fa-glass", @"\uf001", @"fa-music", @"\uf002", @"fa-search", @"\uf003", @"fa-envelope-o", @"\uf004", @"fa-heart", @"\uf005", @"fa-star", @"\uf006", @"fa-star-o", @"\uf007", @"fa-user", @"\uf008", @"fa-film", @"\uf009", @"fa-th-large", @"\uf00a", @"fa-th", @"\uf00b", @"fa-th-list", @"\uf00c", @"fa-check", @"\uf00d", @"fa-times", @"\uf00e", @"fa-search-plus", @"\uf010", @"fa-search-minus", @"\uf011", @"fa-power-off", @"\uf012", @"fa-signal", @"\uf013", @"fa-cog", @"\uf014", @"fa-trash-o", @"\uf015", @"fa-home", @"\uf016", @"fa-file-o", @"\uf017", @"fa-clock-o", @"\uf018", @"fa-road", @"\uf019", @"fa-download", @"\uf01a", @"fa-arrow-circle-o-down", @"\uf01b", @"fa-arrow-circle-o-up", @"\uf01c", @"fa-inbox", @"\uf01d", @"fa-play-circle-o", @"\uf01e", @"fa-repeat", @"\uf021", @"fa-refresh", @"\uf022", @"fa-list-alt", @"\uf023", @"fa-lock", @"\uf024", @"fa-flag", @"\uf025", @"fa-headphones", @"\uf026", @"fa-volume-off", @"\uf027", @"fa-volume-down", @"\uf028", @"fa-volume-up", @"\uf029", @"fa-qrcode", @"\uf02a", @"fa-barcode", @"\uf02b", @"fa-tag", @"\uf02c", @"fa-tags", @"\uf02d", @"fa-book", @"\uf02e", @"fa-bookmark", @"\uf02f", @"fa-print", @"\uf030", @"fa-camera", @"\uf031", @"fa-font", @"\uf032", @"fa-bold", @"\uf033", @"fa-italic", @"\uf034", @"fa-text-height", @"\uf035", @"fa-text-width", @"\uf036", @"fa-align-left", @"\uf037", @"fa-align-center", @"\uf038", @"fa-align-right", @"\uf039", @"fa-align-justify", @"\uf03a", @"fa-list", @"\uf03b", @"fa-outdent", @"\uf03c", @"fa-indent", @"\uf03d", @"fa-video-camera", @"\uf03e", @"fa-picture-o", @"\uf040", @"fa-pencil", @"\uf041", @"fa-map-marker", @"\uf042", @"fa-adjust", @"\uf043", @"fa-tint", @"\uf044", @"fa-pencil-square-o", @"\uf045", @"fa-share-square-o", @"\uf046", @"fa-check-square-o", @"\uf047", @"fa-move", @"\uf048", @"fa-step-backward", @"\uf049", @"fa-fast-backward", @"\uf04a", @"fa-backward", @"\uf04b", @"fa-play", @"\uf04c", @"fa-pause", @"\uf04d", @"fa-stop", @"\uf04e", @"fa-forward", @"\uf050", @"fa-fast-forward", @"\uf051", @"fa-step-forward", @"\uf052", @"fa-eject", @"\uf053", @"fa-chevron-left", @"\uf054", @"fa-chevron-right", @"\uf055", @"fa-plus-circle", @"\uf056", @"fa-minus-circle", @"\uf057", @"fa-times-circle", @"\uf058", @"fa-check-circle", @"\uf059", @"fa-question-circle", @"\uf05a", @"fa-info-circle", @"\uf05b", @"fa-crosshairs", @"\uf05c", @"fa-times-circle-o", @"\uf05d", @"fa-check-circle-o", @"\uf05e", @"fa-ban", @"\uf060", @"fa-arrow-left", @"\uf061", @"fa-arrow-right", @"\uf062", @"fa-arrow-up", @"\uf063", @"fa-arrow-down", @"\uf064", @"fa-share", @"\uf065", @"fa-resize-full", @"\uf066", @"fa-resize-small", @"\uf067", @"fa-plus", @"\uf068", @"fa-minus", @"\uf069", @"fa-asterisk", @"\uf06a", @"fa-exclamation-circle", @"\uf06b", @"fa-gift", @"\uf06c", @"fa-leaf", @"\uf06d", @"fa-fire", @"\uf06e", @"fa-eye", @"\uf070", @"fa-eye-slash", @"\uf071", @"fa-exclamation-triangle", @"\uf072", @"fa-plane", @"\uf073", @"fa-calendar", @"\uf074", @"fa-random", @"\uf075", @"fa-comment", @"\uf076", @"fa-magnet", @"\uf077", @"fa-chevron-up", @"\uf078", @"fa-chevron-down", @"\uf079", @"fa-retweet", @"\uf07a", @"fa-shopping-cart", @"\uf07b", @"fa-folder", @"\uf07c", @"fa-folder-open", @"\uf07d", @"fa-resize-vertical", @"\uf07e", @"fa-resize-horizontal", @"\uf080", @"fa-bar-chart-o", @"\uf081", @"fa-twitter-square", @"\uf082", @"fa-facebook-square", @"\uf083", @"fa-camera-retro", @"\uf084", @"fa-key", @"\uf085", @"fa-cogs", @"\uf086", @"fa-comments", @"\uf087", @"fa-thumbs-o-up", @"\uf088", @"fa-thumbs-o-down", @"\uf089", @"fa-star-half", @"\uf08a", @"fa-heart-o", @"\uf08b", @"fa-sign-out", @"\uf08c", @"fa-linkedin-square", @"\uf08d", @"fa-thumb-tack", @"\uf08e", @"fa-external-link", @"\uf090", @"fa-sign-in", @"\uf091", @"fa-trophy", @"\uf092", @"fa-github-square", @"\uf093", @"fa-upload", @"\uf094", @"fa-lemon-o", @"\uf095", @"fa-phone", @"\uf096", @"fa-square-o", @"\uf097", @"fa-bookmark-o", @"\uf098", @"fa-phone-square", @"\uf099", @"fa-twitter", @"\uf09a", @"fa-facebook", @"\uf09b", @"fa-github", @"\uf09c", @"fa-unlock", @"\uf09d", @"fa-credit-card", @"\uf09e", @"fa-rss", @"\uf0a0", @"fa-hdd", @"\uf0a1", @"fa-bullhorn", @"\uf0f3", @"fa-bell", @"\uf0a3", @"fa-certificate", @"\uf0a4", @"fa-hand-o-right", @"\uf0a5", @"fa-hand-o-left", @"\uf0a6", @"fa-hand-o-up", @"\uf0a7", @"fa-hand-o-down", @"\uf0a8", @"fa-arrow-circle-left", @"\uf0a9", @"fa-arrow-circle-right", @"\uf0aa", @"fa-arrow-circle-up", @"\uf0ab", @"fa-arrow-circle-down", @"\uf0ac", @"fa-globe", @"\uf0ad", @"fa-wrench", @"\uf0ae", @"fa-tasks", @"\uf0b0", @"fa-filter", @"\uf0b1", @"fa-briefcase", @"\uf0b2", @"fa-fullscreen", @"\uf0c0", @"fa-group", @"\uf0c1", @"fa-link", @"\uf0c2", @"fa-cloud", @"\uf0c3", @"fa-flask", @"\uf0c4", @"fa-scissors", @"\uf0c5", @"fa-files-o", @"\uf0c6", @"fa-paperclip", @"\uf0c7", @"fa-floppy-o", @"\uf0c8", @"fa-square", @"\uf0c9", @"fa-reorder", @"\uf0ca", @"fa-list-ul", @"\uf0cb", @"fa-list-ol", @"\uf0cc", @"fa-strikethrough", @"\uf0cd", @"fa-underline", @"\uf0ce", @"fa-table", @"\uf0d0", @"fa-magic", @"\uf0d1", @"fa-truck", @"\uf0d2", @"fa-pinterest", @"\uf0d3", @"fa-pinterest-square", @"\uf0d4", @"fa-google-plus-square", @"\uf0d5", @"fa-google-plus", @"\uf0d6", @"fa-money", @"\uf0d7", @"fa-caret-down", @"\uf0d8", @"fa-caret-up", @"\uf0d9", @"fa-caret-left", @"\uf0da", @"fa-caret-right", @"\uf0db", @"fa-columns", @"\uf0dc", @"fa-sort", @"\uf0dd", @"fa-sort-asc", @"\uf0de", @"fa-sort-desc", @"\uf0e0", @"fa-envelope", @"\uf0e1", @"fa-linkedin", @"\uf0e2", @"fa-undo", @"\uf0e3", @"fa-gavel", @"\uf0e4", @"fa-tachometer", @"\uf0e5", @"fa-comment-o", @"\uf0e6", @"fa-comments-o", @"\uf0e7", @"fa-bolt", @"\uf0e8", @"fa-sitemap", @"\uf0e9", @"fa-umbrella", @"\uf0ea", @"fa-clipboard", @"\uf0eb", @"fa-lightbulb-o", @"\uf0ec", @"fa-exchange", @"\uf0ed", @"fa-cloud-download", @"\uf0ee", @"fa-cloud-upload", @"\uf0f0", @"fa-user-md", @"\uf0f1", @"fa-stethoscope", @"\uf0f2", @"fa-suitcase", @"\uf0a2", @"fa-bell-o", @"\uf0f4", @"fa-coffee", @"\uf0f5", @"fa-cutlery", @"\uf0f6", @"fa-file-text-o", @"\uf0f7", @"fa-building", @"\uf0f8", @"fa-hospital", @"\uf0f9", @"fa-ambulance", @"\uf0fa", @"fa-medkit", @"\uf0fb", @"fa-fighter-jet", @"\uf0fc", @"fa-beer", @"\uf0fd", @"fa-h-square", @"\uf0fe", @"fa-plus-square", @"\uf100", @"fa-angle-double-left", @"\uf101", @"fa-angle-double-right", @"\uf102", @"fa-angle-double-up", @"\uf103", @"fa-angle-double-down", @"\uf104", @"fa-angle-left", @"\uf105", @"fa-angle-right", @"\uf106", @"fa-angle-up", @"\uf107", @"fa-angle-down", @"\uf108", @"fa-desktop", @"\uf109", @"fa-laptop", @"\uf10a", @"fa-tablet", @"\uf10b", @"fa-mobile", @"\uf10c", @"fa-circle-o", @"\uf10d", @"fa-quote-left", @"\uf10e", @"fa-quote-right", @"\uf110", @"fa-spinner", @"\uf111", @"fa-circle", @"\uf112", @"fa-reply", @"\uf113", @"fa-github-alt", @"\uf114", @"fa-folder-o", @"\uf115", @"fa-folder-open-o", @"\uf116", @"fa-expand-o", @"\uf117", @"fa-collapse-o", @"\uf118", @"fa-smile-o", @"\uf119", @"fa-frown-o", @"\uf11a", @"fa-meh-o", @"\uf11b", @"fa-gamepad", @"\uf11c", @"fa-keyboard-o", @"\uf11d", @"fa-flag-o", @"\uf11e", @"fa-flag-checkered", @"\uf120", @"fa-terminal", @"\uf121", @"fa-code", @"\uf122", @"fa-reply-all", @"\uf122", @"fa-mail-reply-all", @"\uf123", @"fa-star-half-o", @"\uf124", @"fa-location-arrow", @"\uf125", @"fa-crop", @"\uf126", @"fa-code-fork", @"\uf127", @"fa-chain-broken", @"\uf128", @"fa-question", @"\uf129", @"fa-info", @"\uf12a", @"fa-exclamation", @"\uf12b", @"fa-superscript", @"\uf12c", @"fa-subscript", @"\uf12d", @"fa-eraser", @"\uf12e", @"fa-puzzle-piece", @"\uf130", @"fa-microphone", @"\uf131", @"fa-microphone-slash", @"\uf132", @"fa-shield", @"\uf133", @"fa-calendar-o", @"\uf134", @"fa-fire-extinguisher", @"\uf135", @"fa-rocket", @"\uf136", @"fa-maxcdn", @"\uf137", @"fa-chevron-circle-left", @"\uf138", @"fa-chevron-circle-right", @"\uf139", @"fa-chevron-circle-up", @"\uf13a", @"fa-chevron-circle-down", @"\uf13b", @"fa-html5", @"\uf13c", @"fa-css3", @"\uf13d", @"fa-anchor", @"\uf13e", @"fa-unlock-o", @"\uf140", @"fa-bullseye", @"\uf141", @"fa-ellipsis-horizontal", @"\uf142", @"fa-ellipsis-vertical", @"\uf143", @"fa-rss-square", @"\uf144", @"fa-play-circle", @"\uf145", @"fa-ticket", @"\uf146", @"fa-minus-square", @"\uf147", @"fa-minus-square-o", @"\uf148", @"fa-level-up", @"\uf149", @"fa-level-down", @"\uf14a", @"fa-check-square", @"\uf14b", @"fa-pencil-square", @"\uf14c", @"fa-external-link-square", @"\uf14d", @"fa-share-square", @"\uf14e", @"fa-compass", @"\uf150", @"fa-caret-square-o-down", @"\uf151", @"fa-caret-square-o-up", @"\uf152", @"fa-caret-square-o-right", @"\uf153", @"fa-eur", @"\uf154", @"fa-gbp", @"\uf155", @"fa-usd", @"\uf156", @"fa-inr", @"\uf157", @"fa-jpy", @"\uf158", @"fa-rub", @"\uf159", @"fa-krw", @"\uf15a", @"fa-btc", @"\uf15b", @"fa-file", @"\uf15c", @"fa-file-text", @"\uf15d", @"fa-sort-alpha-asc", @"\uf15e", @"fa-sort-alpha-desc", @"\uf160", @"fa-sort-amount-asc", @"\uf161", @"fa-sort-amount-desc", @"\uf162", @"fa-sort-numeric-asc", @"\uf163", @"fa-sort-numeric-desc", @"\uf164", @"fa-thumbs-up", @"\uf165", @"fa-thumbs-down", @"\uf166", @"fa-youtube-square", @"\uf167", @"fa-youtube", @"\uf168", @"fa-xing", @"\uf169", @"fa-xing-square", @"\uf16a", @"fa-youtube-play", @"\uf16b", @"fa-dropbox", @"\uf16c", @"fa-stack-overflow", @"\uf16d", @"fa-instagram", @"\uf16e", @"fa-flickr", @"\uf170", @"fa-adn", @"\uf171", @"fa-bitbucket", @"\uf172", @"fa-bitbucket-square", @"\uf173", @"fa-tumblr", @"\uf174", @"fa-tumblr-square", @"\uf175", @"fa-long-arrow-down", @"\uf176", @"fa-long-arrow-up", @"\uf177", @"fa-long-arrow-left", @"\uf178", @"fa-long-arrow-right", @"\uf179", @"fa-apple", @"\uf17a", @"fa-windows", @"\uf17b", @"fa-android", @"\uf17c", @"fa-linux", @"\uf17d", @"fa-dribbble", @"\uf17e", @"fa-skype", @"\uf180", @"fa-foursquare", @"\uf181", @"fa-trello", @"\uf182", @"fa-female", @"\uf183", @"fa-male", @"\uf184", @"fa-gittip", @"\uf185", @"fa-sun-o", @"\uf186", @"fa-moon-o", @"\uf187", @"fa-archive", @"\uf188", @"fa-bug", @"\uf189", @"fa-vk", @"\uf18a", @"fa-weibo", @"\uf18b", @"fa-renren", @"\uf18c", @"fa-pagelines", @"\uf18d", @"fa-stack-exchange", @"\uf18e", @"fa-arrow-circle-o-right", @"\uf190", @"fa-arrow-circle-o-left", @"\uf191", @"fa-caret-square-o-left", @"\uf192", @"fa-dot-circle-o", @"\uf193", @"fa-wheelchair", @"\uf194", @"fa-vimeo-square", nil];
}



@end
