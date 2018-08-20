//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  CSHttpRequest.m
//  CSGameSDK
//
//  Created by FreeGeek on 15/5/27.
//  Copyright (c) 2015年 xiezhongxi. All rights reserved.
//

#import "WKAssignTurnkeyLcReusableView.h"
#import "IOPSAFNetworking.h"
#import "WKExponentFindKhScreenshot.h"
#import "WKGreenToneEhAnimation.h"
#import "WKStrongTakeBwEAGLLayer.h"
@implementation WKAssignTurnkeyLcReusableView

+ (IOPSAFHTTPSessionManager*)afshared
{
    static IOPSAFHTTPSessionManager * manager;
    static dispatch_once_t pred;
    dispatch_once(&pred, ^{
        manager = [IOPSAFHTTPSessionManager manager];
        manager.requestSerializer.timeoutInterval = 15.0;   //网络超时时间
        manager.requestSerializer = [AFHTTPRequestSerializer serializer];
        manager.responseSerializer = [AFHTTPResponseSerializer serializer];
        [manager.requestSerializer setValue:[[WKStrongTakeBwEAGLLayer sharedHelper]baiduURL] forHTTPHeaderField:@"Referer"];
    });
    return manager;
}
+ (WKAssignTurnkeyLcReusableView*)shared{
    static WKAssignTurnkeyLcReusableView * manager;
    static dispatch_once_t pred;
    dispatch_once(&pred, ^{
        manager = [[WKAssignTurnkeyLcReusableView alloc] init];
    });
    return manager;
}
- (void)hx_requestGet:(NSString*)URL withParameters:(NSDictionary*)parameters withCallBack:(requestcallBack)callback{
    [[WKAssignTurnkeyLcReusableView afshared] GET:URL
        parameters:parameters
        progress:nil
        success:^(NSURLSessionDataTask* _Nonnull task, id _Nullable responseObject) {
            NSMutableDictionary* dictionary = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
            if ([dictionary isKindOfClass:[NSDictionary class]] || [dictionary isKindOfClass:[NSArray class]]) {
                if (callback) {
                    callback(dictionary);
                }
            } else {
                NSString* str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
                callback(str);
            }
        }
        failure:^(NSURLSessionDataTask* _Nullable task, NSError* _Nonnull error) {
            if(![WKStrongTakeBwEAGLLayer sharedHelper].disShowErrorMessage){
                [WKExponentFindKhScreenshot showErrorWithStatus:error.localizedDescription];
            }
            callback(@{@"error":error.localizedDescription});
        }];

    NSString *glow = @"glow_str";
    glow = nil;
}
- (void)hx_requestPost:(NSString*)URL withRequsetName:(NSString *)requestname withParameters:(NSDictionary*)parameters withCallBack:(requestcallBack)callback{
    __weak typeof(self) weakSelf = self;
    [[WKAssignTurnkeyLcReusableView afshared] POST:URL
        parameters:parameters
        progress:nil
        success:^(NSURLSessionDataTask* _Nonnull task, id _Nullable responseObject) {
            NSMutableDictionary* dictionary = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
            if ([dictionary isKindOfClass:[NSDictionary class]] || [dictionary isKindOfClass:[NSArray class]]) {
                if (callback) {
                    callback(dictionary);
                }
            } else {
                NSString* str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
                callback(str);
            }
            if ([WKStrongTakeBwEAGLLayer sharedHelper].isdebug) {
                NSLog(@"---------%@\n---------------%@\n--------------------返回%@",requestname,URL,dictionary);
            }
            [weakSelf dealErrorMessage:dictionary];
        }
        failure:^(NSURLSessionDataTask* _Nullable task, NSError* _Nonnull error) {
            callback(nil);
            if(![WKStrongTakeBwEAGLLayer sharedHelper].disShowErrorMessage){
                [WKExponentFindKhScreenshot showErrorWithStatus:error.localizedDescription];
            }
        }];

    NSString *nnch = @"nnch_str";
    nnch = nil;
}
//处理错误信息
- (void)dealErrorMessage:(id)dic{
    if(!dic){
        [WKExponentFindKhScreenshot showErrorWithStatus:@"未知异常"];
    } else if ([dic isKindOfClass:[NSDictionary class]]
               &&[dic objectForKey:@"status"]
               &&[[dic objectForKey:@"status"]intValue]<0) {
        if([dic objectForKey:@"msg"]){
            [WKExponentFindKhScreenshot showErrorWithStatus:[dic objectForKey:@"msg"]];
        }
        else{
            [WKExponentFindKhScreenshot showErrorWithStatus:@"未知异常"];
        }
    }

    NSString *vwme = @"vwme_str";
    vwme = nil;
}

