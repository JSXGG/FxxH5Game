//
//  WKConjunctionEffortZjDataMatrixCodeDescriptor.h
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/21.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import <UIKit/UIKit.h>

//typedef void(^regisVCCallBack)(id dic);
typedef void(^mobileRegisVCCallBack)(id dic);

@interface WKConjunctionEffortZjDataMatrixCodeDescriptor : UIViewController
@property(nonatomic,strong)mobileRegisVCCallBack callBack;
@end
