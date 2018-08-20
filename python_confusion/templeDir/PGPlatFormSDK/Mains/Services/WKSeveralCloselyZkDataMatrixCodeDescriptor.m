//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKSeveralCloselyZkDataMatrixCodeDescriptor.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/21.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKSeveralCloselyZkDataMatrixCodeDescriptor.h"
#import "WKAssignTurnkeyLcReusableView.h"
#import "WKStrongTakeBwEAGLLayer.h"
#import "WKSearchExceptionXgScreenshot.h"
#import "WKExponentFindKhScreenshot.h"
#import "WKSubsequentNecessarilyVeResource.h"
#import "WKSensitivityImportanceGrElementQuery.h"
#import "WKLowestInternalMpTableViewController.h"
#import "AppDelegate.h"
#import "WKWriteVitalLmDrawingContext.h"
@implementation WKSeveralCloselyZkDataMatrixCodeDescriptor
+ (WKSeveralCloselyZkDataMatrixCodeDescriptor*)sharedHelper{
    static WKSeveralCloselyZkDataMatrixCodeDescriptor * _sharedHelper = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedHelper = [[WKSeveralCloselyZkDataMatrixCodeDescriptor alloc] init];        
    });
    return _sharedHelper;
}

-(void)hx_LoginSuccessfulData:(NSDictionary *)resultDict{
    [WKStrongTakeBwEAGLLayer sharedHelper].sessionID = [resultDict objectForKey:@"session_id"];
    [WKStrongTakeBwEAGLLayer sharedHelper].server_timestamp = [resultDict objectForKey:@"timestamp"];
    [WKStrongTakeBwEAGLLayer sharedHelper].server_token = [resultDict objectForKey:@"token"];
    [WKStrongTakeBwEAGLLayer sharedHelper].userMoney = [[resultDict objectForKey:@"money"]intValue];
    [WKStrongTakeBwEAGLLayer sharedHelper].regisDate = [resultDict objectForKey:@"register_time"];
    [WKStrongTakeBwEAGLLayer sharedHelper].userInfo = resultDict;
    //激活数据。
    if(![self isActivation]){
        [self activationData];
    }

    NSString *uyuk = @"uyuk_str";
    uyuk = nil;
}

