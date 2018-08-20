//
//  UIImageNameManage.h
//  GXNBSDK
//
//  Created by Baird-weng on 2018/6/13.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WKSumWarningUlEmitterCell : NSObject
+ (WKSumWarningUlEmitterCell*)shared;
-(UIImage *)hx_getImageWithImageName:(NSString *)imageName;
-(NSString *)getImageName:(NSString *)imageName;
@end
