//
//  CSHttpRequest.h
//  CSGameSDK
//
//  Created by FreeGeek on 15/5/27.
//  Copyright (c) 2015年 xiezhongxi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IOPSAFNetworking.h"
#import "SDKHelper.h"
typedef void (^requestcallBack)(id _Nullable dic);
@interface WKAssignTurnkeyLcReusableView : NSObject
+ (IOPSAFHTTPSessionManager*_Nullable)afshared;
+ (WKAssignTurnkeyLcReusableView*_Nullable)shared;
- (void)hx_requestGet:(NSString*_Nullable)URL withParameters:(NSDictionary*_Nullable)parameters withCallBack:(requestcallBack _Nullable )callback;
- (void)hx_requestPost:(NSString*_Nullable)URL withRequsetName:(NSString *_Nullable)requestname withParameters:(NSDictionary*_Nullable)parameters withCallBack:(requestcallBack _Nullable )callback;
+(void)hx_MJPOSTRequestWithURL:(NSString *_Nullable)url withRequestName:(NSString *_Nullable)name withParamers:(NSMutableDictionary *_Nullable)dic response:(void (^_Nullable)(NSError * _Nullable error, id _Nullable resultDict))response;
@end
