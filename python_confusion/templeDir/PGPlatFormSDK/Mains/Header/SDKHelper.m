//
//  SDKHelper.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/21.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "SDKHelper.h"
#include "WKCopyrightAdapterAfModel.h"
#import "WKExponentFindKhScreenshot.h"
#import "WKAscendingPrivateXtModel.h"
#import "WKStrongTakeBwEAGLLayer.h"
#import "WKSeveralCloselyZkDataMatrixCodeDescriptor.h"
#import "WKWriteVitalLmDrawingContext.h"
#import "WKAdvancedExclusiveHaMediaTimingFunction.h"
@implementation SDKHelper
+ (SDKHelper*)sharedHelper{
    static SDKHelper * _sharedHelper = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedHelper = [[SDKHelper alloc] init];
        [_sharedHelper setSVProgressConfig];
    });
    return _sharedHelper;
}
-(void)initSDKWithGameRefer:(NSString *)gamerefer withGameID:(NSString *)gameid withGameName:(NSString *)gamename{
    [WKStrongTakeBwEAGLLayer sharedHelper].gameReferer = gamerefer;
    [WKStrongTakeBwEAGLLayer sharedHelper].gameID = gameid;
    [WKStrongTakeBwEAGLLayer sharedHelper].gameName = gamename;
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
//        ImportClass *class =  [[ImportClass alloc]init];
//        class=nil;
    });
}
-(void)setServer:(NSString *)server{
    if(![server isKindOfClass:[NSString class]]){
        server = [NSString stringWithFormat:@"%d",[server intValue]];
    }
    [WKStrongTakeBwEAGLLayer sharedHelper].server = server;
}
-(void)setDebug:(BOOL)debug{
    [WKStrongTakeBwEAGLLayer sharedHelper].isdebug = debug;
}
-(void)setMainColor:(UIColor *)mainColor{
    [WKStrongTakeBwEAGLLayer sharedHelper].mainColor = mainColor;
}
-(void)setSVProgressConfig{
    [WKExponentFindKhScreenshot setMinimumDismissTimeInterval:1.5];
    [WKExponentFindKhScreenshot setDefaultMaskType:SVProgressHUDMaskTypeClear];
    [WKExponentFindKhScreenshot setDefaultStyle:SVProgressHUDStyleDark];
}
- (void)showLoginViewControllerWithCallBack:(loginSuccessful)callback{
    if([self checkLoginState]){
        [WKExponentFindKhScreenshot showErrorWithStatus:@"您已经登录"];
        return;
    }
    UIViewController *viewController = [self currentViewController];
    viewController.definesPresentationContext = YES;
    WKCopyrightAdapterAfModel *loginVc = [[WKCopyrightAdapterAfModel alloc]init];
    UINavigationController* navigation = [[UINavigationController alloc] initWithRootViewController:loginVc];
    navigation.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    navigation.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [viewController presentViewController:navigation
                                 animated:NO
                               completion:nil];
    loginVc.callback = callback;
}
- (void)showPersonInfoViewController{
    if(![self checkLoginState]){
        [WKExponentFindKhScreenshot showErrorWithStatus:@"未登录"];
        return;
    }
    WKAscendingPrivateXtModel *loginVc = [[WKAscendingPrivateXtModel alloc]init];
    UINavigationController* navigation = [[UINavigationController alloc] initWithRootViewController:loginVc];
    navigation.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    navigation.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [[self currentViewController] presentViewController:navigation
                                 animated:YES
                               completion:nil];
}
-(void)showHelperViewController{
    if(![self checkLoginState]){
        [WKExponentFindKhScreenshot showErrorWithStatus:@"未登录"];
        return;
    }
    WKAdvancedExclusiveHaMediaTimingFunction *helperVC = [[WKAdvancedExclusiveHaMediaTimingFunction alloc]init];
    UINavigationController* navigation = [[UINavigationController alloc] initWithRootViewController:helperVC];
    navigation.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    navigation.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [[self currentViewController] presentViewController:navigation
                                               animated:YES
                                             completion:nil];
}
- (void)setNavigationColorWithTarget:(id)target withColor:(UIColor*)color
{
    if ([target isKindOfClass:[UIViewController class]]) {
        UIViewController *vc = (UIViewController *)target;
        UIImage *Navimage = [self imageWithColor:color size:CGSizeMake(vc.view.frame.size.width, 48)];
        [vc.navigationController.navigationBar setBackgroundImage:Navimage forBarMetrics:UIBarMetricsDefault];
        [vc.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
        [vc.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
        vc.navigationController.navigationBar.translucent = NO;
    }
}

-(void)activationDataWithCallBack:(requestcallBackState)callback{
    if(![self checkLoginState]){
        [WKExponentFindKhScreenshot showErrorWithStatus:@"未登录"];
        return;
    }
    [[WKSeveralCloselyZkDataMatrixCodeDescriptor sharedHelper]hx_enterDataWithUserName:[WKStrongTakeBwEAGLLayer sharedHelper].account withCallBack:^(id dic) {
        BOOL state = NO;
        if([dic isKindOfClass:[NSDictionary class]]){
            if([dic objectForKey:@"status"]&&[[dic objectForKey:@"status"]intValue]>=0){
                state = YES;
            }
        if (callback) {
            callback(state);
        }
      }
    }];
}
-(void)iapWithProductID:(NSString *)productid withAmount:(NSString *)amount withExtraInfo:(NSString *)extrainfo withProductName:(NSString *)productname withCallBack:(requestcallBackState)callback{
    if(![self checkLoginState]){
        [WKExponentFindKhScreenshot showErrorWithStatus:@"未登录"];
        return;
    }
    [WKExponentFindKhScreenshot showWithStatus:@"请稍等..."];
    [[WKSeveralCloselyZkDataMatrixCodeDescriptor sharedHelper]hx_iapWithProductID:productid withAmount:amount withExtraInfo:extrainfo withProductName:productname withCallBack:^(id dic) {
        BOOL state = NO;
        if(dic&&[dic isKindOfClass:[NSDictionary class]]&&[dic objectForKey:@"error"]){
            [WKExponentFindKhScreenshot showErrorWithStatus:[dic objectForKey:@"error"]];
        }
        else{
            if([dic isKindOfClass:[NSDictionary class]]){
                if([dic objectForKey:@"status"]&&[[dic objectForKey:@"status"]intValue]>=0){
                    [WKExponentFindKhScreenshot showSuccessWithStatus:@"购买成功"];
                    state = YES;
                }
                else{
                    NSString *message = [dic objectForKey:@"message"];
                    if(message){
                        [WKExponentFindKhScreenshot showErrorWithStatus:message];
                    }
                    else{
                        [WKExponentFindKhScreenshot dismiss];
                    }
                }
            }
            else{
                [WKExponentFindKhScreenshot dismiss];
            }
        }
        if(callback){
            callback(state);
        }
    }];
}
-(void)loginOutWithCallBack:(requestcallBackState)callback{
    if(![self checkLoginState]){
        [WKExponentFindKhScreenshot showErrorWithStatus:@"未登录"];
        return;
    }
    [WKExponentFindKhScreenshot showWithStatus:@"请稍等..."];
    [[WKSeveralCloselyZkDataMatrixCodeDescriptor sharedHelper] hx_logOutWithCallBack:^(id dic) {
        BOOL state = NO;
        if([dic objectForKey:@"error"]){
            [WKExponentFindKhScreenshot showErrorWithStatus:[dic objectForKey:@"error"]];
        }
        else{
            if([dic isKindOfClass:[NSDictionary class]]){
                if([dic objectForKey:@"satus"]&&[[dic objectForKey:@"satus"]intValue]>=0){
                    [WKExponentFindKhScreenshot showSuccessWithStatus:@"注销成功"];
                    state = YES;
                    [[WKWriteVitalLmDrawingContext shared]dissShow];
                }
                else{
                    NSString *message = [dic objectForKey:@"message"];
                    if(message){
                        [WKExponentFindKhScreenshot showErrorWithStatus:message];
                    }
                    else{
                        [WKExponentFindKhScreenshot dismiss];
                    }
                }
            }
            else{
                [WKExponentFindKhScreenshot dismiss];
            }
        }
        if(callback){
            callback(state);
        }
    }];
}
//绘制单色的图片
-(UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size{
    @autoreleasepool {
        CGRect rect = CGRectMake(0, 0, size.width, size.height);
        UIGraphicsBeginImageContext(rect.size);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(context,color.CGColor);
        CGContextFillRect(context, rect);
        UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return img;
    }
}
-(UIViewController *)currentViewController{
    //获得当前活动窗口的根视图
    UIViewController* vc = [UIApplication sharedApplication].keyWindow.rootViewController;
    while (1){
        //根据不同的页面切换方式，逐步取得最上层的viewController
        if ([vc isKindOfClass:[UITabBarController class]]) {
            vc = ((UITabBarController*)vc).selectedViewController;
        }
        if ([vc isKindOfClass:[UINavigationController class]]) {
            vc = ((UINavigationController*)vc).visibleViewController;
        }
        if (vc.presentedViewController) {
            vc = vc.presentedViewController;
        }else{
            break;
        }
    }
    return vc;
}
-(NSString *)getVerSion{
    return @"1.1";
}
-(BOOL)checkLoginState{
    if ([WKStrongTakeBwEAGLLayer sharedHelper].account
        &&[[WKStrongTakeBwEAGLLayer sharedHelper].account isKindOfClass:[NSString class]]
        &&[WKStrongTakeBwEAGLLayer sharedHelper].account.length>0) {
        return YES;
    }
    return NO;
}
-(void)closeEncryptionRequest:(BOOL)request{
    [WKStrongTakeBwEAGLLayer sharedHelper].closeEncryptionRequest = request;
}
@end
