//
//  UIDevice+WNUtils.h
//  hxb
//
//  Created by WeiXinxing on 15/12/23.
//  Copyright © 2015年 NFS. All rights reserved.
//

#import <UIKit/UIKit.h>

// 根据设备类型区分设备尺寸，感觉更直观些，并非真实的设备类型，而是设备所代表的屏幕尺寸
typedef NS_ENUM(NSInteger, WNDeviceType) {
    WNDeviceTypeiPhone4 = 0,
    WNDeviceTypeiPhone5,
    WNDeviceTypeiPhone6,
    WNDeviceTypeiPhone6Plus,
    WNDeviceTypeiPadMini,
    WNDeviceTypeiPad
};

extern BOOL OSVersionGE(CGFloat version);