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

+ (UIColor *)highlightColorWithHex:(NSInteger)hex
{
    return [self highlightColorWithHex:hex alpha:0.85];
}

+ (UIColor *)highlightColorWithHex:(NSInteger)hex alpha:(CGFloat)alpha
{
    NSInteger red = ((hex >> 16) & 0xFF) >> 2;
    NSInteger green = ((hex >> 8) & 0xFF) >> 2;
    NSInteger blue = (hex & 0xFF) >> 2;
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}


+ (UIColor *)randomColor
{
    return [UIColor colorWithRed:arc4random()%256/255.0
                           green:arc4random()%256/255.0
                            blue:arc4random()%256/255.0
                           alpha:1.0];
}

@end
