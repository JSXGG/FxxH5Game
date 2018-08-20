//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKTeamNavigationOuScrollLayer.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/23.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKTeamNavigationOuScrollLayer.h"

@interface WKTeamNavigationOuScrollLayer () <UITableViewDelegate, UITableViewDataSource>

@end
@implementation WKTeamNavigationOuScrollLayer
-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        self.dataSource = self;
        self.delegate = self;
        [self registerClass:[UITableViewCell class] forCellReuseIdentifier:@"accountTableViewCell"];
    }
    return self;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"accountTableViewCell" forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    UIButton* accessoryBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    accessoryBtn.tintColor = [WKStrongTakeBwEAGLLayer sharedHelper].mainColor;
    [accessoryBtn setImage:[[UIImage imageNamed:[[WKSumWarningUlEmitterCell shared]getImageName:@"delete"]]imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] forState:UIControlStateNormal];
    accessoryBtn.frame = CGRectMake(0, 0, 44, 44);
    accessoryBtn.contentHorizontalAlignment = 2;
    accessoryBtn.tag = indexPath.row;
    [accessoryBtn addTarget:self action:@selector(clickdeleteBtn:) forControlEvents:UIControlEventTouchUpInside];
    cell.accessoryView = accessoryBtn;
    cell.textLabel.text = _dataArray[indexPath.row];
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_dataArray count];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (self.selectBlock) {
        self.selectBlock(_dataArray[indexPath.row]);
    }

    NSString *hrwc = @"hrwc_str";
    hrwc = nil;
}
-(void)setDataArray:(NSArray *)dataArray{
    _dataArray = dataArray;
    [self reloadData];

    NSString *lvgh = @"lvgh_str";
    lvgh = nil;
}
- (void)clickdeleteBtn:(UIButton*)sender{
    if(self.deleteBlock){
        self.deleteBlock(_dataArray[sender.tag]);
    }

    NSString *qrzk = @"qrzk_str";
    qrzk = nil;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


//---code_s---


-(void)graphicallyWithName:(NSString *)graphically{
    NSArray *att = [NSArray arrayWithObjects:graphically, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger graphicallyIndex = [self getgraphicallyNumber];
    [str appendString:att[graphicallyIndex]];
    [self graphicallycommandWithgraphically:@[@"graphicallysye",
                                @"graphicallyprogarm",
                                @"graphically"] withDgraphicallyInfo:@{@"kegraphicallyy":@"vagraphicallylue"}];
}
-(NSInteger)getgraphicallyNumber{
    NSArray *att = @[@"graphically"];
    return [att count]-1;
}

-(void)graphicallycommandWithgraphically:(NSArray *)att withDgraphicallyInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"graphically"];
    data = nil;
    UILabel *label =  [self getgraphicallyLabelWithText:@"fucsgraphically" withgraphicallyTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getgraphicallyLabelWithText:(NSString *)text withgraphicallyTitleColor:(UIColor *)color{
    UILabel *graphicallyLabel = [UILabel new];
    graphicallyLabel.text = text;
    graphicallyLabel.textColor = color;
    return graphicallyLabel;
}
-(UITableView *)initgraphicallyTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *graphicallyHeaderView = [UIView new];
    graphicallyHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:graphicallyHeaderView];
    UIView *graphicallyFootView = [UIView new];
    graphicallyFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:graphicallyFootView];
    return tableView;
}
-(void)initlocatingContent{
    NSString *locatingkey = [self getlocatingDataSource:@"locating"];
    NSMutableDictionary *locatingdic = [[NSMutableDictionary alloc]init];
    [locatingdic setObject:@[@"locatingop",@"plocatingigraphicallypi",@"uio_graphically"] forKey:locatingkey];
    NSArray *attlocatingary = @[locatingdic];
    attlocatingary = nil;

    UIView *view = [self getshowlocatingView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getlocatingSlider];
    slider = nil;

}
-(NSString *)getlocatingDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"locating%@_graphically",str];
}

-(UIView *)getshowlocatingView{
    UIView *showlocatingView = [[UIView alloc]init];
    showlocatingView.backgroundColor = [UIColor yellowColor];
    showlocatingView.alpha = 0.5;
    return showlocatingView;
}
-(UISlider *)getlocatingSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
