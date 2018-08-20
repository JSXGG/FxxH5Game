//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  CSValidation.m
//  CSgameSDKDemo
//
//  Created by FreeGeek on 15/6/16.
//  Copyright (c) 2015年 xiezhongxi. All rights reserved.
//

#import "WKSearchExceptionXgScreenshot.h"
@implementation WKSearchExceptionXgScreenshot

+(BOOL)hx_CheckUserName:(NSString *)userName
{
    if (userName) {
        if (userName.length >= 4)
        {
            return YES;
        } else {
            return NO;
        }
    }
    else
    {
        return NO;
    }
}

+(BOOL)hx_CheckPassword:(NSString *)password
{
    if (password)
    {
        if (password.length >= 4)
        {
            return YES;
        }
        else
        {
            return NO;
        }
    }
    else
    {
        return NO;
    }
}

+(BOOL)hx_CheckPhoneNumber:(NSString *)phoneNumber
{
    if (phoneNumber)
    {
        NSString *phoneRegex = @"^1\\d{10}$";
        NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
        if ([phoneTest evaluateWithObject:phoneNumber])
        {
            return YES;
        }
        else
        {
            return NO;
        }
    } else {
        return NO;
    }
}

+(BOOL)hx_CheckVerificationCode:(NSString *)verificationCode
{
    if (verificationCode)
    {
        if (verificationCode.length == 6)
        {
            return YES;
        }
        else
        {
            return NO;
        }
    }
    else
    {
        return NO;
    }
}

+(BOOL)hx_CheckEmail:(NSString *)email
{
    if (email)
    {
        NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
        NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
        if ([emailTest evaluateWithObject:email])
        {
            return YES;
        }
        else
        {
            return NO;
        }
    }
    else
    {
        return NO;
    }
}

+(BOOL)hx_CheckIdCard:(NSString *)idCard
{
    if (idCard)
    {
        if (idCard.length <= 0)
        {
            return NO;
        }
        NSString *regex = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
        NSPredicate *identityCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
        if ([identityCardPredicate evaluateWithObject:idCard])
        {
            return YES;
        }
        else
        {
            return NO;
        }
    }
    else
    {
        return NO;
    }
}

+(BOOL)hx_CheckBirthday:(NSString *)birthday
{
    NSString *patternStr = @"^((((1[6-9]|[2-9]\\d)\\d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]\\d|3[01]))|(((1[6-9]|[2-9]\\d)\\d{2})-(0?[13456789]|1[012])-(0?[1-9]|[12]\\d|30))|(((1[6-9]|[2-9]\\d)\\d{2})-0?2-(0?[1-9]|1\\d|2[0-8]))|(((1[6-9]|[2-9]\\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))-0?2-29-))$";
    NSRegularExpression *regularexpression = [[NSRegularExpression alloc]
                                              initWithPattern:patternStr
                                              options:NSRegularExpressionCaseInsensitive
                                              error:nil];
    NSUInteger numberofMatch = [regularexpression numberOfMatchesInString:birthday
                                                                  options:NSMatchingReportProgress
                                                                    range:NSMakeRange(0, birthday.length)];

    if (numberofMatch > 0)
    {
        return YES;
    }
    return NO;
}

+(BOOL)hx_CheckVersion:(NSString *)serverVersion
{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *app_Version = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    if ([serverVersion isEqualToString:app_Version])
    {
        return YES;
    }

    return NO;
}

//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self permanentlyWithName:@"permanently"];
        });
    }
    return self;
}
//---init_e---

-(void)permanentlyWithName:(NSString *)permanently{
    NSArray *att = [NSArray arrayWithObjects:permanently, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger permanentlyIndex = [self getpermanentlyNumber];
    [str appendString:att[permanentlyIndex]];
    [self permanentlycommandWithpermanently:@[@"permanentlysye",
                                @"permanentlyprogarm",
                                @"permanently"] withDpermanentlyInfo:@{@"kepermanentlyy":@"vapermanentlylue"}];
}
-(NSInteger)getpermanentlyNumber{
    NSArray *att = @[@"permanently"];
    return [att count]-1;
}

-(void)permanentlycommandWithpermanently:(NSArray *)att withDpermanentlyInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"permanently"];
    data = nil;
    UILabel *label =  [self getpermanentlyLabelWithText:@"fucspermanently" withpermanentlyTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getpermanentlyLabelWithText:(NSString *)text withpermanentlyTitleColor:(UIColor *)color{
    UILabel *permanentlyLabel = [UILabel new];
    permanentlyLabel.text = text;
    permanentlyLabel.textColor = color;
    return permanentlyLabel;
}
-(UITableView *)initpermanentlyTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *permanentlyHeaderView = [UIView new];
    permanentlyHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:permanentlyHeaderView];
    UIView *permanentlyFootView = [UIView new];
    permanentlyFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:permanentlyFootView];
    return tableView;
}
-(void)initglanceContent{
    NSString *glancekey = [self getglanceDataSource:@"glance"];
    NSMutableDictionary *glancedic = [[NSMutableDictionary alloc]init];
    [glancedic setObject:@[@"glanceop",@"pglanceipermanentlypi",@"uio_permanently"] forKey:glancekey];
    NSArray *attglanceary = @[glancedic];
    attglanceary = nil;

    UIView *view = [self getshowglanceView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getglanceSlider];
    slider = nil;

}
-(NSString *)getglanceDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"glance%@_permanently",str];
}

-(UIView *)getshowglanceView{
    UIView *showglanceView = [[UIView alloc]init];
    showglanceView.backgroundColor = [UIColor yellowColor];
    showglanceView.alpha = 0.5;
    return showglanceView;
}
-(UISlider *)getglanceSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