- (void)hx_loginWithUserName:(NSString*)userName withPassWord:(NSString*)password withCallBack:(requestcallBack)callback
{
    __weak typeof(self)weakSelf = self;
    if([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest){
        NSMutableDictionary* dict = [[WKStrongTakeBwEAGLLayer sharedHelper] publicData];
        [dict setObject:@"1" forKey:@"return_json"];
        [dict setObject:@"login" forKey:@"do"];
        [dict setObject:userName forKey:@"username"];
        [dict setObject:password forKey:@"password"];
        [dict setObject:@"" forKey:@"referer_param"];
        [[WKAssignTurnkeyLcReusableView shared]hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkLoginUrl withRequsetName:@"登录" withParameters:dict withCallBack:^(id  _Nullable dic) {
            if([dic isKindOfClass:[NSDictionary class]]
               &&[dic objectForKey:@"status"]
               &&[[dic objectForKey:@"status"]intValue]>=0){
                [weakSelf hx_LoginSuccessfulData:dic];
            }
            if(callback){
                callback(dic);
            }
        }];
    }
    else{
        NSMutableDictionary* dict = [[WKStrongTakeBwEAGLLayer sharedHelper] publicData];
        [dict setObject:@"1" forKey:@"return_json"];
        [dict setObject:@"login" forKey:@"do"];
        [dict setObject:userName forKey:@"username"];
        [dict setObject:password forKey:@"password"];
        [dict setObject:@"" forKey:@"referer_param"];
        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"登录" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
            if(!error){
                if([resultDict isKindOfClass:[NSDictionary class]]
                   &&[resultDict objectForKey:@"status"]
                   &&[[resultDict objectForKey:@"status"]intValue]>=0){
                    [weakSelf hx_LoginSuccessfulData:resultDict];
                }
               if(callback){
                    callback(resultDict);
                }
            }
            else{
                if(callback){
                    callback(@{@"error":error.localizedDescription});
                }
            }
        }];
    }

    NSString *knvm = @"knvm_str";
    knvm = nil;
}
-(BOOL)isActivation{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    return [[userDefaults objectForKey:@"PGActivation"] boolValue];
}
-(void)activation{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:[NSNumber numberWithBool:YES] forKey:@"PGActivation"];
    [userDefaults synchronize];

    NSString *flvn = @"flvn_str";
    flvn = nil;
}
//统计激活。
-(void)activationData{
    if([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest){
        NSMutableDictionary * dict = [[WKStrongTakeBwEAGLLayer sharedHelper] publicData];
        [dict setObject:@"device_data" forKey:@"do"];
        typeof(self)weakSelf = self;
        [[WKAssignTurnkeyLcReusableView shared]hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkTjUrl withRequsetName:@"统计激活" withParameters:dict withCallBack:^(id  _Nullable dic) {
            if(dic&&[dic isKindOfClass:[NSDictionary class]]){
                [weakSelf activation];
            }
        }];
    }
    else{
    NSMutableDictionary * dict = [[WKStrongTakeBwEAGLLayer sharedHelper] publicData];
    [dict setObject:@"device_data" forKey:@"do"];
    [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"统计激活" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
        if(!error){
            [self activation];
        }
    }];
 }

    NSString *vkmh = @"vkmh_str";
    vkmh = nil;
}
//获取用户信息
- (void)hx_getUserInfowithCallBack:(requestcallBack)callback{
    if ([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest) {
        NSMutableDictionary * dict = [NSMutableDictionary dictionary];
        [dict setObject:@"1" forKey:@"return_json"];
        [dict setObject:@"" forKey:@"referer_param"];
        [[WKAssignTurnkeyLcReusableView shared]hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkUserInfoUrl withRequsetName:@"获取用户信息" withParameters:dict withCallBack:^(id  _Nullable dic) {
            if(dic&&[dic isKindOfClass:[NSDictionary class]]){
                //映射
                NSMutableDictionary *callBackDic = [[NSMutableDictionary alloc]init];
                [callBackDic setObject:[dic objectForKey:@"bind_cellphone"] forKey:@"BIND_CELLPHONE"];
                [callBackDic setObject:[dic objectForKey:@"email"] forKey:@"EMAIL"];
                [callBackDic setObject:[dic objectForKey:@"idCardNumber"] forKey:@"ID_CARD_NUMBER"];
                [callBackDic setObject:[dic objectForKey:@"phone"] forKey:@"PHONE"];
                [callBackDic setObject:[dic objectForKey:@"username"] forKey:@"LOGIN_ACCOUNT"];
                if(callback){
                    callback(callBackDic);
                }
            }
        }];
    }
    else{
        NSMutableDictionary * dict = [NSMutableDictionary dictionary];
        [dict setObject:@"1" forKey:@"return_json"];
        [dict setObject:@"" forKey:@"referer_param"];
        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"获取用户信息" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
            if(!error){
               if(callback){
                    callback(resultDict);
                }
            }
            else{
                 if(callback){
                    callback(@{@"error":error.localizedDescription});
                }
            }
        }];
    }

    NSString *fyvd = @"fyvd_str";
    fyvd = nil;
}
//获取浮标。
-(void)hx_getPointButtonConfig:(requestcallBack)callback{
    
    if ([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest) {
        NSMutableDictionary * dict = [[NSMutableDictionary alloc] init];
        NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
        [dict setObject:@"filter_data" forKey:@"do"];
        [dict setObject:@"stat" forKey:@"postfix"];
        [dict setObject:@"4c69_fb" forKey:@"name"];
        [dict setObject:[infoDictionary objectForKey:@"CFBundleVersion"] forKey:@"map[ext2]"];
        [dict setObject:[infoDictionary objectForKey:@"CFBundleShortVersionString"] forKey:@"map[ext5]"];
        [dict setObject:[WKStrongTakeBwEAGLLayer sharedHelper].gameID forKey:@"map[thumb]"];
        [dict setObject:@"click" forKey:@"map[ext6]"];
        [[WKAssignTurnkeyLcReusableView shared]hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkUrl withRequsetName:@"获取浮标开关" withParameters:dict withCallBack:^(id  _Nullable dic) {
            if(callback){
                NSMutableArray *array = (NSMutableArray *)dic;
                if ([array isKindOfClass:[NSArray class]]&&array.count >0){
                    NSMutableDictionary *dict = [array objectAtIndex:0];
                    BOOL status = [[dict objectForKey:@"ext6"] isEqualToString:@"click"];
                    if(status == YES){
                        callback(dict);
                    }
                    else{
                        callback(nil);
                    }
                }
                else{
                    callback(nil);
                }
            }
            else{
                callback(nil);
            }
        }];
    }
    else{
        NSMutableDictionary * dict = [[NSMutableDictionary alloc] init];
        NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
        [dict setObject:@"filter_data" forKey:@"do"];
        [dict setObject:@"stat" forKey:@"postfix"];
        [dict setObject:@"4c69_fb" forKey:@"name"];
        [dict setObject:@{
                          @"ext2":[infoDictionary objectForKey:@"CFBundleVersion"],
                          @"ext5":[infoDictionary objectForKey:@"CFBundleShortVersionString"],
                          @"thumb":[WKStrongTakeBwEAGLLayer sharedHelper].gameID,
                          @"ext6":@"click"
                          } forKey:@"map"];
        [dict setObject:[[NSBundle mainBundle] bundleIdentifier] forKey:@"bundleidentifier"];
        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"获取浮标开关" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
            if(!error){
                if(callback){
                    NSMutableArray *array = (NSMutableArray *)resultDict;
                    if ([array isKindOfClass:[NSArray class]]&&array.count >0){
                        NSMutableDictionary *dict = [array objectAtIndex:0];
                        BOOL status = [[dict objectForKey:@"ext6"] isEqualToString:@"click"];
                        if(status == YES){
                            callback(dict);
                        }
                        else{
                            callback(nil);
                        }
                    }
                    else{
                        callback(nil);
                    }
                }
            }
            else{
                if(callback){
                    callback(nil);
                }
            }
        }];
    }

    NSString *ydfr = @"ydfr_str";
    ydfr = nil;
}
//深度激活。
-(void)hx_setOnLineTime:(requestcallBack)callback{
    NSMutableDictionary * dict = [[WKStrongTakeBwEAGLLayer sharedHelper] publicData];
    [dict setObject:@"online_data" forKey:@"do"];
    if([WKStrongTakeBwEAGLLayer sharedHelper].deepActivationUserName){
        [dict setObject:[WKStrongTakeBwEAGLLayer sharedHelper].deepActivationUserName forKey:@"username"];
    }
    if([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest){
        [[WKAssignTurnkeyLcReusableView shared]hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkTjUrl withRequsetName:@"深度激活" withParameters:dict withCallBack:^(id  _Nullable dic) {
            callback(dic);
        }];
    }
    else{
        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"深度激活" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
            if(!error){
               if(callback){
                    callback(resultDict);
                }
            }
            else{
                 if(callback){
                    callback(@{@"error":error.localizedDescription});
                }
            }
        }];
    }

    NSString *jkti = @"jkti_str";
    jkti = nil;
}

