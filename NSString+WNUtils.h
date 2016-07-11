//
//  NSString+WNUtils.h
//  hxb
//
//  Created by Nova on 16/1/11.
//  Copyright © 2016年 NFS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>

@interface NSString (WNUtils)

+ (BOOL)isEmpty:(NSString *)string;
- (BOOL)isEqualToOne; //@"1"
- (BOOL)isEqualToNumber:(NSInteger)num;

+ (CGFloat)heightWithFontSize:(CGFloat)fontSize;
- (CGSize)sizeWithFontSize:(CGFloat)fontSize;
- (CGRect)boundingRectWithWidth:(CGFloat)width fontSize:(CGFloat)fontSize;
- (CGRect)boundingRectWithWidth:(CGFloat)width fontSize:(CGFloat)fontSize lineSpacing:(CGFloat)lineSpacing;

@end
