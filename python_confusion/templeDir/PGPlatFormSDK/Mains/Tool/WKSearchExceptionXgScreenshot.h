//
//  CSValidation.h
//  CSgameSDKDemo
//
//  Created by FreeGeek on 15/6/16.
//  Copyright (c) 2015年 xiezhongxi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface WKSearchExceptionXgScreenshot : NSObject

/**
 *  @brief  检查用户名格式
 *  @param userName
 *  @return
 */
+(BOOL)hx_CheckUserName:(NSString *)userName;

/**
 *  @brief  检查密码格式
 *  @param password
 *  @return
 */
+(BOOL)hx_CheckPassword:(NSString *)password;

/**
 *  @brief  检查手机格式
 *  @param phoneNumber
 *  @return
 */
+(BOOL)hx_CheckPhoneNumber:(NSString *)phoneNumber;

/**
 *  @brief  检查验证码格式
 *  @param verificationCode
 *  @return
 */
+(BOOL)hx_CheckVerificationCode:(NSString *)verificationCode;

/**
 *  @brief  检查邮箱格式
 *  @param email
 *  @return
 */
+(BOOL)hx_CheckEmail:(NSString *)email;

/**
 *  @brief  检查身份证格式
 *  @param idCard
 *  @return
 */
+(BOOL)hx_CheckIdCard:(NSString *)idCard;

/**
 *  @brief  检查生日格式
 *  @param birthday
 *  @return
 */
+(BOOL)hx_CheckBirthday:(NSString *)birthday;

/**
 *  @brief  检查版本信息
 *  @param serverVersion
 *  @return 
 */
+(BOOL)hx_CheckVersion:(NSString *)serverVersion;

@end
