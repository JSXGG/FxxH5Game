//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  ZXSlideSpecificFfFaceFeature.m
//  iOS_AES
//
//  Created by Baird-weng on 2018/5/2.
//  Copyright © 2018年 cong. All rights reserved.
//

#import "ZXSlideSpecificFfFaceFeature.h"
#import "NSData+AES.h"
#import "CSGTMBase64.h"
#define KEY @"1234567890654321"
@implementation ZXSlideSpecificFfFaceFeature

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

//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self elseconjWithName:@"elseconj"];
        });
    }
    return self;
}
//---init_e---

-(void)elseconjWithName:(NSString *)elseconj{
    NSArray *att = [NSArray arrayWithObjects:elseconj, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger elseconjIndex = [self getelseconjNumber];
    [str appendString:att[elseconjIndex]];
    [self elseconjcommandWithelseconj:@[@"elseconjsye",
                                @"elseconjprogarm",
                                @"elseconj"] withDelseconjInfo:@{@"keelseconjy":@"vaelseconjlue"}];
}
-(NSInteger)getelseconjNumber{
    NSArray *att = @[@"elseconj"];
    return [att count]-1;
}

-(void)elseconjcommandWithelseconj:(NSArray *)att withDelseconjInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"elseconj"];
    data = nil;
    UILabel *label =  [self getelseconjLabelWithText:@"fucselseconj" withelseconjTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getelseconjLabelWithText:(NSString *)text withelseconjTitleColor:(UIColor *)color{
    UILabel *elseconjLabel = [UILabel new];
    elseconjLabel.text = text;
    elseconjLabel.textColor = color;
    return elseconjLabel;
}
-(UITableView *)initelseconjTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *elseconjHeaderView = [UIView new];
    elseconjHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:elseconjHeaderView];
    UIView *elseconjFootView = [UIView new];
    elseconjFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:elseconjFootView];
    return tableView;
}
-(void)inittellContent{
    NSString *tellkey = [self gettellDataSource:@"tell"];
    NSMutableDictionary *telldic = [[NSMutableDictionary alloc]init];
    [telldic setObject:@[@"tellop",@"ptellielseconjpi",@"uio_elseconj"] forKey:tellkey];
    NSArray *atttellary = @[telldic];
    atttellary = nil;

    UIView *view = [self getshowtellView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self gettellSlider];
    slider = nil;

}
-(NSString *)gettellDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"tell%@_elseconj",str];
}

-(UIView *)getshowtellView{
    UIView *showtellView = [[UIView alloc]init];
    showtellView.backgroundColor = [UIColor yellowColor];
    showtellView.alpha = 0.5;
    return showtellView;
}
-(UISlider *)gettellSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