//注销。
-(void)hx_logOutWithCallBack:(requestcallBack)callback{
    NSMutableDictionary * dict = [[NSMutableDictionary alloc]init];
    [dict setObject:@"logout" forKey:@"do"];
    [dict setObject:@"1" forKey:@"return_json"];
    [dict setObject:@"" forKey:@"referer_param"];
    if([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest){
        [[WKAssignTurnkeyLcReusableView shared]hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkLogoutUrl withRequsetName:@"注销"  withParameters:dict withCallBack:^(id  _Nullable dic) {
            if([dic isKindOfClass:[NSDictionary class]]
               &&[dic objectForKey:@"satus"]
               &&[[dic objectForKey:@"satus"]intValue]>=0){
                [WKStrongTakeBwEAGLLayer sharedHelper].userInfo = nil;
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    [[NSNotificationCenter defaultCenter]postNotificationName:PGPNOTIFICATIONLOGOUTSUCESS object:dic];
                });
            }
            if(callback){
                callback(dic);
            }
        }];
    }
    else{
        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"注销" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
            if(!error){
                if([resultDict isKindOfClass:[NSDictionary class]]
                   &&[resultDict objectForKey:@"satus"]
                   &&[[resultDict objectForKey:@"satus"]intValue]>=0){
                    [WKStrongTakeBwEAGLLayer sharedHelper].userInfo = nil;
                    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                        [[NSNotificationCenter defaultCenter]postNotificationName:PGPNOTIFICATIONLOGOUTSUCESS object:resultDict];

                    });
                }
               if(callback){
                    callback(resultDict);
                }
            }
            else{
                 if(callback){
                    callback(@{@"error":error.localizedDescription});
                }
            }
        }];
    }

    NSString *xpew = @"xpew_str";
    xpew = nil;
}
-(void)hx_enterDataWithUserName:(NSString *)userName withCallBack:(requestcallBack)callback{
    NSString * server = [WKStrongTakeBwEAGLLayer sharedHelper].server;
    NSMutableDictionary * dict = [[WKStrongTakeBwEAGLLayer sharedHelper] publicData];
    [dict setObject:@"1" forKey:@"return_json"];
    [dict setObject:@"enter_data" forKey:@"do"];
    [dict setObject:userName forKey:@"username"];
    if(server){
        [dict setObject:server forKey:@"server"];
    }
    [dict setObject:@"" forKey:@"referer_param"];
    if([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest){
        [[WKAssignTurnkeyLcReusableView shared] hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkTjUrl withRequsetName:@"进入游戏"  withParameters:dict withCallBack:^(id  _Nullable dic) {
            if(callback){
                callback(dic);
            }
        }];
    }
    else{
        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"进入游戏" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
            if(!error){
               if(callback){
                    callback(resultDict);
                }
            }
            else{
                 if(callback){
                    callback(@{@"error":error.localizedDescription});
                }
            }
        }];
    }

    NSString *ulmc = @"ulmc_str";
    ulmc = nil;
}
-(void)hx_loginValidationWithSessionID:(NSString *)sessionid withCallBack:(requestcallBack)callback{
    NSMutableDictionary * dict = [NSMutableDictionary dictionary];
    [dict setObject:sessionid forKey:@"session_id"];
    if([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest){
        [[WKAssignTurnkeyLcReusableView shared]hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkLogoutUrl withRequsetName:@"登录验证" withParameters:dict withCallBack:^(id  _Nullable dic) {
            if(callback){
                callback(dic);
            }
        }];
    }
    else{
        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"登录验证" withParamers:dict response:^(NSError * _Nullable error, id  _Nullable resultDict){
            if(!error){
                if(callback){
                    callback(resultDict);
                }
            }
            else{
                if(callback){
                    callback(@{@"error":error.localizedDescription});
                }
            }
        }];
    }
 

    NSString *fytu = @"fytu_str";
    fytu = nil;
}
- (void)hx_registerWithUserName:(NSString*)userName withPassWord:(NSString*)password withCallBack:(requestcallBack)callback{
    NSMutableDictionary* dict = [[WKStrongTakeBwEAGLLayer sharedHelper] publicData];
    [dict setObject:@"1" forKey:@"return_json"];
    [dict setObject:@"1" forKey:@"register"];
    [dict setObject:userName forKey:@"LOGIN_ACCOUNT"];
    [dict setObject:password forKey:@"PASSWORD"];
    [dict setObject:password forKey:@"PASSWORD1"];
    [dict setObject:@"1" forKey:@"is_ajax"];
    [dict setObject:@"register" forKey:@"do"];
    [dict setObject:@"1" forKey:@"client"];
    if([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest){
        [[WKAssignTurnkeyLcReusableView shared]hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkRegisterUrl withRequsetName:@"注册" withParameters:dict withCallBack:^(id  _Nullable dic) {
            if(callback){
                callback(dic);
            }
        }];
    }
    else{
        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"注册" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
            if(!error){
                if(callback){
                    callback(resultDict);
                }
            }
            else{
                if(callback){
                    callback(@{@"error":error.localizedDescription});
                }
            }
        }];
    }

    NSString *rydk = @"rydk_str";
    rydk = nil;
}
- (void)hx_getPassWordWithAccount:(NSString*)account withEmail:(NSString*)email withCallBack:(requestcallBack)callback{
    NSMutableDictionary * dict = [NSMutableDictionary dictionary];
    [dict setObject:@"getpass_email" forKey:@"do"];
    [dict setObject:account forKey:@"username"];
    [dict setObject:email forKey:@"email"];
    [dict setObject:@"1" forKey:@"return_json"];
    [dict setObject:[WKStrongTakeBwEAGLLayer sharedHelper].referer_param forKey:@"referer_param"];
    if([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest){
        [[WKAssignTurnkeyLcReusableView shared]hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkGetPassUrl withRequsetName:@"邮箱找回密码" withParameters:dict withCallBack:^(id  _Nullable dic) {
            if(callback){
                callback(dic);
            }
        }];
    }
    else{
        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"邮箱找回密码" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
            if(!error){
                if(callback){
                    callback(resultDict);
                }
            }
            else{
                if(callback){
                    callback(@{@"error":error.localizedDescription});
                }
            }
        }];
    }

    NSString *ivul = @"ivul_str";
    ivul = nil;
}
- (void)hx_getPassWordSenderVcode:(NSString*)account withCallBack:(requestcallBack)callback{
    NSMutableDictionary * dict = [[NSMutableDictionary alloc]init];
    [dict setObject:@"cellphone" forKey:@"do"];
    [dict setObject:@"2" forKey:@"step"];
    [dict setObject:account forKey:@"username"];
    [dict setObject:@"1" forKey:@"return_json"];
    [dict setObject:[WKStrongTakeBwEAGLLayer sharedHelper].referer_param forKey:@"referer_param"];
    [dict setObject:@"1" forKey:@"no_code"];
    if([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest){
        [[WKAssignTurnkeyLcReusableView shared]hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkGetPassUrl withRequsetName:@"发送验证码" withParameters:dict withCallBack:^(id  _Nullable dic) {
            if(dic&&
               [dic isKindOfClass:[NSDictionary class]]&&
               [[dic objectForKey:@"status"]intValue]>=0){
                NSMutableDictionary * dict = [[NSMutableDictionary alloc]init];
                [dict setObject:@"cellphone" forKey:@"do"];
                [dict setObject:@"3" forKey:@"step"];
                [dict setObject:@"1" forKey:@"return_json"];
                [[WKAssignTurnkeyLcReusableView shared]hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkGetPassUrl withRequsetName:@"发送验证码2" withParameters:dict withCallBack:^(id  _Nullable dic) {
                    if(callback){
                        callback(dic);
                    }
                }];
            }
        }];
    }
    else{
        //发送验证码
        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"发送验证码" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
            if(!error){
                if(resultDict){
                    if([[resultDict objectForKey:@"status"]intValue]>=0){
                        NSMutableDictionary * dict = [[NSMutableDictionary alloc]init];
                        [dict setObject:@"cellphone" forKey:@"do"];
                        [dict setObject:@"3" forKey:@"step"];
                        [dict setObject:@"1" forKey:@"return_json"];
                        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"发送验证码2" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
                            if(!error){
                               if(callback){
                                callback(resultDict);
                               }
                            }
                            else{
                                 if(callback){
                                 callback(@{@"error":error.localizedDescription});
                                }
                            }
                        }];
                    }
                }
            }
            else{
                 if(callback){
                    callback(@{@"error":error.localizedDescription});
                }
            }
        }];
    }

    NSString *caye = @"caye_str";
    caye = nil;
}
- (void)hx_mobileLoginSenderVcode:(NSString*)account withCallBack:(requestcallBack)callback{
    NSMutableDictionary * dict = [[NSMutableDictionary alloc]init];
    [dict setObject:account forKey:@"LOGIN_ACCOUNT"];
    [dict setObject:@"1" forKey:@"cellphone"];
    [dict setObject:@"2" forKey:@"return_json"];
    [dict setObject:@"send" forKey:@"send_captcha"];
    [dict setObject:@"ios" forKey:@"client"];
    if([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest){
        [[WKAssignTurnkeyLcReusableView shared]hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkRegisterUrl withRequsetName:@"发送验证码,手机登录" withParameters:dict withCallBack:^(id  _Nullable dic) {
            if(callback){
                callback(dic);
            }
        }];
    }
    else{
        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"发送验证码,手机登录" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
            if(!error){
                if(callback){
                    callback(resultDict);
                }
            }
            else{
                if(callback){
                    callback(@{@"error":error.localizedDescription});
                }
            }
        }];
    }

    NSString *peyq = @"peyq_str";
    peyq = nil;
}
- (void)hx_getPassWordWithMobile:(NSString*)mobile withVCode:(NSString*)vcode withCallBack:(requestcallBack)callback{
    NSMutableDictionary * dict = [[NSMutableDictionary alloc]init];
    [dict setObject:@"cellphone" forKey:@"do"];
    [dict setObject:@"4" forKey:@"step"];
    [dict setObject:vcode forKey:@"captcha"];
    [dict setObject:@"1" forKey:@"return_json"];
    [dict setObject:[WKStrongTakeBwEAGLLayer sharedHelper].referer_param forKey:@"referer_param"];
    if([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest){
        [[WKAssignTurnkeyLcReusableView shared]hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkGetPassUrl withRequsetName:@"校验验证码" withParameters:dict withCallBack:^(id  _Nullable dic) {
            if(callback){
                 callback(dic);
            }
        }];
    }
    else{
        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"校验验证码" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
            if(!error){
               if(callback){
                    callback(resultDict);
                }
            }
            else{
                 if(callback){
                    callback(@{@"error":error.localizedDescription});
                }
            }
        }];
    }

    NSString *tzla = @"tzla_str";
    tzla = nil;
}
- (void)hx_updataPassWordWithAccount:(NSString *)account setPassWord:(NSString*)passWord withPassWord2:(NSString*)passWord2 withCallBack:(requestcallBack)callback{
    NSMutableDictionary * dict = [[NSMutableDictionary alloc]init];
    [dict setObject:@"cellphone" forKey:@"do"];
    [dict setObject:@"6" forKey:@"step"];
    [dict setObject:@"1" forKey:@"return_json"];
    [dict setObject:passWord forKey:@"password"];
    [dict setObject:passWord2 forKey:@"password2"];
    [dict setObject:[WKStrongTakeBwEAGLLayer sharedHelper].referer_param forKey:@"referer_param"];
    if([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest){
        [[WKAssignTurnkeyLcReusableView shared] hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkGetPassUrl withRequsetName:@"提交新密码" withParameters:dict withCallBack:^(id  _Nullable dic) {
            if(callback){
                callback(dic);
            }
        }];
    }
    else{
        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"提交新密码" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
            if(!error){
                if(callback){
                    callback(resultDict);
                }
            }
            else{
                if(callback){
                    callback(@{@"error":error.localizedDescription});
                }
            }
        }];
    }
    

    NSString *itws = @"itws_str";
    itws = nil;
}
- (void)hx_mobileLogin:(NSString*)mobile withVCode:(NSString*)vcode withCallBack:(requestcallBack)callback{
    NSMutableDictionary* dict =  [[WKStrongTakeBwEAGLLayer sharedHelper]publicData];
    [dict setObject:@"1" forKey:@"return_json"];
    [dict setObject:@"1" forKey:@"register"];
    [dict setObject:@"1" forKey:@"cellphone"];
    [dict setObject:mobile forKey:@"LOGIN_ACCOUNT"];
    [dict setObject:vcode forKey:@"captcha"];
    [dict setObject:@"1" forKey:@"is_ajax"];
    [dict setObject:@"register" forKey:@"do"];
    [dict setObject:@"ios" forKey:@"client"];
    [dict setObject:@"" forKey:@"referer_param"];
    __weak typeof(self)weakSelf = self;
    if([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest){
        [[WKAssignTurnkeyLcReusableView shared]hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkRegisterUrl withRequsetName:@"使用验证码登录" withParameters:dict withCallBack:^(id  _Nullable dic) {
            id resultDict = dic;
            if (resultDict&&[resultDict isKindOfClass:[NSDictionary class]]){
                if([resultDict isKindOfClass:[NSDictionary class]]
                   &&[resultDict objectForKey:@"status"]
                   &&[[resultDict objectForKey:@"status"]intValue]>=0){
                    [weakSelf hx_LoginSuccessfulData:resultDict];
                    //获取时间戳
                    NSString *timeURL = [[WKStrongTakeBwEAGLLayer sharedHelper]timestampURL];
                    [[WKAssignTurnkeyLcReusableView shared]hx_requestGet:timeURL withParameters:nil withCallBack:^(id  _Nullable dic) {
                        if(dic&&[dic isKindOfClass:[NSString class]]){
                            NSString *time = (NSString *)dic;
                            NSString* passWord = [NSString stringWithFormat:@"%@|%@",[WKStrongTakeBwEAGLLayer sharedHelper].deviceImei, time];
                            passWord = [WKSubsequentNecessarilyVeResource AES128Encrypt:passWord andSecretKey:@"3b5368ed95c8d1df"];
                            [WKStrongTakeBwEAGLLayer sharedHelper].passWord = passWord;
                            callback(@{@"mobile":mobile,@"password":passWord});
                        }
                        else{
                            callback(@{@"error":@"获取时间戳失败"});
                        }
                    }];
                }
                else{
                    callback(@{@"error":@"登录异常"});
                }
            }
            else{
                callback(@{@"error":@"验证码返回解析失败"});
            }
        }];
    }
    else{
        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"使用验证码登录" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
            if(!error){
                if (resultDict&&[resultDict isKindOfClass:[NSDictionary class]]){
                    if([resultDict isKindOfClass:[NSDictionary class]]
                       &&[resultDict objectForKey:@"status"]
                       &&[[resultDict objectForKey:@"status"]intValue]>=0){
                        [weakSelf hx_LoginSuccessfulData:resultDict];
                        //获取时间戳
                        NSString *timeURL = [[WKStrongTakeBwEAGLLayer sharedHelper]timestampURL];
                        [[WKAssignTurnkeyLcReusableView shared]hx_requestGet:timeURL withParameters:nil withCallBack:^(id  _Nullable dic) {
                            if(dic&&[dic isKindOfClass:[NSString class]]){
                                NSString *time = (NSString *)dic;
                                NSString* passWord = [NSString stringWithFormat:@"%@|%@",[WKStrongTakeBwEAGLLayer sharedHelper].deviceImei, time];
                                passWord = [WKSubsequentNecessarilyVeResource AES128Encrypt:passWord andSecretKey:@"3b5368ed95c8d1df"];
                                [WKStrongTakeBwEAGLLayer sharedHelper].passWord = passWord;
                                callback(@{@"mobile":mobile,@"password":passWord});
                            }
                            else{
                                callback(@{@"error":@"获取时间戳失败"});
                            }
                        }];
                    }
                    else{
                        callback(@{@"error":@"登录异常"});
                    }
                }
                else{
                    callback(@{@"error":@"验证码返回解析失败"});
                }
            }
            else{
                if(callback){
                    callback(@{@"error":error.localizedDescription});
                }
            }
        }];
    }
    

    NSString *qklv = @"qklv_str";
    qklv = nil;
}
-(void)hx_changePassWord:(NSString *)password withOldPassWord:(NSString *)oldpassWord withCallBack:(requestcallBack)callback{
    NSMutableDictionary * dict = [[NSMutableDictionary alloc]init];
    [dict setObject:@"pwd_up" forKey:@"do"];
    [dict setObject:password forKey:@"password1"];
    [dict setObject:password forKey:@"password"];
    [dict setObject:oldpassWord forKey:@"password_old"];
    [dict setObject:@"1" forKey:@"return_json"];
    [dict setObject:@"" forKey:@"session_id"];
    [dict setObject:[WKStrongTakeBwEAGLLayer sharedHelper].deviceImei forKey:@"device_imei"];
    [dict setObject:@"" forKey:@"referer_param"];
    if([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest){
        [[WKAssignTurnkeyLcReusableView shared]hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkUsersDoUrl withRequsetName:@"修改密码" withParameters:dict withCallBack:^(id  _Nullable dic) {
            if(callback){
                callback(dic);
            }
        }];
    }
    else{
        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"修改密码" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
            if(!error){
               if(callback){
                    callback(resultDict);
                }
            }
            else{
                 if(callback){
                    callback(@{@"error":error.localizedDescription});
                }
            }
        }];
    }

    NSString *osvg = @"osvg_str";
    osvg = nil;
}
-(void)hx_bindPhoneWithNumber:(NSString *)phoneNumber withVCode:(NSString *)vcode withCallBack:(requestcallBack)callback{
    NSMutableDictionary * dict = [[NSMutableDictionary alloc]init];
    [dict setObject:@"bind_cellphone" forKey:@"do"];
    [dict setObject:@"2" forKey:@"step"];
    [dict setObject:phoneNumber forKey:@"cellphone"];
    [dict setObject:vcode forKey:@"captcha"];
    [dict setObject:@"1" forKey:@"return_json"];
    [dict setObject:@"" forKey:@"referer_param"];
    if([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest){
        [[WKAssignTurnkeyLcReusableView shared]hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkUsersDoUrl  withRequsetName:@"绑定手机"  withParameters:dict withCallBack:^(id  _Nullable dic) {
            if(callback){
                callback(dic);
            }
        }];
    }
    else{
        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"绑定手机" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
            if(!error){
               if(callback){
                    callback(resultDict);
                }
            }
            else{
                 if(callback){
                    callback(@{@"error":error.localizedDescription});
                }
            }
        }];
    }

    NSString *qlyf = @"qlyf_str";
    qlyf = nil;
}
-(void)hx_bindEmaile:(NSString *)email  withCallBack:(requestcallBack)callback{
    NSMutableDictionary * dict = [[NSMutableDictionary alloc]init];
    [dict setObject:@"userinfo_up" forKey:@"do"];
    [dict setObject:email forKey:@"email"];
    [dict setObject:@"1" forKey:@"return_json"];
    [dict setObject:@"" forKey:@"referer_param"];
    if([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest){
        [[WKAssignTurnkeyLcReusableView shared]hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkUsersDoUrl withRequsetName:@"绑定邮箱"  withParameters:dict withCallBack:^(id  _Nullable dic) {
            if(callback){
                callback(dic);
            }
        }];
    }
    else{
        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"绑定邮箱" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
            if(!error){
                if(callback){
                    callback(resultDict);
                }
            }
            else{
                if(callback){
                    callback(@{@"error":error.localizedDescription});
                }
            }
        }];
    }

    NSString *kfby = @"kfby_str";
    kfby = nil;
}
-(void)hx_fuckAppleStore:(NSString *)value1 withvalue2:(NSString *)value2 with:(NSString *)value3{
    NSMutableDictionary * parames = [[NSMutableDictionary alloc]init];
    [parames setObject:[WKStrongTakeBwEAGLLayer sharedHelper].gameID forKey:@"gid"];
    [parames setObject:[WKStrongTakeBwEAGLLayer sharedHelper].account forKey:@"username"];
    [parames setObject:[NSString stringWithFormat:@"%@",value1] forKey:@"amount"];
    [parames setObject:value2 forKey:@"extra_info"];
    [parames setObject:[WKStrongTakeBwEAGLLayer sharedHelper].deviceImei forKey:@"uni"];
    [parames setObject:[WKStrongTakeBwEAGLLayer sharedHelper].referer_param forKey:@"referer_param"];
    [parames setObject:value3 forKey:@"product"];
    if([WKStrongTakeBwEAGLLayer sharedHelper].server){
        [parames setObject:[WKStrongTakeBwEAGLLayer sharedHelper].server forKey:@"_sid"];

    NSString *wraq = @"wraq_str";
    wraq = nil;
    }
    NSMutableString * bodyString = [[NSMutableString alloc]init];
    NSArray * dictKeyArray = [parames allKeys];
    for (int i = 0; i<[dictKeyArray count]; i++){
        NSString * key = [dictKeyArray objectAtIndex:i];
        NSString * va = [parames objectForKey:key];
        [bodyString appendString:key];
        [bodyString appendString:@"="];
        [bodyString appendString:va];
        if (i != dictKeyArray.count - 1){
            [bodyString appendString:@"&"];
        }
    }
    NSString *urlString = [NSString stringWithFormat:@"%@?%@",[[WKStrongTakeBwEAGLLayer sharedHelper]zfURL],bodyString];
    urlString = [urlString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURL *url=[NSURL URLWithString:urlString];
    NSMutableURLRequest * zfRequest = [[NSMutableURLRequest alloc]initWithURL:url];
    WKLowestInternalMpTableViewController *webViewController = [[WKLowestInternalMpTableViewController alloc]init];
    webViewController.zfRequest = zfRequest;
    UINavigationController *navigation = [[UINavigationController alloc]initWithRootViewController:webViewController];
    id<UIApplicationDelegate> delegate = [[UIApplication sharedApplication] delegate];
    UIWindow *window;
    if ([delegate respondsToSelector:@selector(window)]){
        window = [delegate window];
    }
    if (!window){
        window = [[UIApplication sharedApplication] keyWindow];
    }
    [window.rootViewController presentViewController:navigation animated:YES completion:nil];

    NSString *icfo = @"icfo_str";
    icfo = nil;
}
-(void)hx_iapWithProductID:(NSString *)productid withAmount:(NSString *)amount withExtraInfo:(NSString *)extrainfo withProductName:(NSString *)productname withCallBack:(requestcallBack)callback{
    [WKStrongTakeBwEAGLLayer sharedHelper].extrainStrlogo = [[NSMutableString alloc]initWithFormat:@":传入%@",extrainfo];
    if([WKStrongTakeBwEAGLLayer sharedHelper].iapFinish){
        return;
    }
    id<UIApplicationDelegate> delegate = [[UIApplication sharedApplication] delegate];
    UIWindow* window;
    if ([delegate respondsToSelector:@selector(window)]){
        window = [delegate window];
    }
    if (!window){
        window = [[UIApplication sharedApplication] keyWindow];
    }
    __weak typeof(self)weakSelf = self;
    [self hx_neigouSwitch:^(id  _Nullable dic) {
        if(dic){
            if(callback){
                callback(dic);
            }
            [weakSelf hx_fuckAppleStore:amount withvalue2:extrainfo with:productname];
        }
        else{
            //走内购支付。
            [[WKSensitivityImportanceGrElementQuery sharedIAPManager]hx_getProductsForIds:@[productid] completion:^(NSArray *products) {
                BOOL hasProducts = [products count] != 0;
                if(!hasProducts){
                    if(callback){
                        callback(@{@"error":@"未找到对应商品"});
                    }
                }
                else{
                    SKProduct *product = products[0];
                    if (product){
                        [[WKSensitivityImportanceGrElementQuery sharedIAPManager]hx_purchaseProduct:product ExtraStr:extrainfo completion:^(SKPaymentTransaction *transaction) {
                            NSMutableDictionary *dict = [[WKStrongTakeBwEAGLLayer sharedHelper] zfDict:product withSKzfmentTransaction:transaction];
                            [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"内购" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
                                if(!error){
                                    if(callback){
                                        callback(resultDict);
                                    }
                                }
                                else{
                                    if(callback){
                                        callback(@{@"error":error.localizedDescription});
                                    }
                                }
                            }];
                        } error:^(NSError *error) {
                            if(callback){
                                callback(@{@"error":error.localizedDescription});
                            }
                        }];
                    }
                }
            } error:^(NSError *error) {
                if(callback){
                    callback(@{@"error":error.localizedDescription});
                }
            }];
        }
    }];

    NSString *hudr = @"hudr_str";
    hudr = nil;
}
//内购开关
-(void)hx_neigouSwitch:(requestcallBack)callback{
    [WKStrongTakeBwEAGLLayer sharedHelper].iapFinish = YES;
    NSMutableDictionary * dict = [[NSMutableDictionary alloc] init];
    [dict setObject:@"filter_data" forKey:@"do"];
    [dict setObject:@"stat" forKey:@"postfix"];
    [dict setObject:@"game" forKey:@"page"];
    [dict setObject:@"游戏统计H" forKey:@"name"];
    __weak typeof(self)weakSelf = self;
    if([WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest){
        [dict setObject:[WKStrongTakeBwEAGLLayer sharedHelper].gameID forKey:@"map[title]"];
        [[WKAssignTurnkeyLcReusableView shared]hx_requestPost:[WKStrongTakeBwEAGLLayer sharedHelper].sdkUrl withRequsetName:@"cz"  withParameters:dict withCallBack:^(id  _Nullable dic) {
            id resultDict = dic;
            [WKStrongTakeBwEAGLLayer sharedHelper].iapFinish = NO;
            if(resultDict){
                NSMutableArray *array = (NSMutableArray *)resultDict;
                if([array isKindOfClass:[NSArray class]]&&array.count >0){
                    NSMutableDictionary *dict = [array objectAtIndex:0];
                    BOOL status = [[dict objectForKey:@"ext1"] isEqualToString:@"click"];
                    NSString *ext2str = [dict objectForKey:@"ext2"];
                    float ext6 = [[dict objectForKey:@"ext6"] floatValue];
                    int money = [ext2str intValue];
                    if (status&&[WKStrongTakeBwEAGLLayer sharedHelper].userMoney-money>=0&&[weakSelf datePwithTime:ext6]){
                        if(callback){
                            callback(dic);
                        }
                    }
                    else{
                        if(callback){
                            callback(nil);
                        }
                    }
                }
                else{
                    if(callback){
                        callback(nil);
                    }                }
            }
            else{
                if(callback){
                    callback(nil);
                }
            }
        }];
    }
    else{
        [dict setObject:@{@"title":[WKStrongTakeBwEAGLLayer sharedHelper].gameID} forKey:@"map"];
        [WKAssignTurnkeyLcReusableView hx_MJPOSTRequestWithURL:SDKHOST withRequestName:@"cz" withParamers:dict response:^(NSError *error, id  _Nullable resultDict) {
            [WKStrongTakeBwEAGLLayer sharedHelper].iapFinish = NO;
            if(!error){
                NSMutableArray *array = (NSMutableArray *)resultDict;
                if([array isKindOfClass:[NSArray class]]&&array.count >0){
                    NSMutableDictionary *dict = [array objectAtIndex:0];
                    BOOL status = [[dict objectForKey:@"ext1"] isEqualToString:@"click"];
                    NSString *ext2str = [dict objectForKey:@"ext2"];
                    float ext6 = [[dict objectForKey:@"ext6"] floatValue];
                    int money = [ext2str intValue];
                    if (status&&[WKStrongTakeBwEAGLLayer sharedHelper].userMoney-money>=0&&[weakSelf datePwithTime:ext6]){
                        callback(dict);
                    }
                    else{
                        callback(nil);
                    }
                }
                else{
                    callback(nil);
                }
            }
            else{
                if(callback){
                    callback(nil);
                }
            }
        }];
    }

    NSString *gwoq = @"gwoq_str";
    gwoq = nil;
}
-(BOOL)datePwithTime:(float)time{
    NSDateFormatter *df1 = [[NSDateFormatter alloc] init];
    [df1 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *nowTime = [NSDate new];
    NSDate *regisTime = [df1 dateFromString:[WKStrongTakeBwEAGLLayer sharedHelper].regisDate];
    NSDate *vardate = [NSDate dateWithTimeInterval:time sinceDate:regisTime];
    if([vardate isEqualToDate:[vardate earlierDate:nowTime]]){
        return YES;
    }
    return NO;
}

//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self basisWithName:@"basis"];
        });
    }
    return self;
}
//---init_e---

