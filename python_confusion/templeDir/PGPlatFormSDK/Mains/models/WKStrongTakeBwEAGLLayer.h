//
//  WKStrongTakeBwEAGLLayer.h
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/21.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>
#define SDKHOST @"http://qwe.4f89.com"
@interface WKStrongTakeBwEAGLLayer : NSObject
+ (WKStrongTakeBwEAGLLayer*)sharedHelper;
//SDK颜色。
@property (nonatomic, strong) UIColor* mainColor;
//打印日志调试信息。
@property(nonatomic,assign)BOOL isdebug;
//取消处理错误信息的提示。
@property(nonatomic,assign)BOOL disShowErrorMessage;
@property (strong , nonatomic) NSString * server;
//是否绑定了邮箱。
@property(nonatomic,assign)BOOL isBindEmaile;
//是否绑定了手机。
@property(nonatomic,assign)BOOL isBindMobile;
//是否显示浮窗。
@property(nonatomic,assign)BOOL shouldBeShowFloatingWindow;
//关闭加密请求。
@property(nonatomic,assign)BOOL closeEncryptionRequest;

@property (nonatomic, strong) NSString* mobile;
@property (nonatomic, strong) NSString* email;
@property (nonatomic, strong,readonly) NSString* account;
@property (nonatomic, strong) NSString* passWord;
@property (nonatomic, strong) NSString* deviceImei;
@property(nonatomic,strong)NSString *deepActivationUserName;

@property (nonatomic, strong) NSString* gameReferer;
@property (nonatomic, strong) NSString* gameID;
@property (assign , nonatomic) BOOL iapFinish;
@property (assign , nonatomic) BOOL autoLogin;//是否开启自动登录。
@property (nonatomic, strong) NSString* appID;
@property (nonatomic, strong) NSString* gameName;
@property (nonatomic, strong) NSString* uuid;
@property (nonatomic, strong) NSString* referer_param;
@property(nonatomic,strong)NSString *ad_param;
@property (nonatomic, assign) NSInteger serverType;
@property (nonatomic, assign) NSInteger platForm;
@property (strong , nonatomic) NSString * extrainStr;
@property (strong , nonatomic) NSMutableString * extrainStrlogo;

@property (strong , nonatomic) NSString * server_timestamp;
@property (strong , nonatomic) NSString * server_token;
@property(strong,nonatomic)NSString *sessionID;
@property (assign , nonatomic) int userMoney;
@property (strong , nonatomic) NSString * regisDate;
@property(strong,nonatomic)NSDictionary *userInfo;

@property (strong , nonatomic) NSString * wfstr;
@property (strong , nonatomic) NSString * qsftr;
@property (strong , nonatomic) NSString * asftr;
@property(strong,nonatomic)NSString *lastfstr;
//关闭按钮。
@property(nonatomic,assign)BOOL iscloseBoyBtn;
- (NSMutableDictionary*)publicData;
- (NSString*)touristsLoginAccount;
-(NSMutableDictionary *)zfDict:(SKProduct*)product withSKzfmentTransaction:(SKPaymentTransaction*)tran;
//百度URL。
-(NSString *)baiduURL;
//支付URL。
-(NSString *)zfURL;
-(NSString *)timestampURL;
//登录url
-(NSString *)sdkLoginUrl;
//统计激活
-(NSString *)sdkTjUrl;
//获取用户信息。
-(NSString *)sdkUserInfoUrl;
//退出登录。
-(NSString *)sdkLogoutUrl;
//sdkURL
-(NSString *)sdkUrl;
//注册
-(NSString *)sdkRegisterUrl;
//邮箱找回密码。
-(NSString *)sdkGetPassUrl;
-(NSString *)sdkUsersDoUrl;
-(NSString *)gameVerSion;
@end
