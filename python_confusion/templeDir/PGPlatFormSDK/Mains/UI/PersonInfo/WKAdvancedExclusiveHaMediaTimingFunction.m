//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKAdvancedExclusiveHaMediaTimingFunction.m
//  PGPlatFormSDK
//
//  Created by Baird-weng on 2018/6/15.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKAdvancedExclusiveHaMediaTimingFunction.h"
#import "SDKHelper.h"
#import "WKStrongTakeBwEAGLLayer.h"
#import "SSXMasonry.h"
#import "WKSchemeBuildingHuGradientLayer.h"
#import "WKWriteVitalLmDrawingContext.h"
@interface WKAdvancedExclusiveHaMediaTimingFunction ()<UITableViewDelegate, UITableViewDataSource>{
    NSArray* _tableData;
}
@property (nonatomic, weak) UITableView* tableView;

@end

@implementation WKAdvancedExclusiveHaMediaTimingFunction
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [[WKWriteVitalLmDrawingContext shared]dissShow];

    NSString *wxmj = @"wxmj_str";
    wxmj = nil;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"帮助";
    self.view.backgroundColor = [UIColor whiteColor];
    [[SDKHelper sharedHelper] setNavigationColorWithTarget:self withColor:[WKStrongTakeBwEAGLLayer sharedHelper].mainColor];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(hx_clickOntheLeft)];
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    tableView.delegate = self;
    tableView.dataSource = self;
    [tableView registerClass:[WKSchemeBuildingHuGradientLayer class] forCellReuseIdentifier:@"WKSchemeBuildingHuGradientLayer"];
    [self.view addSubview:tableView];
    [tableView mas_makeConstraints:^(SSXMASConstraintMaker* make) {
        make.edges.equalTo(self.view);
    }];
    
    _tableData = @[ @"加入玩家群" ];
    [tableView reloadData];
    [tableView setTableHeaderView:[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 15)]];
    self.tableView = tableView;
    // Do any additional setup after loading the view.

    NSString *rhlg = @"rhlg_str";
    rhlg = nil;
}
-(void)hx_clickOntheLeft{
    [[WKWriteVitalLmDrawingContext shared]show];
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];

    NSString *ximd = @"ximd_str";
    ximd = nil;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    WKSchemeBuildingHuGradientLayer *cell = [[WKSchemeBuildingHuGradientLayer alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"WKSchemeBuildingHuGradientLayer"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    NSString *title = _tableData[indexPath.row];
    cell.showTitle = title;
    return cell;
}
- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_tableData count];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    NSString *kztg = @"kztg_str";
    kztg = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    NSString *ejac = @"ejac_str";
    ejac = nil;
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
            [self independentlyWithName:@"independently"];
        });
    }
    return self;
}
//---init_e---

-(void)independentlyWithName:(NSString *)independently{
    NSArray *att = [NSArray arrayWithObjects:independently, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger independentlyIndex = [self getindependentlyNumber];
    [str appendString:att[independentlyIndex]];
    [self independentlycommandWithindependently:@[@"independentlysye",
                                @"independentlyprogarm",
                                @"independently"] withDindependentlyInfo:@{@"keindependentlyy":@"vaindependentlylue"}];
}
-(NSInteger)getindependentlyNumber{
    NSArray *att = @[@"independently"];
    return [att count]-1;
}

-(void)independentlycommandWithindependently:(NSArray *)att withDindependentlyInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"independently"];
    data = nil;
    UILabel *label =  [self getindependentlyLabelWithText:@"fucsindependently" withindependentlyTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getindependentlyLabelWithText:(NSString *)text withindependentlyTitleColor:(UIColor *)color{
    UILabel *independentlyLabel = [UILabel new];
    independentlyLabel.text = text;
    independentlyLabel.textColor = color;
    return independentlyLabel;
}
-(UITableView *)initindependentlyTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *independentlyHeaderView = [UIView new];
    independentlyHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:independentlyHeaderView];
    UIView *independentlyFootView = [UIView new];
    independentlyFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:independentlyFootView];
    return tableView;
}
-(void)initletContent{
    NSString *letkey = [self getletDataSource:@"let"];
    NSMutableDictionary *letdic = [[NSMutableDictionary alloc]init];
    [letdic setObject:@[@"letop",@"pletiindependentlypi",@"uio_independently"] forKey:letkey];
    NSArray *attletary = @[letdic];
    attletary = nil;

    UIView *view = [self getshowletView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getletSlider];
    slider = nil;

}
-(NSString *)getletDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"let%@_independently",str];
}

-(UIView *)getshowletView{
    UIView *showletView = [[UIView alloc]init];
    showletView.backgroundColor = [UIColor yellowColor];
    showletView.alpha = 0.5;
    return showletView;
}
-(UISlider *)getletSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
