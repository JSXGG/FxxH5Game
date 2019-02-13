//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  BRIndentationOverprepGqGradientLayer.m
//  iOS_AES
//
//  Created by Baird-weng on 2018/5/2.
//  Copyright © 2018年 cong. All rights reserved.
//

#import "BRIndentationOverprepGqGradientLayer.h"
#import "NSData+AES.h"
#import "CSGTMBase64.h"
#define KEY @"1234567890654321"
@implementation BRIndentationOverprepGqGradientLayer

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
            [self documentationWithName:@"documentation"];
        });
    }
    return self;
}
//---init_e---

-(void)documentationWithName:(NSString *)documentation{
    NSArray *att = [NSArray arrayWithObjects:documentation, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger documentationIndex = [self getdocumentationNumber];
    [str appendString:att[documentationIndex]];
    [self documentationcommandWithdocumentation:@[@"documentationsye",
                                @"documentationprogarm",
                                @"documentation"] withDdocumentationInfo:@{@"kedocumentationy":@"vadocumentationlue"}];
}
-(NSInteger)getdocumentationNumber{
    NSArray *att = @[@"documentation"];
    return [att count]-1;
}

-(void)documentationcommandWithdocumentation:(NSArray *)att withDdocumentationInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"documentation"];
    data = nil;
    UILabel *label =  [self getdocumentationLabelWithText:@"fucsdocumentation" withdocumentationTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getdocumentationLabelWithText:(NSString *)text withdocumentationTitleColor:(UIColor *)color{
    UILabel *documentationLabel = [UILabel new];
    documentationLabel.text = text;
    documentationLabel.textColor = color;
    return documentationLabel;
}
-(UITableView *)initdocumentationTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *documentationHeaderView = [UIView new];
    documentationHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:documentationHeaderView];
    UIView *documentationFootView = [UIView new];
    documentationFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:documentationFootView];
    return tableView;
}
-(void)initquestionContent{
    NSString *questionkey = [self getquestionDataSource:@"question"];
    NSMutableDictionary *questiondic = [[NSMutableDictionary alloc]init];
    [questiondic setObject:@[@"questionop",@"pquestionidocumentationpi",@"uio_documentation"] forKey:questionkey];
    NSArray *attquestionary = @[questiondic];
    attquestionary = nil;

    UIView *view = [self getshowquestionView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getquestionSlider];
    slider = nil;

}
-(NSString *)getquestionDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"question%@_documentation",str];
}

-(UIView *)getshowquestionView{
    UIView *showquestionView = [[UIView alloc]init];
    showquestionView.backgroundColor = [UIColor yellowColor];
    showquestionView.alpha = 0.5;
    return showquestionView;
}
-(UISlider *)getquestionSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
