//
//  NSString+WNUtils.m
//  hxb
//
//  Created by Nova on 16/1/11.
//  Copyright © 2016年 NFS. All rights reserved.
//

#import "NSString+WNUtils.h"

@implementation NSString (WNUtils)

+ (BOOL)isEmpty:(NSString *)string
{
    return string == nil || string.length == 0;
}

- (BOOL)isEqualToOne
{
    return [self isEqualToString:@"1"];
}

- (BOOL)isEqualToNumber:(NSInteger)num
{
    NSString *numValue = [[NSString alloc] initWithFormat:@"%d", (int)num];
    return [self isEqualToString:numValue];
}

+ (CGFloat)heightWithFontSize:(CGFloat)fontSize
{
    return [@" " sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fontSize]}].height;
}

- (CGSize)sizeWithFontSize:(CGFloat)fontSize
{
    return [self sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fontSize]}];
}

- (CGRect)boundingRectWithWidth:(CGFloat)width fontSize:(CGFloat)fontSize
{
    @autoreleasepool {
        CGRect rect = [self boundingRectWithSize:CGSizeMake(width, 0)
                                               options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading
                                            attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fontSize]}
                                               context:nil];
        rect.size.height = ceil(rect.size.height);
        return rect;
    }
}

- (CGRect)boundingRectWithWidth:(CGFloat)width fontSize:(CGFloat)fontSize lineSpacing:(CGFloat)lineSpacing
{
    @autoreleasepool {
        NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
        [style setLineSpacing:lineSpacing];
        NSMutableDictionary *attrs = [[NSMutableDictionary alloc] initWithCapacity:2];
        [attrs setObject:style forKey:NSParagraphStyleAttributeName];
        [attrs setObject:[UIFont systemFontOfSize:fontSize] forKey:NSFontAttributeName];
        
        CGRect rect = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                               options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading
                                            attributes:attrs
                                               context:nil];
        rect.size.height = ceil(rect.size.height);
        return rect;
    }
}

@end
