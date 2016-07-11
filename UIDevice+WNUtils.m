//
//  UIDevice+WNUtils.m
//  hxb
//
//  Created by WeiXinxing on 15/12/23.
//  Copyright © 2015年 NFS. All rights reserved.
//

#import "UIDevice+WNUtils.h"

BOOL OSVersionGE(CGFloat version)
{
    static CGFloat osver = 0;
    if (osver < 7) {
        osver = [[[UIDevice currentDevice] systemVersion] floatValue];
    }
    return osver >= version;
}
