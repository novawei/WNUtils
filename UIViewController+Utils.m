//
//  UIViewController+Utils.m
//  WN
//
//  Created by WeiXinxing on 16/5/20.
//  Copyright © 2016年 nfs. All rights reserved.
//

#import "UIViewController+Utils.h"

@implementation UIViewController (Utils)

- (UINavigationController *)embedNavigation
{
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:self];
    return nav;
}

@end
