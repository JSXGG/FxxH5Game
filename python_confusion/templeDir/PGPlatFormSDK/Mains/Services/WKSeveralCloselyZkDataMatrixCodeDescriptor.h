//
//  WKSeveralCloselyZkDataMatrixCodeDescriptor.h
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/21.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SDKHelper.h"
@interface WKSeveralCloselyZkDataMatrixCodeDescriptor : NSObject
+ (WKSeveralCloselyZkDataMatrixCodeDescriptor*)sharedHelper;

/**
 登录api

 @param userName 用户名
 @param password 密码
 @param callback 返回
 */
- (void)hx_loginWithUserName:(NSString*)userName withPassWord:(NSString*)password withCallBack:(requestcallBack)callback;
/*
   登录之后获取用户信息
 */
- (void)hx_getUserInfowithCallBack:(requestcallBack)callback;

/*
  获取浮标开关
 */
-(void)hx_getPointButtonConfig:(requestcallBack)callback;

//深度激活
-(void)hx_setOnLineTime:(requestcallBack)callback;




//退出登录。
-(void)hx_logOutWithCallBack:(requestcallBack)callback;

//进入游戏。
-(void)hx_enterDataWithUserName:(NSString *)userName withCallBack:(requestcallBack)callback;

//登录验证。
-(void)hx_loginValidationWithSessionID:(NSString *)sessionid withCallBack:(requestcallBack)callback;

//修改密码。
-(void)hx_changePassWord:(NSString *)password withOldPassWord:(NSString *)oldpassWord withCallBack:(requestcallBack)callback;

//绑定邮箱。
-(void)hx_bindEmaile:(NSString *)email  withCallBack:(requestcallBack)callback;

//绑定手机
-(void)hx_bindPhoneWithNumber:(NSString *)phoneNumber withVCode:(NSString *)vcode withCallBack:(requestcallBack)callback;
/**
 注册api

 @param userName 用户名
 @param password 密码
 @param callback 返回
 */
- (void)hx_registerWithUserName:(NSString*)userName withPassWord:(NSString*)password withCallBack:(requestcallBack)callback;

/**
 邮箱找回密码

 @param account 账户
 @param email email
 @param callback 返回
 */
- (void)hx_getPassWordWithAccount:(NSString*)account withEmail:(NSString*)email withCallBack:(requestcallBack)callback;


/**
 发送验证码

 @param account 账户
 @param callback 返回
 */
- (void)hx_getPassWordSenderVcode:(NSString*)account withCallBack:(requestcallBack)callback;


/**
 手机号码登录，发送验证码,
 
 @param account 手机号码
 @param callback 返回
 */
- (void)hx_mobileLoginSenderVcode:(NSString*)account withCallBack:(requestcallBack)callback;


/**
 手机号码登录，验证验证码
 
 @param mobile 手机号码
 @param callback 返回
 */
- (void)hx_mobileLogin:(NSString*)mobile withVCode:(NSString*)vcode withCallBack:(requestcallBack)callback;

/**
 修改密码

 @param mobile 手机号码
 @param vcode 验证码
 @param callback 返回
 */
- (void)hx_getPassWordWithMobile:(NSString*)mobile withVCode:(NSString*)vcode withCallBack:(requestcallBack)callback;

/**
 设置密码

 @param account 账户
 @param passWord 密码1
 @param passWord2 密码2
 @param callback 返回
 */
- (void)hx_updataPassWordWithAccount:(NSString *)account setPassWord:(NSString*)passWord withPassWord2:(NSString*)passWord2 withCallBack:(requestcallBack)callback;
/**
 内购
 @param productid 产品id
 @param amount 金额
 @param extrainfo 透传
 @param productname  产品名称
 @param callback 返回
 */
-(void)hx_iapWithProductID:(NSString *)productid withAmount:(NSString *)amount withExtraInfo:(NSString *)extrainfo withProductName:(id)productname withCallBack:(requestcallBack)callback;
@end
