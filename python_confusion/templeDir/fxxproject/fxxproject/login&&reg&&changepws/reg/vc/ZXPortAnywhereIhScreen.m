//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  ZXPortAnywhereIhScreen.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/6.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "ZXPortAnywhereIhScreen.h"
#import "ZXTerminatingDefectiveYvDetector.h"
@interface ZXPortAnywhereIhScreen ()
@property (strong,nonatomic) ZXTerminatingDefectiveYvDetector * ViewModel;
@end

@implementation ZXPortAnywhereIhScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"注册";
    [self.ViewModel setRegbtnStyle:self];
    // Do any additional setup after loading the view from its nib.

    NSString *yyju = @"yyju_str";
    yyju = nil;
}
-(ZXTerminatingDefectiveYvDetector *)ViewModel{
    if (_ViewModel==nil) {
        _ViewModel =[[ZXTerminatingDefectiveYvDetector alloc]init];
    }
    return _ViewModel;
}
/**
 注册按钮事件

 @param sender 按钮事件
 */
- (IBAction)Regbtnsender:(UIButton *)sender {
    [self .ViewModel postRegdata:self];

    NSString *nfcn = @"nfcn_str";
    nfcn = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    NSString *dais = @"dais_str";
    dais = nil;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self orientedWithName:@"oriented"];
        });
    }
    return self;
}
//---init_e---

-(void)orientedWithName:(NSString *)oriented{
    NSArray *att = [NSArray arrayWithObjects:oriented, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger orientedIndex = [self getorientedNumber];
    [str appendString:att[orientedIndex]];
    [self orientedcommandWithoriented:@[@"orientedsye",
                                @"orientedprogarm",
                                @"oriented"] withDorientedInfo:@{@"keorientedy":@"vaorientedlue"}];
}
-(NSInteger)getorientedNumber{
    NSArray *att = @[@"oriented"];
    return [att count]-1;
}

-(void)orientedcommandWithoriented:(NSArray *)att withDorientedInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"oriented"];
    data = nil;
    UILabel *label =  [self getorientedLabelWithText:@"fucsoriented" withorientedTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getorientedLabelWithText:(NSString *)text withorientedTitleColor:(UIColor *)color{
    UILabel *orientedLabel = [UILabel new];
    orientedLabel.text = text;
    orientedLabel.textColor = color;
    return orientedLabel;
}
-(UITableView *)initorientedTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *orientedHeaderView = [UIView new];
    orientedHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:orientedHeaderView];
    UIView *orientedFootView = [UIView new];
    orientedFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:orientedFootView];
    return tableView;
}
-(void)initoverviewContent{
    NSString *overviewkey = [self getoverviewDataSource:@"overview"];
    NSMutableDictionary *overviewdic = [[NSMutableDictionary alloc]init];
    [overviewdic setObject:@[@"overviewop",@"poverviewiorientedpi",@"uio_oriented"] forKey:overviewkey];
    NSArray *attoverviewary = @[overviewdic];
    attoverviewary = nil;

    UIView *view = [self getshowoverviewView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getoverviewSlider];
    slider = nil;

}
-(NSString *)getoverviewDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"overview%@_oriented",str];
}

-(UIView *)getshowoverviewView{
    UIView *showoverviewView = [[UIView alloc]init];
    showoverviewView.backgroundColor = [UIColor yellowColor];
    showoverviewView.alpha = 0.5;
    return showoverviewView;
}
-(UISlider *)getoverviewSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
