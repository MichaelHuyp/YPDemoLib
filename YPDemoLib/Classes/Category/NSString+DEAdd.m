//
//  NSString+DEAdd.m
//  DiEnterprise
//
//  Created by huyunpeng on 2017/7/17.
//  Copyright © 2017年 xiaojukeji. All rights reserved.
//

#import "NSString+DEAdd.h"

@implementation NSString (DEAdd)

- (BOOL)de_isNotBlank
{
    NSCharacterSet *blank = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    for (NSInteger i = 0; i < self.length; ++i) {
        unichar c = [self characterAtIndex:i];
        if (![blank characterIsMember:c]) {
            return YES;
        }
    }
    return NO;
}

- (NSString *)de_filterAndIsPhoneNumber
{
    // 1.过滤特殊字符
    NSScanner *scanner = [NSScanner scannerWithString:self];
    NSCharacterSet *numbers = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    NSString *filterStr = nil;
    NSMutableString *numberString = [[NSMutableString alloc] init];
    while (![scanner isAtEnd]) {
        [scanner scanUpToCharactersFromSet:numbers intoString:NULL];
        [scanner scanCharactersFromSet:numbers intoString:&filterStr];
        if (filterStr) {
            [numberString appendString:filterStr];
            filterStr = @"";
        }
    }
    if ([numberString hasPrefix:@"86"]) {
        numberString = [[numberString stringByReplacingOccurrencesOfString:@"86" withString:@""] mutableCopy];
    }
    
    // 去掉正则表达式过滤 只做特殊字符过滤
    
#if 0
    // 2.正则表达式匹配
    NSString *phoneNumRegex = @"^1(3[0-9]|4[57]|5[0-35-9]|7[0135678]|8[0-9])\\d{8}$";
    NSError *error = nil;
    NSRegularExpression *expression = [NSRegularExpression regularExpressionWithPattern:phoneNumRegex options:0 error:&error];
    if (error) return nil;
    NSTextCheckingResult *match = [expression firstMatchInString:numberString
                                                         options:0
                                                           range:NSMakeRange(0, [numberString length])];
    if (!match) return nil;
    NSString *result = [numberString substringWithRange:match.range];
    if (!result.length) return nil;
#endif
    
    return [numberString copy];
}

- (NSString *)de_stringByTrim
{
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [self stringByTrimmingCharactersInSet:set];
}

@end
