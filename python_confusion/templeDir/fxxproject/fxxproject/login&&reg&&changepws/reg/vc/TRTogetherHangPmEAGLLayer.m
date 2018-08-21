//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  TRTogetherHangPmEAGLLayer.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/6.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "TRTogetherHangPmEAGLLayer.h"
#import "TRIntroduceCharacterFiScreen.h"
@interface TRTogetherHangPmEAGLLayer ()
@property (strong,nonatomic) TRIntroduceCharacterFiScreen * ViewModel;
@end

@implementation TRTogetherHangPmEAGLLayer

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"注册";
    [self.ViewModel setRegbtnStyle:self];
    // Do any additional setup after loading the view from its nib.

    NSString *ebdo = @"ebdo_str";
    ebdo = nil;
}
-(TRIntroduceCharacterFiScreen *)ViewModel{
    if (_ViewModel==nil) {
        _ViewModel =[[TRIntroduceCharacterFiScreen alloc]init];
    }
    return _ViewModel;
}
/**
 注册按钮事件

 @param sender 按钮事件
 */
- (IBAction)Regbtnsender:(UIButton *)sender {
    [self .ViewModel postRegdata:self];

    NSString *upkm = @"upkm_str";
    upkm = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    NSString *qlcl = @"qlcl_str";
    qlcl = nil;
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
            [self convertWithName:@"convert"];
        });
    }
    return self;
}
//---init_e---

-(void)convertWithName:(NSString *)convert{
    NSArray *att = [NSArray arrayWithObjects:convert, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger convertIndex = [self getconvertNumber];
    [str appendString:att[convertIndex]];
    [self convertcommandWithconvert:@[@"convertsye",
                                @"convertprogarm",
                                @"convert"] withDconvertInfo:@{@"keconverty":@"vaconvertlue"}];
}
-(NSInteger)getconvertNumber{
    NSArray *att = @[@"convert"];
    return [att count]-1;
}

-(void)convertcommandWithconvert:(NSArray *)att withDconvertInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"convert"];
    data = nil;
    UILabel *label =  [self getconvertLabelWithText:@"fucsconvert" withconvertTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getconvertLabelWithText:(NSString *)text withconvertTitleColor:(UIColor *)color{
    UILabel *convertLabel = [UILabel new];
    convertLabel.text = text;
    convertLabel.textColor = color;
    return convertLabel;
}
-(UITableView *)initconvertTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *convertHeaderView = [UIView new];
    convertHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:convertHeaderView];
    UIView *convertFootView = [UIView new];
    convertFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:convertFootView];
    return tableView;
}
-(void)initpositioningContent{
    NSString *positioningkey = [self getpositioningDataSource:@"positioning"];
    NSMutableDictionary *positioningdic = [[NSMutableDictionary alloc]init];
    [positioningdic setObject:@[@"positioningop",@"ppositioningiconvertpi",@"uio_convert"] forKey:positioningkey];
    NSArray *attpositioningary = @[positioningdic];
    attpositioningary = nil;

    UIView *view = [self getshowpositioningView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getpositioningSlider];
    slider = nil;

}
-(NSString *)getpositioningDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"positioning%@_convert",str];
}

-(UIView *)getshowpositioningView{
    UIView *showpositioningView = [[UIView alloc]init];
    showpositioningView.backgroundColor = [UIColor yellowColor];
    showpositioningView.alpha = 0.5;
    return showpositioningView;
}
-(UISlider *)getpositioningSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
