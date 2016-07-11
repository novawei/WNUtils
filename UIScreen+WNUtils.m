//
//  UIScreen+WNUtils.m
//  hxb
//
//  Created by WeiXinxing on 15/12/23.
//  Copyright © 2015年 NFS. All rights reserved.
//

#import "UIScreen+WNUtils.h"

@implementation UIScreen (Utils)

+ (CGSize)size
{
    return [UIScreen mainScreen].bounds.size;
}

+ (CGSize)size:(WNDeviceType)type
{
    CGSize size = {0, 0};
    switch (type) {
        case WNDeviceTypeiPhone4:
            size = CGSizeMake(320, 480);
            break;
        case WNDeviceTypeiPhone5:
            size = CGSizeMake(320, 568);
            break;
        case WNDeviceTypeiPhone6Plus:
            size = CGSizeMake(414, 736);
            break;
        case WNDeviceTypeiPadMini:
        case WNDeviceTypeiPad:
            size = CGSizeMake(768, 1024);
            break;
        default: // 默认iphone6的尺寸
            size = CGSizeMake(375, 667);
            break;
    }
    return size;
}

+ (CGFloat)width
{
    return [self size].width;
}

+ (CGFloat)width:(WNDeviceType)type
{
    return [self size:type].width;
}

+ (CGFloat)scale
{
    return [UIScreen mainScreen].scale;
}

@end

BOOL ScreenWidthLT(WNDeviceType type)
{
    return [UIScreen width] < [UIScreen width:type];
}

BOOL ScreenWidthLE(WNDeviceType type)
{
    return [UIScreen width] <= [UIScreen width:type];
}

BOOL ScreenWidthGT(WNDeviceType type)
{
    return [UIScreen width] > [UIScreen width:type];
}

BOOL ScreenWidthGE(WNDeviceType type)
{
    return [UIScreen width] >= [UIScreen width:type];
}

BOOL ScreenHeightLT(WNDeviceType type)
{
    return [UIScreen size].height < [UIScreen size:type].height;
}

BOOL ScreenHeightLE(WNDeviceType type)
{
    return [UIScreen size].height <= [UIScreen size:type].height;
}

BOOL ScreenHeightGT(WNDeviceType type)
{
    return [UIScreen size].height > [UIScreen size:type].height;
}

BOOL ScreenHeightGE(WNDeviceType type)
{
    return [UIScreen size].height >= [UIScreen size:type].height;
}
