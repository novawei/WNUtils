//
//  NSDate+WNUtils.h
//  Utils
//
//  Created by WeiXinxing on 16/4/19.
//  Copyright © 2016年 novawei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (WNUtils)

// 1分钟前，刚刚...
- (NSString *)prettyDateDescription;
+ (NSString *)prettyDateDescription:(NSTimeInterval)interval;

+ (NSString *)dateTimeDescription:(NSTimeInterval)interval; // yyyy-MM-dd HH:mm
+ (NSString *)dateDescription:(NSTimeInterval)interval; // yyyy-MM-dd

@end
