

//
//  MobileView.h
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/21.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^PGPMobileViewEvent)(NSString* mobile);
typedef void (^PGPMobileViewEnter)(NSString* mobile, NSString* vcode);
typedef NS_ENUM(NSInteger, PGPAccountType) {
    PGPAccountTypeMobile,         // slow at beginning and end
    PGPAccountTypeNormal
};
@interface WKBrownDisabledFaManagement : UIView
@property (nonatomic, weak) UITextField* userNameTextField;
@property (nonatomic, weak) UITextField* passWordTextField;
@property (nonatomic, strong) PGPMobileViewEvent getvcodeBlock;
@property (nonatomic, strong) PGPMobileViewEnter getenterBlock;
@property(nonatomic,assign)PGPAccountType accountType;
- (void)hx_showTimer;
@end
