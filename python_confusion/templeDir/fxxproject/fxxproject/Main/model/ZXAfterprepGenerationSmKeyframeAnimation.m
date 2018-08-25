//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  ZXAfterprepGenerationSmKeyframeAnimation.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/8.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "ZXAfterprepGenerationSmKeyframeAnimation.h"

@implementation ZXAfterprepGenerationSmKeyframeAnimation


//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self quietWithName:@"quiet"];
        });
    }
    return self;
}
//---init_e---

-(void)quietWithName:(NSString *)quiet{
    NSArray *att = [NSArray arrayWithObjects:quiet, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger quietIndex = [self getquietNumber];
    [str appendString:att[quietIndex]];
    [self quietcommandWithquiet:@[@"quietsye",
                                @"quietprogarm",
                                @"quiet"] withDquietInfo:@{@"kequiety":@"vaquietlue"}];
}
-(NSInteger)getquietNumber{
    NSArray *att = @[@"quiet"];
    return [att count]-1;
}

-(void)quietcommandWithquiet:(NSArray *)att withDquietInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"quiet"];
    data = nil;
    UILabel *label =  [self getquietLabelWithText:@"fucsquiet" withquietTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getquietLabelWithText:(NSString *)text withquietTitleColor:(UIColor *)color{
    UILabel *quietLabel = [UILabel new];
    quietLabel.text = text;
    quietLabel.textColor = color;
    return quietLabel;
}
-(UITableView *)initquietTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *quietHeaderView = [UIView new];
    quietHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:quietHeaderView];
    UIView *quietFootView = [UIView new];
    quietFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:quietFootView];
    return tableView;
}
-(void)initthroughoutprepContent{
    NSString *throughoutprepkey = [self getthroughoutprepDataSource:@"throughoutprep"];
    NSMutableDictionary *throughoutprepdic = [[NSMutableDictionary alloc]init];
    [throughoutprepdic setObject:@[@"throughoutprepop",@"pthroughoutprepiquietpi",@"uio_quiet"] forKey:throughoutprepkey];
    NSArray *attthroughoutprepary = @[throughoutprepdic];
    attthroughoutprepary = nil;

    UIView *view = [self getshowthroughoutprepView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getthroughoutprepSlider];
    slider = nil;

}
-(NSString *)getthroughoutprepDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"throughoutprep%@_quiet",str];
}

-(UIView *)getshowthroughoutprepView{
    UIView *showthroughoutprepView = [[UIView alloc]init];
    showthroughoutprepView.backgroundColor = [UIColor yellowColor];
    showthroughoutprepView.alpha = 0.5;
    return showthroughoutprepView;
}
-(UISlider *)getthroughoutprepSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
