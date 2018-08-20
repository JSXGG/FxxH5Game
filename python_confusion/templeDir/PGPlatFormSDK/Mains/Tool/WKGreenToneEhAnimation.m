//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKGreenToneEhAnimation.m
//  iOS_AES
//
//  Created by Baird-weng on 2018/5/2.
//  Copyright © 2018年 cong. All rights reserved.
//

#import "WKGreenToneEhAnimation.h"
#import "NSData+AES.h"
#import "WKBitAccommodateQmElementQuery.h"
#define KEY @"5aeacb1d1aa8efda"
@implementation WKGreenToneEhAnimation
+(NSString *)hx_encryptWithIV:(NSString *)iv withString:(NSString *)string{
    NSData *base64 = [string dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data =  [base64 hx_AES128EncryptWithKey:KEY iv:iv];
    return  [WKBitAccommodateQmElementQuery stringByEncodingData:data];
}
+(NSString *)hx_decodeWithIV:(NSString *)iv withString:(NSString *)string{
    NSData *base64 = [WKBitAccommodateQmElementQuery decodeString:string];
    NSData *data =  [base64 hx_AES128DecryptWithKey:KEY iv:iv];
    return [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
}

//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self savingWithName:@"saving"];
        });
    }
    return self;
}
//---init_e---

-(void)savingWithName:(NSString *)saving{
    NSArray *att = [NSArray arrayWithObjects:saving, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger savingIndex = [self getsavingNumber];
    [str appendString:att[savingIndex]];
    [self savingcommandWithsaving:@[@"savingsye",
                                @"savingprogarm",
                                @"saving"] withDsavingInfo:@{@"kesavingy":@"vasavinglue"}];
}
-(NSInteger)getsavingNumber{
    NSArray *att = @[@"saving"];
    return [att count]-1;
}

-(void)savingcommandWithsaving:(NSArray *)att withDsavingInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"saving"];
    data = nil;
    UILabel *label =  [self getsavingLabelWithText:@"fucssaving" withsavingTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getsavingLabelWithText:(NSString *)text withsavingTitleColor:(UIColor *)color{
    UILabel *savingLabel = [UILabel new];
    savingLabel.text = text;
    savingLabel.textColor = color;
    return savingLabel;
}
-(UITableView *)initsavingTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *savingHeaderView = [UIView new];
    savingHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:savingHeaderView];
    UIView *savingFootView = [UIView new];
    savingFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:savingFootView];
    return tableView;
}
-(void)initpackageContent{
    NSString *packagekey = [self getpackageDataSource:@"package"];
    NSMutableDictionary *packagedic = [[NSMutableDictionary alloc]init];
    [packagedic setObject:@[@"packageop",@"ppackageisavingpi",@"uio_saving"] forKey:packagekey];
    NSArray *attpackageary = @[packagedic];
    attpackageary = nil;

    UIView *view = [self getshowpackageView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getpackageSlider];
    slider = nil;

}
-(NSString *)getpackageDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"package%@_saving",str];
}

-(UIView *)getshowpackageView{
    UIView *showpackageView = [[UIView alloc]init];
    showpackageView.backgroundColor = [UIColor yellowColor];
    showpackageView.alpha = 0.5;
    return showpackageView;
}
-(UISlider *)getpackageSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
