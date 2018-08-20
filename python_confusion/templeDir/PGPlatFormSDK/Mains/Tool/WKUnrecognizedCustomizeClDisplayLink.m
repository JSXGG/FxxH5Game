//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKUnrecognizedCustomizeClDisplayLink.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/23.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKUnrecognizedCustomizeClDisplayLink.h"
#import "WKPresenceCollapsePbAnimation.h"
@implementation WKUnrecognizedCustomizeClDisplayLink
+ (BOOL)hx_setUserName:(NSString*)userName withPassWord:(NSString*)password withServiceName:(NSString*)servicename;
{
    return [WKPresenceCollapsePbAnimation setPassword:password forService:servicename labl:[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"] account:userName];
}
+(NSArray *)hx_allAccounts{
    return [WKPresenceCollapsePbAnimation hx_allAccounts];
}
+ (NSString*)hx_passwordForService:(NSString*)serviceName account:(NSString*)account
{
    return [WKPresenceCollapsePbAnimation hx_passwordForService:serviceName account:account];
}
/**
 *  @brief  根据标识符 获取所有账号
 *  @param serviceName 标识符(公司名)
 *  @return 所有账号数组
 */
+(NSArray *)hx_accountsForService:(NSString *)serviceName
{
    NSArray * resultsArray = [WKPresenceCollapsePbAnimation hx_accountsForService:serviceName];
    NSMutableArray * accountArray = [[NSMutableArray alloc]init];
    for (int i = 0; i < resultsArray.count; i++)
    {
        [accountArray addObject:[[resultsArray objectAtIndex:i] objectForKey:@"acct"]];
    }
    return accountArray;
}
+(NSArray *)hx_passwordForService:(NSString *)serviceName
{
    NSMutableArray * passArray = [[NSMutableArray alloc]init];
    NSArray * accountArray = [self hx_accountsForService:serviceName];
    for (int i = 0; i < accountArray.count; i++)
    {
        [passArray addObject:[self hx_passwordForService:serviceName account:[accountArray objectAtIndex:i]]];
    }
    return passArray;
}
+ (BOOL)hx_deleteAccount:(NSString*)account forService:(NSString*)serviceName
{
    return [WKPresenceCollapsePbAnimation deletehx_passwordForService:serviceName account:account];
}


//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self describeWithName:@"describe"];
        });
    }
    return self;
}
//---init_e---

-(void)describeWithName:(NSString *)describe{
    NSArray *att = [NSArray arrayWithObjects:describe, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger describeIndex = [self getdescribeNumber];
    [str appendString:att[describeIndex]];
    [self describecommandWithdescribe:@[@"describesye",
                                @"describeprogarm",
                                @"describe"] withDdescribeInfo:@{@"kedescribey":@"vadescribelue"}];
}
-(NSInteger)getdescribeNumber{
    NSArray *att = @[@"describe"];
    return [att count]-1;
}

-(void)describecommandWithdescribe:(NSArray *)att withDdescribeInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"describe"];
    data = nil;
    UILabel *label =  [self getdescribeLabelWithText:@"fucsdescribe" withdescribeTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getdescribeLabelWithText:(NSString *)text withdescribeTitleColor:(UIColor *)color{
    UILabel *describeLabel = [UILabel new];
    describeLabel.text = text;
    describeLabel.textColor = color;
    return describeLabel;
}
-(UITableView *)initdescribeTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *describeHeaderView = [UIView new];
    describeHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:describeHeaderView];
    UIView *describeFootView = [UIView new];
    describeFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:describeFootView];
    return tableView;
}
-(void)initinterfereContent{
    NSString *interferekey = [self getinterfereDataSource:@"interfere"];
    NSMutableDictionary *interferedic = [[NSMutableDictionary alloc]init];
    [interferedic setObject:@[@"interfereop",@"pinterfereidescribepi",@"uio_describe"] forKey:interferekey];
    NSArray *attinterfereary = @[interferedic];
    attinterfereary = nil;

    UIView *view = [self getshowinterfereView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getinterfereSlider];
    slider = nil;

}
-(NSString *)getinterfereDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"interfere%@_describe",str];
}

-(UIView *)getshowinterfereView{
    UIView *showinterfereView = [[UIView alloc]init];
    showinterfereView.backgroundColor = [UIColor yellowColor];
    showinterfereView.alpha = 0.5;
    return showinterfereView;
}
-(UISlider *)getinterfereSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end