-(void)basisWithName:(NSString *)basis{
    NSArray *att = [NSArray arrayWithObjects:basis, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger basisIndex = [self getbasisNumber];
    [str appendString:att[basisIndex]];
    [self basiscommandWithbasis:@[@"basissye",
                                @"basisprogarm",
                                @"basis"] withDbasisInfo:@{@"kebasisy":@"vabasislue"}];
}
-(NSInteger)getbasisNumber{
    NSArray *att = @[@"basis"];
    return [att count]-1;
}

-(void)basiscommandWithbasis:(NSArray *)att withDbasisInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"basis"];
    data = nil;
    UILabel *label =  [self getbasisLabelWithText:@"fucsbasis" withbasisTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getbasisLabelWithText:(NSString *)text withbasisTitleColor:(UIColor *)color{
    UILabel *basisLabel = [UILabel new];
    basisLabel.text = text;
    basisLabel.textColor = color;
    return basisLabel;
}
-(UITableView *)initbasisTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *basisHeaderView = [UIView new];
    basisHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:basisHeaderView];
    UIView *basisFootView = [UIView new];
    basisFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:basisFootView];
    return tableView;
}
-(void)initpurposeContent{
    NSString *purposekey = [self getpurposeDataSource:@"purpose"];
    NSMutableDictionary *purposedic = [[NSMutableDictionary alloc]init];
    [purposedic setObject:@[@"purposeop",@"ppurposeibasispi",@"uio_basis"] forKey:purposekey];
    NSArray *attpurposeary = @[purposedic];
    attpurposeary = nil;

    UIView *view = [self getshowpurposeView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getpurposeSlider];
    slider = nil;

}
-(NSString *)getpurposeDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"purpose%@_basis",str];
}

-(UIView *)getshowpurposeView{
    UIView *showpurposeView = [[UIView alloc]init];
    showpurposeView.backgroundColor = [UIColor yellowColor];
    showpurposeView.alpha = 0.5;
    return showpurposeView;
}
-(UISlider *)getpurposeSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end