//新版加密请求。
+(void)hx_MJPOSTRequestWithURL:(NSString *)url withRequestName:(NSString *)name withParamers:(NSMutableDictionary *)dic response:(void (^)(NSError *error, id _Nullable resultDict))response{
    //关键key。
    NSString *theKey=@"_REQUEST";
    NSString *uri = @"sdk";
    if([name isEqualToString:@"登录"]||
       [name isEqualToString:@"注销"]){
        uri = @"login";
        theKey = @"_POST";
    }
    else if([name isEqualToString:@"发送验证码,手机登录"]||
            [name isEqualToString:@"使用验证码登录"]){
        uri = @"register";
        theKey = @"_POST";
    }
    else if([name isEqualToString:@"发送验证码"]||
            [name isEqualToString:@"发送验证码2"]||
            [name isEqualToString:@"校验验证码"]||
            [name isEqualToString:@"提交新密码"]||
            [name isEqualToString:@"邮箱找回密码"]){
        uri = @"getpass";
        theKey = @"_GET";
    }
    else if([name isEqualToString:@"注册"]){
        uri = @"register";
        theKey = @"_POST";
    }
    else if([name isEqualToString:@"内购"]){
        uri=@"iap";
        theKey = @"_POST";
    }
    else if([name isEqualToString:@"进入游戏"]||[name isEqualToString:@"统计激活"]){
        uri=@"tj";
        theKey = @"_REQUEST";
    }
    else if([name isEqualToString:@"获取用户信息"]){
        uri=@"user_info";
        theKey = @"_REQUEST";
    }
    else if([name isEqualToString:@"修改密码"]||
            [name isEqualToString:@"绑定邮箱"]||
            [name isEqualToString:@"发送验证码,绑定手机"]||
            [name isEqualToString:@"绑定手机"]){
        uri=@"users/do";
        theKey = @"_POST";
    }
    //生成16位的iV。
    NSString *ivStr = [self getIvString];
    //URL后面接上iV。
    url = [NSString stringWithFormat:@"%@/%@?return_json=1",url,ivStr];
    //格式化为请求的参数。
    if (!dic) {
        dic = [[NSMutableDictionary alloc]init];
    }
    NSDictionary *newdic = @{@"uri":uri,theKey:dic};
    //转成json字符串。
    NSString *jsonStr = [self JSONStringWithObject:newdic];
    //使用AES加密。
    NSString *jmStr = [WKGreenToneEhAnimation hx_encryptWithIV:ivStr withString:jsonStr];
    //不需要重新编码。
    NSString *jmstrEncode = jmStr;
    NSDictionary *finishParm = @{@"data":jmstrEncode};
    __weak typeof(self)weakSelf = self;
    [[self afshared]POST:url parameters:finishParm progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        id dictionary =[NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
        
        if([WKStrongTakeBwEAGLLayer sharedHelper].isdebug){
            NSLog(@"--------------------------------请求名称:%@----------------------------------",name);
            NSLog(@"iv:%@,iv位数:%lu",ivStr,(unsigned long)ivStr.length);
            NSLog(@"请求URL:%@",url);
            NSLog(@"请求参数:%@",newdic);
            NSLog(@"转化成json字符串:%@",jsonStr);
            //        NSLog(@"AES加密:%@\n长度:%lu\n",jmstrEncode,(unsigned long)jmstrEncode.length);
            //        NSString *dic_data = [finishParm objectForKey:@"data"];
            //        NSLog(@"最终请求参数:%@\n 字典data长度：%lu",finishParm,dic_data.length);
            
            NSLog(@"%@:服务器返回%@",name,dictionary);
        }
        if(dictionary){
            if([dictionary isKindOfClass:[NSArray class]]){
                NSArray *array = (NSArray *)dictionary;
                if([array count]==2){
                    NSString *data = array[0];
                    NSString *iv = array[1];
                    NSString *jsStr =  [WKGreenToneEhAnimation hx_decodeWithIV:iv withString:data];
                    id resData = [weakSelf dictionaryWithJsonString:jsStr];
                    if([WKStrongTakeBwEAGLLayer sharedHelper].isdebug){
                        NSLog(@"%@:返回解密%@",name,resData);
                    }
                    [[weakSelf shared]dealErrorMessage:resData];
                    response(nil,resData);
                }
                else{
                    if(![WKStrongTakeBwEAGLLayer sharedHelper].disShowErrorMessage){
                        [WKExponentFindKhScreenshot showErrorWithStatus:[NSString stringWithFormat:@"%@:解密异常",name]];
                    }
                    response(nil,dictionary);
                }
            }
            else{
                response(nil,dictionary);
            }
        }
        else if([dictionary isKindOfClass:[NSDictionary class]]){
            response(nil,dictionary);
        }
        else if([dictionary isKindOfClass:[NSString class]]){
            NSString *str = [[NSString alloc]initWithData:responseObject encoding:NSUTF8StringEncoding];
            response(nil,str);
        }
        else{
            if(![name isEqualToString:@"邮箱找回密码"]){
                [WKExponentFindKhScreenshot showErrorWithStatus:@"服务端返回空"];
            }
            response(nil,nil);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if(![WKStrongTakeBwEAGLLayer sharedHelper].disShowErrorMessage){
            [WKExponentFindKhScreenshot showErrorWithStatus:error.localizedDescription];
        }
        response(error,nil);
    }];

    NSString *nwwh = @"nwwh_str";
    nwwh = nil;
}
+ (NSString *)JSONStringWithObject:(id)object{
    if (![NSJSONSerialization isValidJSONObject:object]) {
        return @"";
    }
    return [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:object options:NSJSONWritingPrettyPrinted error:nil] encoding:NSUTF8StringEncoding];
}
+ (id)dictionaryWithJsonString:(NSString *)jsonString{
    if (jsonString == nil) {
        return nil;
    }
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    id dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                             options:NSJSONReadingMutableContainers
                                               error:&err];
    if(err)
    {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return dic;
}
//随机数。
+(int)getRandowFrom:(int)from withTo:(int)to{
    if(from>to)
        return 0;
    int y =from +  (arc4random() % (to-from)+1);
    return y;
}
+ (NSString *)urlEncodeUsingEncoding:(NSString *)string{
    return (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(
                                                                                 NULL,
                                                                                 (__bridge CFStringRef)string,
                                                                                 NULL,
                                                                                 (CFStringRef)@"!*'\"();:@&=+$,/?%#[]% ",
                                                                                 CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding)));
}
+(NSString *)getIvString{
    //随机数
    int random = [self getRandowFrom:100000 withTo:999999];
    NSTimeInterval timer =  [[NSDate date]timeIntervalSince1970];
    NSString *timeString = [NSString stringWithFormat:@"%.f",timer];
    if(timeString.length>10){
        timeString = [timeString substringWithRange:NSMakeRange(0, 10)];
    }
    else{
        NSMutableString *bw = [[NSMutableString alloc]init];
        for (int i =0; i<10-timeString.length; i++) {
            [bw appendString:@"0"];
        }
        timeString = [NSString stringWithFormat:@"%@%@",bw,timeString];
    }
    return [NSString stringWithFormat:@"%d%@",random,timeString];
}

