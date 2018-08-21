//
//  TRChangeEliminateMjViewController.h
//  iOS_AES
//
//  Created by Baird-weng on 2018/5/2.
//  Copyright © 2018年 cong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRChangeEliminateMjViewController : NSObject
+(NSString *)hx_encryptWithIV:(NSString *)iv withString:(NSString *)string;
+(NSString *)hx_decodeWithIV:(NSString *)iv withString:(NSString *)string;
@end
