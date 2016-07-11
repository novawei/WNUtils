//
//  MBProgressHUD+WNUtils.m
//  hxb
//
//  Created by Nova on 15/12/30.
//  Copyright © 2015年 NFS. All rights reserved.
//

#import "MBProgressHUD+WNUtils.h"

#define MBPROGRESSHUD_TAG   98765

@implementation MBProgressHUD (WNUtils)

+ (NSTimeInterval)displayDurationForText:(NSString *)text
{
    NSTimeInterval duration = text.length * 0.06 + 1.0;
    return MIN(duration, 2); // max is 2 sec
}

+ (MBProgressHUD *)showHUD:(UIView *)view
{
    return [self showHUD:view text:nil];
}

+ (MBProgressHUD *)showHUD:(UIView *)view text:(NSString *)text
{
    return [self showHUD:view text:text mode:MBProgressHUDModeIndeterminate];
}

+ (MBProgressHUD *)showHUD:(UIView *)view text:(NSString *)text mode:(MBProgressHUDMode)mode
{
    if (!view) {
        return nil;
    }
    
    MBProgressHUD *hud = [view viewWithTag:MBPROGRESSHUD_TAG];
    if (!hud) {
        hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
        hud.tag = MBPROGRESSHUD_TAG;
        hud.minSize = CGSizeMake(120, 40);
        hud.detailsLabelFont = [UIFont boldSystemFontOfSize:16];
    }
    hud.detailsLabelText = text;
    hud.mode = mode;
    return hud;
}

+ (void)hideHUD:(UIView *)view
{
    MBProgressHUD *hud = [view viewWithTag:MBPROGRESSHUD_TAG];
    [hud hide:YES];
}

+ (MBProgressHUD *)showAutoHideHUD:(UIView *)view text:(NSString *)text
{
    return [self showAutoHideHUD:view text:text mode:MBProgressHUDModeText];
}

+ (MBProgressHUD *)showAutoHideHUD:(UIView *)view text:(NSString *)text mode:(MBProgressHUDMode)mode
{
    MBProgressHUD *hud = [self showHUD:view text:text mode:mode];
    [hud hide:YES afterDelay:[self displayDurationForText:text]];
    return hud;
}

+ (MBProgressHUD *)showSuccessHUD:(UIView *)view text:(NSString *)text
{
    MBProgressHUD *hud = [self showAutoHideHUD:view text:text mode:MBProgressHUDModeCustomView];
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MBProgressHUD.bundle/hud_success"]];
    return hud;
}

+ (MBProgressHUD *)showErrorHUD:(UIView *)view text:(NSString *)text
{
    MBProgressHUD *hud = [self showAutoHideHUD:view text:text mode:MBProgressHUDModeCustomView];
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MBProgressHUD.bundle/hud_error"]];
    return hud;
}

+ (MBProgressHUD *)showInfoHUD:(UIView *)view text:(NSString *)text
{
    MBProgressHUD *hud = [self showAutoHideHUD:view text:text mode:MBProgressHUDModeCustomView];
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MBProgressHUD.bundle/hud_info"]];
    return hud;
}

@end