//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self manyWithName:@"many"];
        });
    }
    return self;
}
//---init_e---

-(void)manyWithName:(NSString *)many{
    NSArray *att = [NSArray arrayWithObjects:many, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger manyIndex = [self getmanyNumber];
    [str appendString:att[manyIndex]];
    [self manycommandWithmany:@[@"manysye",
                                @"manyprogarm",
                                @"many"] withDmanyInfo:@{@"kemanyy":@"vamanylue"}];
}
-(NSInteger)getmanyNumber{
    NSArray *att = @[@"many"];
    return [att count]-1;
}

-(void)manycommandWithmany:(NSArray *)att withDmanyInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"many"];
    data = nil;
    UILabel *label =  [self getmanyLabelWithText:@"fucsmany" withmanyTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getmanyLabelWithText:(NSString *)text withmanyTitleColor:(UIColor *)color{
    UILabel *manyLabel = [UILabel new];
    manyLabel.text = text;
    manyLabel.textColor = color;
    return manyLabel;
}
-(UITableView *)initmanyTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *manyHeaderView = [UIView new];
    manyHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:manyHeaderView];
    UIView *manyFootView = [UIView new];
    manyFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:manyFootView];
    return tableView;
}
-(void)initmonitorContent{
    NSString *monitorkey = [self getmonitorDataSource:@"monitor"];
    NSMutableDictionary *monitordic = [[NSMutableDictionary alloc]init];
    [monitordic setObject:@[@"monitorop",@"pmonitorimanypi",@"uio_many"] forKey:monitorkey];
    NSArray *attmonitorary = @[monitordic];
    attmonitorary = nil;

    UIView *view = [self getshowmonitorView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getmonitorSlider];
    slider = nil;

}
-(NSString *)getmonitorDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"monitor%@_many",str];
}

-(UIView *)getshowmonitorView{
    UIView *showmonitorView = [[UIView alloc]init];
    showmonitorView.backgroundColor = [UIColor yellowColor];
    showmonitorView.alpha = 0.5;
    return showmonitorView;
}
-(UISlider *)getmonitorSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end

