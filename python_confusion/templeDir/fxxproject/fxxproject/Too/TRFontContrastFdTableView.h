//
//  LTHTTPManager.h
//  AboutAndShare
//
//  Created by admin on 16/4/10.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "AFNetworking.h"
@interface TRFontContrastFdTableView : AFHTTPSessionManager

+ (instancetype)sharedManager;


+ (instancetype)sharedPostManager;

@end
