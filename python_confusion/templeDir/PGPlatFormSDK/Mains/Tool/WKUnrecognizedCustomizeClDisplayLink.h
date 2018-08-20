//
//  WKUnrecognizedCustomizeClDisplayLink.h
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/23.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import <Foundation/Foundation.h>
#define PGPSDKACCOUNTKEY @"pgpsdkaccountkey"
#define PGPSDKQUICKLOGINKEY @"pgpsdkquickloginkey"

@interface WKUnrecognizedCustomizeClDisplayLink : NSObject
+ (BOOL)hx_setUserName:(NSString*)userName withPassWord:(NSString*)password withServiceName:(NSString*)servicename;
+ (NSString*)hx_passwordForService:(NSString*)serviceName account:(NSString*)account;
+ (NSArray*)hx_allAccounts;
+ (NSArray*)hx_accountsForService:(NSString*)serviceName;
+ (NSArray*)hx_passwordForService:(NSString*)serviceName;
+ (BOOL)hx_deleteAccount:(NSString*)account forService:(NSString*)serviceName;
@end
