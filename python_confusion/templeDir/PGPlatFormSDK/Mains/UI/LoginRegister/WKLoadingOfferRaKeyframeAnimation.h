//
//  WKLoadingOfferRaKeyframeAnimation.h
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/21.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^regisVCCallBack)(NSString *account,NSString *passWord);

@interface WKLoadingOfferRaKeyframeAnimation : UIViewController
@property(nonatomic,strong)regisVCCallBack callBack;
@end
