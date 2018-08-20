//
//  WKUnderlineCpuGrReusableView.h
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/21.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^PGPEmailViewEnter)(NSString* mobile, NSString* email);

@interface WKUnderlineCpuGrReusableView : UIView
@property (nonatomic, weak) UITextField* userNameTextField;
@property (nonatomic, weak) UITextField* passWordTextField;
@property (nonatomic, strong) PGPEmailViewEnter getenterBlock;
@end
