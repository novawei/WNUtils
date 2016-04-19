//
//  UIColor+WNUtils.m
//  Utils
//
//  Created by WeiXinxing on 16/4/19.
//  Copyright © 2016年 novawei. All rights reserved.
//

#import "UIColor+WNUtils.h"

@implementation UIColor (WNUtils)

+ (UIColor *)colorWithHex:(NSInteger)hex
{
    return [self colorWithHex:hex alpha:1.0];
}

+ (UIColor *)colorWithHex:(NSInteger)hex alpha:(CGFloat)alpha
{
    NSInteger red = (hex >> 16) & 0xFF;
    NSInteger green = (hex >> 8) & 0xFF;
    NSInteger blue = hex & 0xFF;
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}

@end
