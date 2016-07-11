//
//  UIScreen+WNUtils.h
//  hxb
//
//  Created by WeiXinxing on 15/12/23.
//  Copyright © 2015年 NFS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIDevice+WNUtils.h"

@interface UIScreen (WNUtils)

+ (CGSize)size;
+ (CGSize)size:(WNDeviceType)type;

+ (CGFloat)width;
+ (CGFloat)width:(WNDeviceType)type;

+ (CGFloat)scale;

@end

extern BOOL ScreenWidthLT(WNDeviceType type);
extern BOOL ScreenWidthLE(WNDeviceType type);
extern BOOL ScreenWidthGT(WNDeviceType type);
extern BOOL ScreenWidthGE(WNDeviceType type);

extern BOOL ScreenHeightLT(WNDeviceType type);
extern BOOL ScreenHeightLE(WNDeviceType type);
extern BOOL ScreenHeightGT(WNDeviceType type);
extern BOOL ScreenHeightGE(WNDeviceType type);