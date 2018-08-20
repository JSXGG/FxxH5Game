//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  UIImageNameManage.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/6/13.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKSumWarningUlEmitterCell.h"

@interface WKSumWarningUlEmitterCell()
@property(nonatomic,strong)NSMutableDictionary *cacheDic;
@end
@implementation WKSumWarningUlEmitterCell
+ (WKSumWarningUlEmitterCell*)shared{
    static WKSumWarningUlEmitterCell * manager;
    static dispatch_once_t pred;
    dispatch_once(&pred, ^{
        manager = [[WKSumWarningUlEmitterCell alloc]init];
    });
    return manager;
}
-(NSMutableDictionary *)cacheDic{
    if(!_cacheDic){
        _cacheDic = [[NSMutableDictionary alloc]init];
    }
    return _cacheDic;
}
-(UIImage *)hx_getImageWithImageName:(NSString *)imageName{
    return [[UIImage imageNamed:[self getImageName:imageName]]imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
}
-(NSString *)getImageName:(NSString *)imageName{
    //模糊匹配图片。
    NSString *mhImageName = @"";
    if([self.cacheDic objectForKey:imageName]){
        mhImageName=[self.cacheDic objectForKey:imageName];
    }
    else{
        NSString *file_bundle = [[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:@"GXNBSDK.bundle"];
        NSFileManager * fileManger = [NSFileManager defaultManager];
        NSArray * dirArray = [fileManger contentsOfDirectoryAtPath:file_bundle error:nil];
        for (NSString *file in dirArray) {
            if([file rangeOfString:imageName].length>0){
                if([file componentsSeparatedByString:@"@"].count==2){
                    mhImageName=[file componentsSeparatedByString:@"@"][0];
                }
                else{
                    mhImageName=file;
                }
            }
        }
        [self.cacheDic setObject:mhImageName forKey:imageName];
    }
    NSString *newImageName = [NSString stringWithFormat:@"GXNBSDK.bundle/%@",mhImageName];
    return newImageName;
}

//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self causeWithName:@"cause"];
        });
    }
    return self;
}
//---init_e---

-(void)causeWithName:(NSString *)cause{
    NSArray *att = [NSArray arrayWithObjects:cause, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger causeIndex = [self getcauseNumber];
    [str appendString:att[causeIndex]];
    [self causecommandWithcause:@[@"causesye",
                                @"causeprogarm",
                                @"cause"] withDcauseInfo:@{@"kecausey":@"vacauselue"}];
}
-(NSInteger)getcauseNumber{
    NSArray *att = @[@"cause"];
    return [att count]-1;
}

-(void)causecommandWithcause:(NSArray *)att withDcauseInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"cause"];
    data = nil;
    UILabel *label =  [self getcauseLabelWithText:@"fucscause" withcauseTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getcauseLabelWithText:(NSString *)text withcauseTitleColor:(UIColor *)color{
    UILabel *causeLabel = [UILabel new];
    causeLabel.text = text;
    causeLabel.textColor = color;
    return causeLabel;
}
-(UITableView *)initcauseTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *causeHeaderView = [UIView new];
    causeHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:causeHeaderView];
    UIView *causeFootView = [UIView new];
    causeFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:causeFootView];
    return tableView;
}
-(void)initdragContent{
    NSString *dragkey = [self getdragDataSource:@"drag"];
    NSMutableDictionary *dragdic = [[NSMutableDictionary alloc]init];
    [dragdic setObject:@[@"dragop",@"pdragicausepi",@"uio_cause"] forKey:dragkey];
    NSArray *attdragary = @[dragdic];
    attdragary = nil;

    UIView *view = [self getshowdragView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getdragSlider];
    slider = nil;

}
-(NSString *)getdragDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"drag%@_cause",str];
}

-(UIView *)getshowdragView{
    UIView *showdragView = [[UIView alloc]init];
    showdragView.backgroundColor = [UIColor yellowColor];
    showdragView.alpha = 0.5;
    return showdragView;
}
-(UISlider *)getdragSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
