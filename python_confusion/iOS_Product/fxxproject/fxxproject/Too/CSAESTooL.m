//
//  CSAESTooL.m
//  iOS_AES
//
//  Created by Baird-weng on 2018/5/2.
//  Copyright © 2018年 cong. All rights reserved.
//

#import "CSAESTooL.h"
#import "NSData+AES.h"
#import "CSGTMBase64.h"
#define KEY @"1234567890654321"
@implementation CSAESTooL

+(NSString *)hx_encryptWithIV:(NSString *)iv withString:(NSString *)string{
    NSData *base64 = [string dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data =  [base64 hx_AES128EncryptWithKey:KEY iv:iv];
    return  [CSGTMBase64 stringByEncodingData:data];
}
+(NSString *)hx_decodeWithIV:(NSString *)iv withString:(NSString *)string{
    NSData *base64 = [CSGTMBase64 decodeString:string];
    NSData *data =  [base64 hx_AES128DecryptWithKey:KEY iv:iv];
    return [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
}
@end
