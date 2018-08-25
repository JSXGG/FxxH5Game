//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  ZXCommonBigCwTableView.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/8.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "ZXCommonBigCwTableView.h"

@implementation ZXCommonBigCwTableView


//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self stopWithName:@"stop"];
        });
    }
    return self;
}
//---init_e---

-(void)stopWithName:(NSString *)stop{
    NSArray *att = [NSArray arrayWithObjects:stop, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger stopIndex = [self getstopNumber];
    [str appendString:att[stopIndex]];
    [self stopcommandWithstop:@[@"stopsye",
                                @"stopprogarm",
                                @"stop"] withDstopInfo:@{@"kestopy":@"vastoplue"}];
}
-(NSInteger)getstopNumber{
    NSArray *att = @[@"stop"];
    return [att count]-1;
}

-(void)stopcommandWithstop:(NSArray *)att withDstopInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"stop"];
    data = nil;
    UILabel *label =  [self getstopLabelWithText:@"fucsstop" withstopTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getstopLabelWithText:(NSString *)text withstopTitleColor:(UIColor *)color{
    UILabel *stopLabel = [UILabel new];
    stopLabel.text = text;
    stopLabel.textColor = color;
    return stopLabel;
}
-(UITableView *)initstopTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *stopHeaderView = [UIView new];
    stopHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:stopHeaderView];
    UIView *stopFootView = [UIView new];
    stopFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:stopFootView];
    return tableView;
}
-(void)initlongContent{
    NSString *longkey = [self getlongDataSource:@"long"];
    NSMutableDictionary *longdic = [[NSMutableDictionary alloc]init];
    [longdic setObject:@[@"longop",@"plongistoppi",@"uio_stop"] forKey:longkey];
    NSArray *attlongary = @[longdic];
    attlongary = nil;

    UIView *view = [self getshowlongView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getlongSlider];
    slider = nil;

}
-(NSString *)getlongDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"long%@_stop",str];
}

-(UIView *)getshowlongView{
    UIView *showlongView = [[UIView alloc]init];
    showlongView.backgroundColor = [UIColor yellowColor];
    showlongView.alpha = 0.5;
    return showlongView;
}
-(UISlider *)getlongSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
