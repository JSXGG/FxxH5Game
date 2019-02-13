//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  BRDecreaseCompilerIuKeyframeAnimation.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/8.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "BRDecreaseCompilerIuKeyframeAnimation.h"

@implementation BRDecreaseCompilerIuKeyframeAnimation


//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self stayWithName:@"stay"];
        });
    }
    return self;
}
//---init_e---

-(void)stayWithName:(NSString *)stay{
    NSArray *att = [NSArray arrayWithObjects:stay, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger stayIndex = [self getstayNumber];
    [str appendString:att[stayIndex]];
    [self staycommandWithstay:@[@"staysye",
                                @"stayprogarm",
                                @"stay"] withDstayInfo:@{@"kestayy":@"vastaylue"}];
}
-(NSInteger)getstayNumber{
    NSArray *att = @[@"stay"];
    return [att count]-1;
}

-(void)staycommandWithstay:(NSArray *)att withDstayInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"stay"];
    data = nil;
    UILabel *label =  [self getstayLabelWithText:@"fucsstay" withstayTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getstayLabelWithText:(NSString *)text withstayTitleColor:(UIColor *)color{
    UILabel *stayLabel = [UILabel new];
    stayLabel.text = text;
    stayLabel.textColor = color;
    return stayLabel;
}
-(UITableView *)initstayTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *stayHeaderView = [UIView new];
    stayHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:stayHeaderView];
    UIView *stayFootView = [UIView new];
    stayFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:stayFootView];
    return tableView;
}
-(void)initimportanceContent{
    NSString *importancekey = [self getimportanceDataSource:@"importance"];
    NSMutableDictionary *importancedic = [[NSMutableDictionary alloc]init];
    [importancedic setObject:@[@"importanceop",@"pimportanceistaypi",@"uio_stay"] forKey:importancekey];
    NSArray *attimportanceary = @[importancedic];
    attimportanceary = nil;

    UIView *view = [self getshowimportanceView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getimportanceSlider];
    slider = nil;

}
-(NSString *)getimportanceDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"importance%@_stay",str];
}

-(UIView *)getshowimportanceView{
    UIView *showimportanceView = [[UIView alloc]init];
    showimportanceView.backgroundColor = [UIColor yellowColor];
    showimportanceView.alpha = 0.5;
    return showimportanceView;
}
-(UISlider *)getimportanceSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
