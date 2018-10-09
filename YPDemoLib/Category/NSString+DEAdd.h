//
//  NSString+DEAdd.h
//  DiEnterprise
//
//  Created by huyunpeng on 2017/7/17.
//  Copyright © 2017年 xiaojukeji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (DEAdd)


/**
 判断字符串是否为空

 @return YES 表示非空 NO 表示为空
 */
- (BOOL)de_isNotBlank;


/**
 过滤掉所有特殊字符 并且判断是否是电话号 如果是电话号就返回
 */
- (NSString *)de_filterAndIsPhoneNumber;


/**
 trim
 */
- (NSString *)de_stringByTrim;

@end
