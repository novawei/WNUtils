//
//  MBProgressHUD+WNUtils.h
//  hxb
//
//  Created by Nova on 15/12/30.
//  Copyright © 2015年 NFS. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (WNUtils)

+ (MBProgressHUD *)showHUD:(UIView *)view;
+ (MBProgressHUD *)showHUD:(UIView *)view text:(NSString *)text;
+ (MBProgressHUD *)showHUD:(UIView *)view text:(NSString *)text mode:(MBProgressHUDMode)mode;
+ (void)hideHUD:(UIView *)view;

+ (MBProgressHUD *)showAutoHideHUD:(UIView *)view text:(NSString *)text;
+ (MBProgressHUD *)showAutoHideHUD:(UIView *)view text:(NSString *)text mode:(MBProgressHUDMode)mode;

+ (MBProgressHUD *)showSuccessHUD:(UIView *)view text:(NSString *)text;
+ (MBProgressHUD *)showErrorHUD:(UIView *)view text:(NSString *)text;
+ (MBProgressHUD *)showInfoHUD:(UIView *)view text:(NSString *)text;

@end
