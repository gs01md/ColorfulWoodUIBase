//
//  NSString+ColorfulWoodRegex.h
//  ColorfulWoodCategories
//
//  Created by 大新 on 2017/2/21.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ColorfulWoodRegex)

/**
 * 根据传入的规则，进行校验；
 * 如果传入为空，则不进行校验，直接返回成功
 */
- (BOOL) interface_checkWithRegex:(NSString*)regEx;

/**
 * 根据传入的规则，返回正确的字符串
 * 如果传入为空，则不进行校验，直接返回原字符串
 */
- (NSString*) interface_getWithRegex:(NSString*)regEx;


//----------------------------------------------------------------------
#pragma mark - 常用正则

/**
 * 0~18位字母或数字，用于身份证
 */
#define ColorfulWoodRegex_1 @"^[a-zA-Z0-9]{0,18}+$"


//----------------------------------------------------------------------
#pragma mark - 常用接口

/**
 *  邮箱验证
 *
 *  @param email 邮箱
 *
 *  @return YES:正确  NO:失败
 */
+ (BOOL) checkForEmail:(NSString *)email;

/**
 *  手机号验证
 *
 *  @param mobilePhone 手机号
 *
 *  @return YES:正确  NO:失败
 */
+(BOOL)checkForMobilePhoneNo:(NSString *)mobilePhone;

/**
 *  电话号验证
 *
 *  @param phone 电话号
 *
 *  @return 结果
 */
+(BOOL)checkForPhoneNo:(NSString *)phone;

/**
 *  身份证号验证(15位 或 18位)
 *
 *  @param idCard 身份证号
 *
 *  @return YES:正确  NO:失败
 */
+(BOOL)checkForIdCard:(NSString *)idCard;

/**
 *  密码验证
 *
 *  @param shortest 最短长度
 *  @param longest  最长长度
 *  @param pwd      密码
 *
 *  @return 结果
 */
+(BOOL)checkForPasswordWithShortest:(long)shortest longest:(long)longest password:(NSString *)pwd;


/**
 *  由数字和26个英文字母组成的字符串
 *
 *  @param data 数据
 *
 *  @return 结果
 */
+ (BOOL) checkForNumberAndCase:(NSString *)data;


/**
 *  校验只能输入26位小写字母
 *
 *  @param data 数据
 *
 *  @return 结果
 */
+ (BOOL) checkForLowerCase:(NSString *)data;

/**
 *  校验只能输入26位大写字母
 *
 *  @param data 数据
 *
 *  @return 结果
 */
+ (BOOL) checkForUpperCase:(NSString *)data;

/**
 *  校验只能输入由26个小写英文字母组成的字符串
 *
 *  @param data 字符串
 *
 *  @return 结果
 */
+ (BOOL) checkForLowerAndUpperCase:(NSString *)data;

/**
 *  是否含有特殊字符(%&’,;=?$\等)
 *
 *  @param data 数据
 *
 *  @return 结果
 */
+ (BOOL) checkForSpecialChar:(NSString *)data;


/**
 *  校验只能输入数字
 *
 *  @param number 数字
 *
 *  @return 结果
 */
+ (BOOL) checkForNumber:(NSString *)number;

/**
 *  校验只能输入n位的数字
 *
 *  @param length n位
 *  @param number 数字
 *
 *  @return 结果
 */
+ (BOOL) checkForNumberWithLength:(NSString *)length number:(NSString *)number;



@end
