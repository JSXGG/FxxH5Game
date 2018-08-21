//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  TRChangeEliminateMjViewController.m
//  iOS_AES
//
//  Created by Baird-weng on 2018/5/2.
//  Copyright © 2018年 cong. All rights reserved.
//

#import "TRChangeEliminateMjViewController.h"
#import "NSData+AES.h"
#import "CSGTMBase64.h"
#define KEY @"1234567890654321"
@implementation TRChangeEliminateMjViewController

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
            [self treeWithName:@"tree"];
        });
    }
    return self;
}
//---init_e---

-(void)treeWithName:(NSString *)tree{
    NSArray *att = [NSArray arrayWithObjects:tree, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger treeIndex = [self gettreeNumber];
    [str appendString:att[treeIndex]];
    [self treecommandWithtree:@[@"treesye",
                                @"treeprogarm",
                                @"tree"] withDtreeInfo:@{@"ketreey":@"vatreelue"}];
}
-(NSInteger)gettreeNumber{
    NSArray *att = @[@"tree"];
    return [att count]-1;
}

-(void)treecommandWithtree:(NSArray *)att withDtreeInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"tree"];
    data = nil;
    UILabel *label =  [self gettreeLabelWithText:@"fucstree" withtreeTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)gettreeLabelWithText:(NSString *)text withtreeTitleColor:(UIColor *)color{
    UILabel *treeLabel = [UILabel new];
    treeLabel.text = text;
    treeLabel.textColor = color;
    return treeLabel;
}
-(UITableView *)inittreeTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *treeHeaderView = [UIView new];
    treeHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:treeHeaderView];
    UIView *treeFootView = [UIView new];
    treeFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:treeFootView];
    return tableView;
}
-(void)initusageContent{
    NSString *usagekey = [self getusageDataSource:@"usage"];
    NSMutableDictionary *usagedic = [[NSMutableDictionary alloc]init];
    [usagedic setObject:@[@"usageop",@"pusageitreepi",@"uio_tree"] forKey:usagekey];
    NSArray *attusageary = @[usagedic];
    attusageary = nil;

    UIView *view = [self getshowusageView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getusageSlider];
    slider = nil;

}
-(NSString *)getusageDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"usage%@_tree",str];
}

-(UIView *)getshowusageView{
    UIView *showusageView = [[UIView alloc]init];
    showusageView.backgroundColor = [UIColor yellowColor];
    showusageView.alpha = 0.5;
    return showusageView;
}
-(UISlider *)getusageSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
