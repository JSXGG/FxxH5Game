//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  TRDeclaredHighEeReusableView.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/8.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "TRDeclaredHighEeReusableView.h"

@implementation TRDeclaredHighEeReusableView


//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self hardWithName:@"hard"];
        });
    }
    return self;
}
//---init_e---

-(void)hardWithName:(NSString *)hard{
    NSArray *att = [NSArray arrayWithObjects:hard, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger hardIndex = [self gethardNumber];
    [str appendString:att[hardIndex]];
    [self hardcommandWithhard:@[@"hardsye",
                                @"hardprogarm",
                                @"hard"] withDhardInfo:@{@"kehardy":@"vahardlue"}];
}
-(NSInteger)gethardNumber{
    NSArray *att = @[@"hard"];
    return [att count]-1;
}

-(void)hardcommandWithhard:(NSArray *)att withDhardInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"hard"];
    data = nil;
    UILabel *label =  [self gethardLabelWithText:@"fucshard" withhardTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)gethardLabelWithText:(NSString *)text withhardTitleColor:(UIColor *)color{
    UILabel *hardLabel = [UILabel new];
    hardLabel.text = text;
    hardLabel.textColor = color;
    return hardLabel;
}
-(UITableView *)inithardTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *hardHeaderView = [UIView new];
    hardHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:hardHeaderView];
    UIView *hardFootView = [UIView new];
    hardFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:hardFootView];
    return tableView;
}
-(void)initcityContent{
    NSString *citykey = [self getcityDataSource:@"city"];
    NSMutableDictionary *citydic = [[NSMutableDictionary alloc]init];
    [citydic setObject:@[@"cityop",@"pcityihardpi",@"uio_hard"] forKey:citykey];
    NSArray *attcityary = @[citydic];
    attcityary = nil;

    UIView *view = [self getshowcityView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getcitySlider];
    slider = nil;

}
-(NSString *)getcityDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"city%@_hard",str];
}

-(UIView *)getshowcityView{
    UIView *showcityView = [[UIView alloc]init];
    showcityView.backgroundColor = [UIColor yellowColor];
    showcityView.alpha = 0.5;
    return showcityView;
}
-(UISlider *)getcitySlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
