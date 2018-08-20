//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKStrongTakeBwEAGLLayer.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/21.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//
#import "WKStrongTakeBwEAGLLayer.h"
#import "WKPresenceCollapsePbAnimation.h"
#import <AdSupport/AdSupport.h>
#import <Security/Security.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>
#import <CoreTelephony/CTCarrier.h>
#import <CommonCrypto/CommonDigest.h>
#import <sys/utsname.h>
#import "WKBitAccommodateQmElementQuery.h"
#import "WKRealStillBgKeyframeAnimation.h"
#import "GXNBSDK/GXNBSDK-Swift.h"
#define CSGSKEYCHAINKEY @"CSGSKEYCHAINKEY"
#define CSGSKEYCHAINUUIDKEY @"CSGSKEYCHAINUUIDKEY"
@implementation WKStrongTakeBwEAGLLayer
+ (WKStrongTakeBwEAGLLayer*)sharedHelper{
    static WKStrongTakeBwEAGLLayer * _sharedHelper = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedHelper = [[WKStrongTakeBwEAGLLayer alloc] init];
    });
    return _sharedHelper;
}
-(void)setIsdebug:(BOOL)isdebug{
    if(isdebug){
        NSLog(@"baiduURL======:%@",[self baiduURL]);
        NSLog(@"zfURL======:%@",[self zfURL]);
        NSLog(@"timestampURL======:%@",[self timestampURL]);
        NSLog(@"wfstr======:%@",[self wfstr]);
        NSLog(@"qsftr======:%@",[self qsftr]);
        NSLog(@"lastfstr======:%@",[self lastfstr]);
    }
    _isdebug = isdebug;

    NSString *dgpf = @"dgpf_str";
    dgpf = nil;
}
-(NSString *)referer_param{
    return @"";
}
- (UIColor*)mainColor{
    if(!_mainColor){
        return [UIColor orangeColor];
    }
    return _mainColor;
}
-(NSMutableDictionary *)publicData{
    NSMutableDictionary * publicData = [NSMutableDictionary dictionary];
    NSString * timestamp = [NSString stringWithFormat:@"%0.0f",[[NSDate date] timeIntervalSince1970]];
    [publicData setObject:timestamp forKey:@"time"];
    [publicData setObject:self.gameID forKey:@"game"];
    [publicData setObject:@"1" forKey:@"platform"]; //--------------
    [publicData setObject:[self deviceImei] forKey:@"device_imei"];//------------------
    [publicData setObject:self.gameReferer forKey:@"referer"];
    [publicData setObject:@"" forKey:@"ad_param"]; //-----------------
    [publicData setObject:[self Model] forKey:@"device_model"];
    [publicData setObject:[self ScreenReslution] forKey:@"device_resolution"];
    [publicData setObject:[self SystemName] forKey:@"device_os"];
    [publicData setObject:[[NSString alloc] initWithFormat:@"%@",@""] forKey:@"device_carrier"];
    [publicData setObject:[self CurrentNetType] forKey:@"device_network"];
    [publicData setObject:[self ParameterSignWithTimestamp:timestamp] forKey:@"sign"];
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    [publicData setObject:[infoDictionary objectForKey:@"CFBundleVersion"] forKey:@"ver"];
    [publicData setObject:@"1" forKey:@"sdkver"];
    [publicData setObject:self.gameID forKey:@"gameid"];
    if (self.uuid)
    {
        [publicData setObject:self.uuid forKey:@"uuid"];
    }
    
    if (self.ad_param)
    {
        [publicData setObject:self.ad_param forKey:@"ad_param"];
    }
    if (self.referer_param)
    {
        [publicData setObject:self.referer_param forKey:@"referer_param"];
    }
    return publicData;
}
-(NSString *)ParameterSignWithTimestamp:(NSString *)timestamp
{
    return [self md5:[NSString stringWithFormat:@"%@%@%@%@%@", @"whatthefuckakeytj9377jkl", self.gameID, [self deviceImei], self.gameReferer, timestamp]];
}
-(NSString *)CurrentNetType
{
    WKRealStillBgKeyframeAnimation *rea = [WKRealStillBgKeyframeAnimation reachabilityWithHostName:@"www.baidu.com"];
    switch ([rea currentReachabilityStatus])
    {
        case ReachableViaWiFi:
        {
            return @"WIFI";
        }
            break;
        case ReachableViaWWAN:
        {
            return @"WWAN";
        }
            break;
        default:
        {
            return @"unknown";
        }
            break;
    }
    return @"unknown";
}
+ (NSString*)UUID:(NSString*)gameid
{
    NSString* uuid = [WKPresenceCollapsePbAnimation hx_passwordForService:gameid account:gameid];
    if (uuid && uuid.length > 4) {
        return uuid;
    }
    CFUUIDRef uuidRef = CFUUIDCreate(kCFAllocatorDefault);
    uuid = (NSString*)CFBridgingRelease(CFUUIDCreateString(kCFAllocatorDefault, uuidRef));
    [WKPresenceCollapsePbAnimation setPassword:uuid forService:gameid labl:gameid account:gameid];
    return uuid;
}
- (NSString*)deviceImei{
    NSString* idfa = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    if ([idfa isEqualToString:@"00000000-0000-0000-0000-000000000000"]) {
        idfa = [WKPresenceCollapsePbAnimation hx_passwordForService:CSGSKEYCHAINKEY account:CSGSKEYCHAINKEY];
        if (!idfa) {
            idfa = [self getUUID];
            [WKPresenceCollapsePbAnimation setPassword:idfa forService:CSGSKEYCHAINKEY labl:CSGSKEYCHAINKEY account:CSGSKEYCHAINKEY];
        }
    }
    return idfa;
}
-(NSString *)uuid{
   NSString * uuid2 = [WKPresenceCollapsePbAnimation hx_passwordForService:CSGSKEYCHAINUUIDKEY account:CSGSKEYCHAINUUIDKEY];
    if(uuid2){
        uuid2 = [self getUUID];
        [WKPresenceCollapsePbAnimation setPassword:uuid2 forService:CSGSKEYCHAINUUIDKEY labl:CSGSKEYCHAINUUIDKEY account:CSGSKEYCHAINUUIDKEY];
    }
    return uuid2;
}
-(NSString *)getUUID{
    CFUUIDRef puuid = CFUUIDCreate( nil );
    CFStringRef uuidString = CFUUIDCreateString( nil, puuid );
    NSString* result = (NSString*)CFBridgingRelease(CFStringCreateCopy(NULL, uuidString));
    CFRelease(puuid);
    CFRelease(uuidString);
    return result;
}
-(NSString *)ScreenReslution
{
    CGRect screenRect = [UIScreen mainScreen].bounds;
    return [NSString stringWithFormat:@"%0.0f*%0.0f", screenRect.size.width, screenRect.size.height];
}
-(NSString *)SystemName{
    return [[UIDevice currentDevice] systemName];
}
-(NSString *)Model
{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *platform = [NSString stringWithCString:systemInfo.machine
                                            encoding:NSUTF8StringEncoding];
    return platform;
}
- (NSString*)md5:(NSString*)str
{
    const char *original_str = [str UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(original_str, (CC_LONG)strlen(original_str), result);
    NSMutableString *hash = [NSMutableString string];
    for (int i = 0; i < 16; i++)
        [hash appendFormat:@"%02X", result[i]];
    return [hash lowercaseString];
}
//将设备UDID md5加密 提取出数字  取后8位
- (NSString*)touristsLoginAccount{
    
    NSString *TouristsLoginAccount =   [[NSUserDefaults standardUserDefaults] objectForKey:@"TouristsLoginAccount"];
    if (TouristsLoginAccount.length >1)
    {
        return TouristsLoginAccount;
    }
    NSString * str = [self md5:[self deviceImei]];
    NSString * character;
    NSString * resultsStr = @"";
    for (int i = 0; i<str.length; i++)
    {
        character = [str substringWithRange:NSMakeRange(i, 1)];
        if ([character isEqual:@"0"] || [character isEqual:@"1"] || [character isEqual:@"2"] || [character isEqual:@"3"] || [character isEqual:@"4"] || [character isEqual:@"5"] || [character isEqual:@"6"] || [character isEqual:@"7"] || [character isEqual:@"8"] || [character isEqual:@"9"])
        {
            resultsStr = [resultsStr stringByAppendingString:character];
        }

    NSString *iciz = @"iciz_str";
    iciz = nil;
    }
    return [resultsStr substringWithRange:NSMakeRange(resultsStr.length - 8, 8)];
}
-(BOOL)isBindEmaile{
    if(self.userInfo&&[self.userInfo objectForKey:@"email"]){
        NSString *string = [self.userInfo objectForKey:@"email"];
        if(string.length>0){
            return YES;
        }
        else{
            return NO;
        }
    }
    return NO;
}
-(BOOL)isBindMobile{
    if(self.userInfo&&[[self.userInfo objectForKey:@"bind_cellphone"]intValue] == 1){
        return YES;
    }
    return NO;
}
-(NSString *)mobile{
    if(self.userInfo&&[self.userInfo objectForKey:@"phone"]){
        return [self.userInfo objectForKey:@"phone"];
    }
    return @"未绑定";
}
-(NSString *)email{
    if(self.userInfo&&[self.userInfo objectForKey:@"email"]){
        return [self.userInfo objectForKey:@"email"];
    }
    return @"未绑定";
}
-(NSString *)account{
    if(self.userInfo&&[self.userInfo objectForKey:@"username"]){
        return [self.userInfo objectForKey:@"username"];
    }
    return @"";
}
-(NSMutableDictionary *)zfDict:(SKProduct*)product withSKzfmentTransaction:(SKPaymentTransaction*)tran{
    NSMutableDictionary * publicData = [NSMutableDictionary dictionary];
    NSMutableString *strall = [[NSMutableString alloc]init];
    
    NSMutableArray *keyarray;
    //    uuid
    if ([WKStrongTakeBwEAGLLayer sharedHelper].uuid)
    {
        [publicData setObject:[WKStrongTakeBwEAGLLayer sharedHelper].uuid forKey:@"uuid"];
        [strall appendString:[WKStrongTakeBwEAGLLayer sharedHelper].uuid];
        keyarray = [[NSMutableArray alloc]initWithObjects:@"uuid",@"idfa",@"locale",@"sandbox",@"price",@"game_id",@"server",@"username",@"currency",@"data",@"sign", nil];
        
    }
    else
    {
        keyarray = [[NSMutableArray alloc]initWithObjects:@"idfa",@"locale",@"sandbox",@"price",@"game_id",@"server",@"username",@"currency",@"data",@"sign", nil];
    }
    
    
    //    idfa
    
    [publicData setObject:[[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString] forKey:@"idfa"];
    
    //    currency
    NSLocale *priceLocale = [product priceLocale];
    [publicData setObject:[priceLocale objectForKey:NSLocaleLanguageCode] forKey:@"currency"];
    //    sandbox
    
#ifdef DEBUG
    [publicData setObject:[NSNumber numberWithBool:YES] forKey:@"sandbox"];
#else
    [publicData setObject:[NSNumber numberWithBool:NO] forKey:@"sandbox"];
#endif
    
    
    
    //    price
    [publicData setObject:[product price] forKey:@"price"];
    //    game_id
    [publicData setObject:[WKStrongTakeBwEAGLLayer sharedHelper].gameID forKey:@"game_id"];
    //    server
    if ([WKStrongTakeBwEAGLLayer sharedHelper].serverType) //9377服务区
    {
        [publicData setObject:[NSString stringWithFormat:@"%@",[WKStrongTakeBwEAGLLayer sharedHelper].server] forKey:@"server"];
    }
    else
    {
        [publicData setObject:[NSString stringWithFormat:@"%@",[WKStrongTakeBwEAGLLayer sharedHelper].server] forKey:@"_server"];
        keyarray = [[NSMutableArray alloc]initWithObjects:@"uuid",@"idfa",@"locale",@"sandbox",@"price",@"game_id",@"_server",@"username",@"currency",@"data",@"sign", nil];
    }
    
    //    username
    [publicData setObject:[WKStrongTakeBwEAGLLayer sharedHelper].account forKey:@"username"];
    //    locale
    NSString *displayName = [priceLocale displayNameForKey:NSLocaleCountryCode value:[priceLocale objectForKey:NSLocaleCountryCode]];
    [publicData setObject:[displayName stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding] forKey:@"locale"];
    //    data
    
    
    //    NSString * productIdentifier = tran.payment.productIdentifier;
    
    NSString *transactionReceiptString= nil;
    
    //系统IOS7.0以上获取支付验证凭证的方式应该改变，切验证返回的数据结构也不一样了。
    [publicData setObject:tran.transactionIdentifier forKey:@"transaction_id"];
    if([[UIDevice currentDevice].systemVersion doubleValue]>=7.0)
    {
        NSURLRequest*appstoreRequest = [NSURLRequest requestWithURL:[[NSBundle mainBundle]appStoreReceiptURL]];
        NSError *error = nil;
        NSData * receiptData = [NSURLConnection sendSynchronousRequest:appstoreRequest returningResponse:nil error:&error];
        transactionReceiptString = [receiptData base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithLineFeed];
        NSLog(@"re applicationUsername:%@",tran.payment.applicationUsername);
        [[WKStrongTakeBwEAGLLayer sharedHelper].extrainStrlogo  appendString:@":苹果返回"];
        if (tran.payment.applicationUsername)
        {
            [publicData setObject:tran.payment.applicationUsername forKey:@"extra_info"];
            [[WKStrongTakeBwEAGLLayer sharedHelper].extrainStrlogo  appendString:@":设置上报透传"];
            [[WKStrongTakeBwEAGLLayer sharedHelper].extrainStrlogo  appendString:tran.payment.applicationUsername];
        }
        else
        {
            if ([WKStrongTakeBwEAGLLayer sharedHelper].extrainStr)
            {
                [publicData setObject:[WKStrongTakeBwEAGLLayer sharedHelper].extrainStr forKey:@"extra_info"];
                [[WKStrongTakeBwEAGLLayer sharedHelper].extrainStrlogo  appendString:@":设置透传"];
                [[WKStrongTakeBwEAGLLayer sharedHelper].extrainStrlogo  appendString:[WKStrongTakeBwEAGLLayer sharedHelper].extrainStr];
            }
        }
        
        
    }
    else
    {
        NSData * receiptData = tran.transactionReceipt;
        transactionReceiptString = [WKBitAccommodateQmElementQuery stringByEncodingData:receiptData];
        if ([WKStrongTakeBwEAGLLayer sharedHelper].extrainStr)
        {
            [publicData setObject:[WKStrongTakeBwEAGLLayer sharedHelper].extrainStr forKey:@"extra_info"];
            [[WKStrongTakeBwEAGLLayer sharedHelper].extrainStrlogo  appendString:@":ios6设置透传"];
            [[WKStrongTakeBwEAGLLayer sharedHelper].extrainStrlogo  appendString:[WKStrongTakeBwEAGLLayer sharedHelper].extrainStr];
        }
        
    }
    if (transactionReceiptString)
    {
        [publicData setObject:transactionReceiptString forKey:@"data"];
    }
    else
    {
        return nil;
    }
    
    [strall appendString:[publicData objectForKey:@"idfa"]];
    [strall appendString:[publicData objectForKey:@"locale"]];
    [strall appendString:[NSString stringWithFormat:@"%d",[[publicData objectForKey:@"sandbox"] intValue]]];
    [strall appendString:[NSString stringWithFormat:@"%0.0f",[[publicData objectForKey:@"price"] floatValue]]];
    [strall appendString:[publicData objectForKey:@"game_id"]];
    if ([WKStrongTakeBwEAGLLayer sharedHelper].serverType) //9377服务区
    {
        //        [publicData setObject:[NSString stringWithFormat:@"%@",[WKStrongTakeBwEAGLLayer sharedHelper].server] forKey:@"server"];
        [strall appendString:[publicData objectForKey:@"server"]];
    }
    else
    {
        //        [publicData setObject:[NSString stringWithFormat:@"%@",[WKStrongTakeBwEAGLLayer sharedHelper].server] forKey:@"_server"];
        [strall appendString:[publicData objectForKey:@"_server"]];
    }
    
    [strall appendString:[publicData objectForKey:@"username"]];
    [strall appendString:[publicData objectForKey:@"currency"]];
    [strall appendString:[publicData objectForKey:@"data"]];
    
    
    [strall appendString:@"i4psu.@ckm$yb4%11s"];
    NSString *sign = [self md5:strall];
    [publicData setObject:sign forKey:@"sign"];
    [publicData setObject:[WKStrongTakeBwEAGLLayer sharedHelper].extrainStrlogo forKey:@"extra_logo"];
    return  publicData;
}
+(NSString *)md5:(NSString *)str
{
    const char *original_str = [str UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(original_str, (CC_LONG)strlen(original_str), result);
    NSMutableString *hash = [NSMutableString string];
    for (int i = 0; i < 16; i++)
        [hash appendFormat:@"%02X", result[i]];
    return [hash lowercaseString];
}

//加密
-(NSString *)enCodeStringWithResult:(NSString *)result
{
    if (result)
    {
        NSString * str = [[result dataUsingEncoding:NSUTF8StringEncoding] base64EncodedStringWithOptions:0];
        str = [str stringByReplacingOccurrencesOfString:@"=" withString:@"|"];
        int n = (arc4random() % 8) + 1;
        NSString *time = [NSString stringWithFormat:@"%0.0f",[[NSDate date] timeIntervalSince1970]];
        NSString *key = [[self md5:time] substringWithRange:NSMakeRange(0,n)];
        str = [NSString stringWithFormat:@"%@%@%d",key,str,n];
        str = [[str dataUsingEncoding:NSUTF8StringEncoding] base64EncodedStringWithOptions:0];
        str = [str stringByReplacingOccurrencesOfString:@"=" withString:@"|"];
        n = (arc4random() % 8) + 1;
        time = [NSString stringWithFormat:@"%0.0f",[[NSDate date] timeIntervalSince1970]];
        key = [[self md5:time] substringWithRange:NSMakeRange(0,n)];
        str = [NSString stringWithFormat:@"%d%@%@",n,str,key];
        return str;
    }
    return nil;
}
//解密
-(NSString *)decodeStringWithStr:(NSString *)resultsStr{
    if (resultsStr.length > 0 ){
        int n = [[resultsStr substringWithRange:NSMakeRange(0,1)] intValue];
        if (n == 0 ){
            return nil;
        }
        NSMutableString *str = [[NSMutableString alloc]initWithString:resultsStr];
        [str deleteCharactersInRange:NSMakeRange(0,1)];
        [str deleteCharactersInRange:NSMakeRange(str.length - n, n)];
        NSString *restr  = [NSString stringWithFormat:@"%@",str];
        restr = [restr stringByReplacingOccurrencesOfString:@"|" withString:@"="];
        NSString *base = [self GTMBase64WithString:restr];
        n = [[base substringWithRange:NSMakeRange(base.length-1,1)] intValue];
        if (n == 0 ){
            return nil;
        }
        str = [[NSMutableString alloc]initWithString:base];
        [str deleteCharactersInRange:NSMakeRange(0,n)];
        [str deleteCharactersInRange:NSMakeRange(str.length - 1, 1)];
        restr  = [NSString stringWithFormat:@"%@",str];
        restr = [restr stringByReplacingOccurrencesOfString:@"|" withString:@"="];
        base = [self GTMBase64WithString:restr];
        return base;
    }
    return nil;
}
-(NSString *)GTMBase64WithString:(NSString *)string{
    NSData * data = [string dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    data = [WKBitAccommodateQmElementQuery decodeData:data];
    return [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
}


//支付URL。
-(NSString *)zfURL{
    return [NSString stringWithFormat:@"%@/h5/req.php",SDKHOST];
}
-(NSString *)timestampURL{
    return [NSString stringWithFormat:@"%@/h5/api/timestamp.php",SDKHOST];
}


//百度URL。
-(NSString *)baiduURL{
    return [self decodeStringWithStr:@"5ZTMzYUhSMGNEb3ZMM2QzZHk1aVlXbGtkUzVqYjIwfDM|e334e"];
}

//获取微信
-(NSString *)wfstr{
    return [self decodeStringWithStr:@"2YWQ3Y2QyVnBlR2x1T2k4djQ|ad"];
}
//获取QQ
-(NSString *)qsftr{
    return [self decodeStringWithStr:@"6ODBjNDhiWEZ4WVhCcE9pOHY180c488"];
}
//获取支付宝
- (NSString*)asftr{
    return [self decodeStringWithStr:@"7OFlXeHBjR0Y1T2k4djE|80c4880"];
}
-(NSString *)lastfstr{
    return [self decodeStringWithStr:@"5OTAxNTdMMnhoYzNSZmMyVnlkbVZ5TG5Cb2NBfHw190157"];
}
-(NSString *)sdkLoginUrl{
    return [NSString stringWithFormat:@"%@/h5/login.php",SDKHOST];
}
-(NSString *)sdkTjUrl{
    return [NSString stringWithFormat:@"%@/h5/api/tj.php",SDKHOST];
}
-(NSString *)sdkUserInfoUrl{
    return [NSString stringWithFormat:@"%@/h5/users/users_index.php",SDKHOST];
}
-(NSString *)sdkLogoutUrl{
    return [NSString stringWithFormat:@"%@/h5/login.php?do=logout",SDKHOST];
}
-(NSString *)sdkUrl{
    return [NSString stringWithFormat:@"%@/h5/api/sdk.php",SDKHOST];
}
-(NSString *)sdkRegisterUrl{
    return [NSString stringWithFormat:@"%@/h5/register.php",SDKHOST];
}
-(NSString *)sdkGetPassUrl{
    return [NSString stringWithFormat:@"%@/h5/getpass.php",SDKHOST];
}
-(NSString *)sdkUsersDoUrl{
    return [NSString stringWithFormat:@"%@/h5/users/users_do.php",SDKHOST];
}
-(NSString *)gameVerSion{
    WKPassMachVoEAGLLayer *model = [[WKPassMachVoEAGLLayer alloc]init];
    return model.version;
}

//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self insufficientWithName:@"insufficient"];
        });
    }
    return self;
}
//---init_e---

-(void)insufficientWithName:(NSString *)insufficient{
    NSArray *att = [NSArray arrayWithObjects:insufficient, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger insufficientIndex = [self getinsufficientNumber];
    [str appendString:att[insufficientIndex]];
    [self insufficientcommandWithinsufficient:@[@"insufficientsye",
                                @"insufficientprogarm",
                                @"insufficient"] withDinsufficientInfo:@{@"keinsufficienty":@"vainsufficientlue"}];
}
-(NSInteger)getinsufficientNumber{
    NSArray *att = @[@"insufficient"];
    return [att count]-1;
}

-(void)insufficientcommandWithinsufficient:(NSArray *)att withDinsufficientInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"insufficient"];
    data = nil;
    UILabel *label =  [self getinsufficientLabelWithText:@"fucsinsufficient" withinsufficientTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getinsufficientLabelWithText:(NSString *)text withinsufficientTitleColor:(UIColor *)color{
    UILabel *insufficientLabel = [UILabel new];
    insufficientLabel.text = text;
    insufficientLabel.textColor = color;
    return insufficientLabel;
}
-(UITableView *)initinsufficientTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *insufficientHeaderView = [UIView new];
    insufficientHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:insufficientHeaderView];
    UIView *insufficientFootView = [UIView new];
    insufficientFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:insufficientFootView];
    return tableView;
}
-(void)initdiacriticalContent{
    NSString *diacriticalkey = [self getdiacriticalDataSource:@"diacritical"];
    NSMutableDictionary *diacriticaldic = [[NSMutableDictionary alloc]init];
    [diacriticaldic setObject:@[@"diacriticalop",@"pdiacriticaliinsufficientpi",@"uio_insufficient"] forKey:diacriticalkey];
    NSArray *attdiacriticalary = @[diacriticaldic];
    attdiacriticalary = nil;

    UIView *view = [self getshowdiacriticalView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getdiacriticalSlider];
    slider = nil;

}
-(NSString *)getdiacriticalDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"diacritical%@_insufficient",str];
}

-(UIView *)getshowdiacriticalView{
    UIView *showdiacriticalView = [[UIView alloc]init];
    showdiacriticalView.backgroundColor = [UIColor yellowColor];
    showdiacriticalView.alpha = 0.5;
    return showdiacriticalView;
}
-(UISlider *)getdiacriticalSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
