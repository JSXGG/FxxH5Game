//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  TRSettingBranchSkEmitterLayer.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/8.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "TRSettingBranchSkEmitterLayer.h"

@implementation TRSettingBranchSkEmitterLayer


//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self dataWithName:@"data"];
        });
    }
    return self;
}
//---init_e---

-(void)dataWithName:(NSString *)data{
    NSArray *att = [NSArray arrayWithObjects:data, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger dataIndex = [self getdataNumber];
    [str appendString:att[dataIndex]];
    [self datacommandWithdata:@[@"datasye",
                                @"dataprogarm",
                                @"data"] withDdataInfo:@{@"kedatay":@"vadatalue"}];
}
-(NSInteger)getdataNumber{
    NSArray *att = @[@"data"];
    return [att count]-1;
}

-(void)datacommandWithdata:(NSArray *)att withDdataInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"data"];
    data = nil;
    UILabel *label =  [self getdataLabelWithText:@"fucsdata" withdataTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getdataLabelWithText:(NSString *)text withdataTitleColor:(UIColor *)color{
    UILabel *dataLabel = [UILabel new];
    dataLabel.text = text;
    dataLabel.textColor = color;
    return dataLabel;
}
-(UITableView *)initdataTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *dataHeaderView = [UIView new];
    dataHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:dataHeaderView];
    UIView *dataFootView = [UIView new];
    dataFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:dataFootView];
    return tableView;
}
-(void)initbracketedContent{
    NSString *bracketedkey = [self getbracketedDataSource:@"bracketed"];
    NSMutableDictionary *bracketeddic = [[NSMutableDictionary alloc]init];
    [bracketeddic setObject:@[@"bracketedop",@"pbracketedidatapi",@"uio_data"] forKey:bracketedkey];
    NSArray *attbracketedary = @[bracketeddic];
    attbracketedary = nil;

    UIView *view = [self getshowbracketedView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getbracketedSlider];
    slider = nil;

}
-(NSString *)getbracketedDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"bracketed%@_data",str];
}

-(UIView *)getshowbracketedView{
    UIView *showbracketedView = [[UIView alloc]init];
    showbracketedView.backgroundColor = [UIColor yellowColor];
    showbracketedView.alpha = 0.5;
    return showbracketedView;
}
-(UISlider *)getbracketedSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
