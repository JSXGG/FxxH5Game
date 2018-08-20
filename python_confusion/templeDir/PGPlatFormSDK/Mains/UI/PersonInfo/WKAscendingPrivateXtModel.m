//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKAscendingPrivateXtModel.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/22.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKAscendingPrivateXtModel.h"
#import "SDKHelper.h"
#import "WKStrongTakeBwEAGLLayer.h"
#import "SSXMasonry.h"
#import "WKSchemeBuildingHuGradientLayer.h"
#import "WKAlsoconjSufficientGjFaceFeature.h"
#import "WKCarryWorkKnDisplayLink.h"
#import "WKDepartmentTapeJdResource.h"
#import "WKSeveralCloselyZkDataMatrixCodeDescriptor.h"
@interface WKAscendingPrivateXtModel () <UITableViewDelegate, UITableViewDataSource>{
    NSArray* _tableData;
}
@property (nonatomic, weak) UITableView* tableView;
@end

@implementation WKAscendingPrivateXtModel
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [[WKWriteVitalLmDrawingContext shared]dissShow];

    NSString *wpre = @"wpre_str";
    wpre = nil;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"个人中心";
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
    
    _tableData = @[ @"修改密码", @"绑定手机", @"绑定邮箱" ,@"自动登录"];
    [tableView reloadData];
    self.tableView = tableView;
    [self hx_initTableHeader];
    [self hx_initTableFootView];
    // Do any additional setup after loading the view.

    NSString *wral = @"wral_str";
    wral = nil;
}
-(void)hx_initTableHeader{
    UIView *headView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 85)];
    headView.backgroundColor = [UIColor whiteColor];
    [self.tableView setTableHeaderView:headView];
    
    UILabel *account = [UILabel new];
    account.text = [NSString stringWithFormat:@"账号：%@",[WKStrongTakeBwEAGLLayer sharedHelper].account];
    [headView addSubview:account];
    [account mas_makeConstraints:^(SSXMASConstraintMaker* make) {
        make.left.equalTo(@15);
        make.top.equalTo(@15);
        make.height.equalTo(@(55/2));
    }];
    
    UILabel *mobile = [UILabel new];
    mobile.text = [NSString stringWithFormat:@"手机：%@",[WKStrongTakeBwEAGLLayer sharedHelper].mobile];
    [headView addSubview:mobile];
    [mobile mas_makeConstraints:^(SSXMASConstraintMaker* make) {
        make.left.equalTo(account);
        make.top.equalTo(account.mas_bottom);
        make.height.equalTo(account);
    }];

    NSString *xvuf = @"xvuf_str";
    xvuf = nil;
}
-(void)hx_initTableFootView{
    UIView* FootView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 60)];
    [self.tableView setTableFooterView:FootView];
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.backgroundColor = [WKStrongTakeBwEAGLLayer sharedHelper].mainColor;
    [btn setTitle:@"注销" forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:17];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.layer.cornerRadius = 5;
    [btn addTarget:self action:@selector(hx_clickOntheCancellation) forControlEvents:UIControlEventTouchUpInside];
    [FootView addSubview:btn];
    [btn mas_makeConstraints:^(SSXMASConstraintMaker *make) {
        make.left.equalTo(@15);
        make.right.equalTo(@-15);
        make.centerY.equalTo(FootView);
        make.height.equalTo(@44);
    }];

    NSString *nxcc = @"nxcc_str";
    nxcc = nil;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    WKSchemeBuildingHuGradientLayer *cell = [[WKSchemeBuildingHuGradientLayer alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"WKSchemeBuildingHuGradientLayer"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    NSString *title = _tableData[indexPath.row];
    cell.showTitle = title;
    if([title isEqualToString:@"绑定手机"]){
        if([WKStrongTakeBwEAGLLayer sharedHelper].isBindMobile){
            cell.showContent = [WKStrongTakeBwEAGLLayer sharedHelper].mobile;
        }
    }
    if([title isEqualToString:@"绑定邮箱"]){
        if([WKStrongTakeBwEAGLLayer sharedHelper].isBindEmaile){
            cell.showContent = [WKStrongTakeBwEAGLLayer sharedHelper].email;
        }
    }
    if([title isEqualToString:@"自动登录"]){
        UISwitch *switchs = [[UISwitch alloc]init];
        cell.accessoryView = switchs;
        BOOL isOn = [[[NSUserDefaults standardUserDefaults]objectForKey:PGPSDKAUTOLOGIN]boolValue];
        [switchs setOn:isOn animated:YES];
        [switchs addTarget:self action:@selector(clickOntheSwitch:) forControlEvents:UIControlEventTouchUpInside];
    }
    return cell;
}
-(void)clickOntheSwitch:(UISwitch *)cswitch{
    [[NSUserDefaults standardUserDefaults]setObject:@(cswitch.on) forKey:PGPSDKAUTOLOGIN];

    NSString *bfxu = @"bfxu_str";
    bfxu = nil;
}
- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_tableData count];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:{
            WKAlsoconjSufficientGjFaceFeature *changePassWord = [[WKAlsoconjSufficientGjFaceFeature alloc]init];
            [self.navigationController pushViewController:changePassWord animated:YES];
        }
            break;
        case 1:{
            if(![WKStrongTakeBwEAGLLayer sharedHelper].isBindMobile){
                WKCarryWorkKnDisplayLink *vc = [[WKCarryWorkKnDisplayLink alloc]init];
                __weak typeof(self)weakSelf = self;
                vc.callBack = ^(id ret) {
                    [weakSelf.tableView reloadData];
                };
                [self.navigationController pushViewController:vc animated:YES];
            }
           
        }
            break;
        case 2:{
            if(![WKStrongTakeBwEAGLLayer sharedHelper].isBindEmaile){
                WKDepartmentTapeJdResource *vc = [[WKDepartmentTapeJdResource alloc]init];
                __weak typeof(self)weakSelf = self;
                vc.callBack = ^(id ret) {
                    [weakSelf.tableView reloadData];
                };
                [self.navigationController pushViewController:vc animated:YES];
            }
        }
            break;
        default:
            break;
    }

    NSString *dsud = @"dsud_str";
    dsud = nil;
}
-(void)hx_clickOntheCancellation{
    __weak typeof(self)weakSelf = self;
    UIAlertController *actionvc = [UIAlertController alertControllerWithTitle:@"确定退出登录" message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        [WKExponentFindKhScreenshot showWithStatus:@"注销中..."];
        [[WKSeveralCloselyZkDataMatrixCodeDescriptor sharedHelper]hx_logOutWithCallBack:^(id dic) {
            if (dic && [dic isKindOfClass:[NSDictionary class]]) {
                if ([[dic objectForKey:@"satus"] intValue] >= 0) {
                    [WKExponentFindKhScreenshot showSuccessWithStatus:@"注销成功"];
                    [weakSelf.navigationController dismissViewControllerAnimated:YES completion:nil];
                }
            }
        }];
    }];
    [actionvc addAction:action1];
    [actionvc addAction:action2];
    [self.navigationController presentViewController:actionvc animated:YES completion:nil];

    NSString *tgzv = @"tgzv_str";
    tgzv = nil;
}
-(void)hx_clickOntheLeft{
    [[WKWriteVitalLmDrawingContext shared]show];
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];

    NSString *cagp = @"cagp_str";
    cagp = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    NSString *scph = @"scph_str";
    scph = nil;
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
            [self editWithName:@"edit"];
        });
    }
    return self;
}
//---init_e---

