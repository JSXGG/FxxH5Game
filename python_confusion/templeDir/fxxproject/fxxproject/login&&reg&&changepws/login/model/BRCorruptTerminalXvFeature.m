//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  BRCorruptTerminalXvFeature.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/8.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "BRCorruptTerminalXvFeature.h"

@implementation BRCorruptTerminalXvFeature


//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self careWithName:@"care"];
        });
    }
    return self;
}
//---init_e---

-(void)careWithName:(NSString *)care{
    NSArray *att = [NSArray arrayWithObjects:care, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger careIndex = [self getcareNumber];
    [str appendString:att[careIndex]];
    [self carecommandWithcare:@[@"caresye",
                                @"careprogarm",
                                @"care"] withDcareInfo:@{@"kecarey":@"vacarelue"}];
}
-(NSInteger)getcareNumber{
    NSArray *att = @[@"care"];
    return [att count]-1;
}

-(void)carecommandWithcare:(NSArray *)att withDcareInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"care"];
    data = nil;
    UILabel *label =  [self getcareLabelWithText:@"fucscare" withcareTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getcareLabelWithText:(NSString *)text withcareTitleColor:(UIColor *)color{
    UILabel *careLabel = [UILabel new];
    careLabel.text = text;
    careLabel.textColor = color;
    return careLabel;
}
-(UITableView *)initcareTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *careHeaderView = [UIView new];
    careHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:careHeaderView];
    UIView *careFootView = [UIView new];
    careFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:careFootView];
    return tableView;
}
-(void)initlocateContent{
    NSString *locatekey = [self getlocateDataSource:@"locate"];
    NSMutableDictionary *locatedic = [[NSMutableDictionary alloc]init];
    [locatedic setObject:@[@"locateop",@"plocateicarepi",@"uio_care"] forKey:locatekey];
    NSArray *attlocateary = @[locatedic];
    attlocateary = nil;

    UIView *view = [self getshowlocateView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getlocateSlider];
    slider = nil;

}
-(NSString *)getlocateDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"locate%@_care",str];
}

-(UIView *)getshowlocateView{
    UIView *showlocateView = [[UIView alloc]init];
    showlocateView.backgroundColor = [UIColor yellowColor];
    showlocateView.alpha = 0.5;
    return showlocateView;
}
-(UISlider *)getlocateSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
