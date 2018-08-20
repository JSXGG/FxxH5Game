//
//  WKDepartmentTapeJdResource.h
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/22.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^getCallBack)(id ret);
@interface WKDepartmentTapeJdResource : UIViewController
@property(nonatomic,strong)getCallBack callBack;
@end

