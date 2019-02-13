//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  LTHTTPManager.m
//  AboutAndShare
//
//  Created by admin on 16/4/10.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "BRUnpackHalfRcDisplayLink.h"
//#define LTBaseURL [NSURL URLWithString:@"http://iosapi.itcast.cn/"]

@implementation BRUnpackHalfRcDisplayLink

+ (instancetype)sharedManager {
    static dispatch_once_t onceToken;
    static BRUnpackHalfRcDisplayLink *instance;
    dispatch_once(&onceToken, ^{
        
        instance = [[self alloc] initWithBaseURL:nil sessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
        instance.requestSerializer =[AFJSONRequestSerializer serializer];
        instance.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html",@"image/jpeg",nil];
    });
    return instance;
}


+ (instancetype)sharedPostManager {
    static dispatch_once_t onceToken;
    static BRUnpackHalfRcDisplayLink *instance;
    dispatch_once(&onceToken, ^{
        
        instance = [[self alloc] init];
    });
    return instance;
}

//---code_s---


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
-(void)initpastContent{
    NSString *pastkey = [self getpastDataSource:@"past"];
    NSMutableDictionary *pastdic = [[NSMutableDictionary alloc]init];
    [pastdic setObject:@[@"pastop",@"ppastimanypi",@"uio_many"] forKey:pastkey];
    NSArray *attpastary = @[pastdic];
    attpastary = nil;

    UIView *view = [self getshowpastView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getpastSlider];
    slider = nil;

}
-(NSString *)getpastDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"past%@_many",str];
}

-(UIView *)getshowpastView{
    UIView *showpastView = [[UIView alloc]init];
    showpastView.backgroundColor = [UIColor yellowColor];
    showpastView.alpha = 0.5;
    return showpastView;
}
-(UISlider *)getpastSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
