//
//  SDKHelper.h
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/21.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#define PGPNOTIFICATIONLOGOUTSUCESS @"pgpnotificationlogoutsucess"
typedef void (^requestcallBack)(id dic);
typedef void (^requestcallBackState)(BOOL state);
typedef void (^loginSuccessful)(NSString *userName,NSString *sessionID,NSString *token,NSString *timestamp);
@interface SDKHelper : NSObject
+ (SDKHelper*)sharedHelper;
-(void)initSDKWithGameRefer:(NSString *)gamerefer withGameID:(NSString *)gameid withGameName:(NSString *)gamename;
-(void)setDebug:(BOOL)debug;
-(void)activationDataWithCallBack:(requestcallBackState)callback;
-(void)showLoginViewControllerWithCallBack:(loginSuccessful)callback;
-(void)setNavigationColorWithTarget:(id)target withColor:(UIColor*)color;
-(void)showPersonInfoViewController;
-(void)showHelperViewController;
-(void)iapWithProductID:(NSString *)productid withAmount:(NSString *)amount withExtraInfo:(NSString *)extrainfo withProductName:(NSString *)productname withCallBack:(requestcallBackState)callback;
-(void)setServer:(NSString *)server;
-(void)loginOutWithCallBack:(requestcallBackState)callback;
-(void)setMainColor:(UIColor *)mainColor;
-(void)closeEncryptionRequest:(BOOL)request;
-(UIViewController *)currentViewController;
-(NSString *)getVerSion;
@end
