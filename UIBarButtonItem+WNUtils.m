//
//  UIBarButtonItem+WNUtils.m
//  Utils
//
//  Created by WeiXinxing on 16/4/19.
//  Copyright © 2016年 novawei. All rights reserved.
//

#import "UIBarButtonItem+WNUtils.h"

@implementation UIBarButtonItem (WNUtils)

+ (UIBarButtonItem *)itemWithTitle:(NSString *)title target:(id)target action:(SEL)sel
{
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStylePlain target:target action:sel];
    return item;
}

+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName target:(id)target action:(SEL)sel
{
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:imageName] style:UIBarButtonItemStylePlain target:target action:sel];
    return item;
}

+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName renderingMode:(UIImageRenderingMode)mode target:(id)target action:(SEL)sel
{
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:imageName] imageWithRenderingMode:mode] style:UIBarButtonItemStylePlain target:target action:sel];
    return item;
}

+ (UIBarButtonItem *)itemWithFixedSpace:(CGFloat)space
{
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    item.width = space;
    return item;
}

+ (UIBarButtonItem *)itemWithFlexibleSpace
{
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    return item;
}

@end
