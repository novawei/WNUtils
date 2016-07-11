//
//  UIApplication+WNUtils.m
//  hxb
//
//  Created by WeiXinxing on 16/3/30.
//  Copyright © 2016年 NFS. All rights reserved.
//

#import "UIApplication+WNUtils.h"

@implementation UIApplication (Utils)

+ (void)openSystemSetting
{
    NSURL *settingURL = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
    if (settingURL && [[UIApplication sharedApplication] canOpenURL:settingURL]) {
        [[UIApplication sharedApplication] openURL:settingURL];
    }
}

+ (NSString *)appName
{
    static NSString *appname = nil;
    if (!appname) {
        appname = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleName"];
    }
    return appname;
}

+ (NSString *)appVersion
{
    static NSString *appversion = nil;
    if (!appversion) {
        appversion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    }
    return appversion;
}

+ (UIViewController *)rootViewController
{
    return [[UIApplication sharedApplication].delegate window].rootViewController;
}

+ (UIWindow *)window
{
    return [[UIApplication sharedApplication].delegate window];
}

+ (void)setIconBadgeNumber:(NSInteger)num
{
    [[UIApplication sharedApplication] setApplicationIconBadgeNumber:num];
}

+ (void)registerRemoteNotification
{
    UIUserNotificationType myTypes = UIUserNotificationTypeBadge | UIUserNotificationTypeSound | UIUserNotificationTypeAlert;
    
    UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:myTypes categories:nil];
    [[UIApplication sharedApplication] registerUserNotificationSettings:settings];
}

+ (void)openSystemDial:(NSString *)mobile
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"telprompt://%@", mobile]];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
    }
}

+ (void)openURL:(NSURL *)URL
{
    if (URL && [[UIApplication sharedApplication] canOpenURL:URL]) {
        [[UIApplication sharedApplication] openURL:URL];
    }
}

@end