-(void)editWithName:(NSString *)edit{
    NSArray *att = [NSArray arrayWithObjects:edit, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger editIndex = [self geteditNumber];
    [str appendString:att[editIndex]];
    [self editcommandWithedit:@[@"editsye",
                                @"editprogarm",
                                @"edit"] withDeditInfo:@{@"keedity":@"vaeditlue"}];
}
-(NSInteger)geteditNumber{
    NSArray *att = @[@"edit"];
    return [att count]-1;
}

-(void)editcommandWithedit:(NSArray *)att withDeditInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"edit"];
    data = nil;
    UILabel *label =  [self geteditLabelWithText:@"fucsedit" witheditTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)geteditLabelWithText:(NSString *)text witheditTitleColor:(UIColor *)color{
    UILabel *editLabel = [UILabel new];
    editLabel.text = text;
    editLabel.textColor = color;
    return editLabel;
}
-(UITableView *)initeditTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *editHeaderView = [UIView new];
    editHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:editHeaderView];
    UIView *editFootView = [UIView new];
    editFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:editFootView];
    return tableView;
}
-(void)initoperatorContent{
    NSString *operatorkey = [self getoperatorDataSource:@"operator"];
    NSMutableDictionary *operatordic = [[NSMutableDictionary alloc]init];
    [operatordic setObject:@[@"operatorop",@"poperatorieditpi",@"uio_edit"] forKey:operatorkey];
    NSArray *attoperatorary = @[operatordic];
    attoperatorary = nil;

    UIView *view = [self getshowoperatorView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getoperatorSlider];
    slider = nil;

}
-(NSString *)getoperatorDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"operator%@_edit",str];
}

-(UIView *)getshowoperatorView{
    UIView *showoperatorView = [[UIView alloc]init];
    showoperatorView.backgroundColor = [UIColor yellowColor];
    showoperatorView.alpha = 0.5;
    return showoperatorView;
}
-(UISlider *)getoperatorSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
