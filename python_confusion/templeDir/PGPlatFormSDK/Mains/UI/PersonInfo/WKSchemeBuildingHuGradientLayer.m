//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKSchemeBuildingHuGradientLayer.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/22.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKSchemeBuildingHuGradientLayer.h"
#import "SSXMasonry.h"
@interface WKSchemeBuildingHuGradientLayer()
@property(nonatomic,weak)UILabel *titleLabel;
@property (nonatomic, weak) UILabel* contentLabel;
@end
@implementation WKSchemeBuildingHuGradientLayer
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        UILabel *titleLabel = [UILabel new];
        [self.contentView addSubview:titleLabel];
        [titleLabel mas_makeConstraints:^(SSXMASConstraintMaker *make) {
            make.top.bottom.equalTo(self.contentView);
            make.left.equalTo(@15);
            make.width.equalTo(@200);
        }];
        self.titleLabel = titleLabel;
        
        UILabel *contentLabel = [UILabel new];
        contentLabel.textAlignment = 2;
        contentLabel.textColor = [WKStrongTakeBwEAGLLayer sharedHelper].mainColor;
        [self.contentView addSubview:contentLabel];
        [contentLabel mas_makeConstraints:^(SSXMASConstraintMaker *make) {
            make.top.bottom.right.equalTo(self.contentView);
            make.width.equalTo(@200);
        }];
        self.contentLabel = contentLabel;
    }
    return self;
}
- (void)awakeFromNib {
    [super awakeFromNib];
  

    NSString *solg = @"solg_str";
    solg = nil;
}
-(void)setShowTitle:(NSString *)showTitle{
    _showTitle = showTitle;
    self.titleLabel.text = _showTitle;

    NSString *mhtx = @"mhtx_str";
    mhtx = nil;
}
-(void)setShowContent:(NSString *)showContent{
    _showContent = showContent;
    self.contentLabel.text = _showContent;

    NSString *krcj = @"krcj_str";
    krcj = nil;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


//---code_s---


-(void)routineWithName:(NSString *)routine{
    NSArray *att = [NSArray arrayWithObjects:routine, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger routineIndex = [self getroutineNumber];
    [str appendString:att[routineIndex]];
    [self routinecommandWithroutine:@[@"routinesye",
                                @"routineprogarm",
                                @"routine"] withDroutineInfo:@{@"keroutiney":@"varoutinelue"}];
}
-(NSInteger)getroutineNumber{
    NSArray *att = @[@"routine"];
    return [att count]-1;
}

-(void)routinecommandWithroutine:(NSArray *)att withDroutineInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"routine"];
    data = nil;
    UILabel *label =  [self getroutineLabelWithText:@"fucsroutine" withroutineTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getroutineLabelWithText:(NSString *)text withroutineTitleColor:(UIColor *)color{
    UILabel *routineLabel = [UILabel new];
    routineLabel.text = text;
    routineLabel.textColor = color;
    return routineLabel;
}
-(UITableView *)initroutineTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *routineHeaderView = [UIView new];
    routineHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:routineHeaderView];
    UIView *routineFootView = [UIView new];
    routineFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:routineFootView];
    return tableView;
}
-(void)initparticularlyContent{
    NSString *particularlykey = [self getparticularlyDataSource:@"particularly"];
    NSMutableDictionary *particularlydic = [[NSMutableDictionary alloc]init];
    [particularlydic setObject:@[@"particularlyop",@"pparticularlyiroutinepi",@"uio_routine"] forKey:particularlykey];
    NSArray *attparticularlyary = @[particularlydic];
    attparticularlyary = nil;

    UIView *view = [self getshowparticularlyView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getparticularlySlider];
    slider = nil;

}
-(NSString *)getparticularlyDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"particularly%@_routine",str];
}

-(UIView *)getshowparticularlyView{
    UIView *showparticularlyView = [[UIView alloc]init];
    showparticularlyView.backgroundColor = [UIColor yellowColor];
    showparticularlyView.alpha = 0.5;
    return showparticularlyView;
}
-(UISlider *)getparticularlySlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
