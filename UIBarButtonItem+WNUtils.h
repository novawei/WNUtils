//
//  UIBarButtonItem+WNUtils.h
//  Utils
//
//  Created by WeiXinxing on 16/4/19.
//  Copyright © 2016年 novawei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (WNUtils)

+ (UIBarButtonItem *)itemWithTitle:(NSString *)title target:(id)target action:(SEL)sel;
+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName target:(id)target action:(SEL)sel;
+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName renderingMode:(UIImageRenderingMode)mode target:(id)target action:(SEL)sel;
+ (UIBarButtonItem *)itemWithFixedSpace:(CGFloat)space;
+ (UIBarButtonItem *)itemWithFlexibleSpace;

@end
