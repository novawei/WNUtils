//
//  UIApplication+WNUtils.h
//  hxb
//
//  Created by WeiXinxing on 16/3/30.
//  Copyright © 2016年 NFS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (WNUtils)

+ (void)openSystemSetting;
+ (void)openSystemDial:(NSString *)mobile;
+ (void)openURL:(NSURL *)URL;

+ (NSString *)appName;
+ (NSString *)appVersion;
+ (UIViewController *)rootViewController;
+ (UIWindow *)window;

+ (void)setIconBadgeNumber:(NSInteger)num;
+ (void)registerRemoteNotification;

@end
