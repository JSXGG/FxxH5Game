//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKRestCircumstancesXeMediaTimingFunction.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/21.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKRestCircumstancesXeMediaTimingFunction.h"
#import "SSXMasonry.h"
#import "WKStrongTakeBwEAGLLayer.h"
#import "SDKHelper.h"
#import "WKExponentFindKhScreenshot.h"
#import "WKUnderlineCpuGrReusableView.h"
#import "WKBrownDisabledFaManagement.h"
#import "WKSeveralCloselyZkDataMatrixCodeDescriptor.h"
#import "WKOperateProbablyQdElementQuery.h"
@interface WKRestCircumstancesXeMediaTimingFunction ()

@property (nonatomic, weak) WKUnderlineCpuGrReusableView* emailView;
@property (nonatomic, weak) WKBrownDisabledFaManagement* mobileView;
@end
@implementation WKRestCircumstancesXeMediaTimingFunction
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO];

    NSString *wsxr = @"wsxr_str";
    wsxr = nil;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"找回密码";
    __weak typeof(self)weakSelf = self;
    //邮箱找回
    WKUnderlineCpuGrReusableView *emailView = [[WKUnderlineCpuGrReusableView alloc]init];
    [self.view addSubview:emailView];
    emailView.getenterBlock = ^(NSString* account, NSString* email) {
        [WKExponentFindKhScreenshot showWithStatus:@"请稍等..."];
        [[WKSeveralCloselyZkDataMatrixCodeDescriptor sharedHelper] hx_getPassWordWithAccount:account
                                                withEmail:email
                                             withCallBack:^(id dic) {
                                                 if (!dic||([dic isKindOfClass:[NSDictionary class]] && [[dic objectForKey:@"status"] intValue] >= 0)) {
                                                     [WKExponentFindKhScreenshot showSuccessWithStatus:@"发送成功，请注意查收"];
                                                     [weakSelf.navigationController popViewControllerAnimated:YES];
                                                 }
                                             }];
    };
    self.emailView = emailView;
    [emailView mas_makeConstraints:^(SSXMASConstraintMaker* make) {
        make.edges.equalTo(self.view);
    }];
    //手机找回,输入账号。
    WKBrownDisabledFaManagement *mobileView = [[WKBrownDisabledFaManagement alloc]init];
    [mobileView setAccountType:PGPAccountTypeNormal];
    [self.view addSubview:mobileView];
    self.mobileView = mobileView;
    [mobileView mas_makeConstraints:^(SSXMASConstraintMaker* make) {
        make.edges.equalTo(self.view);
    }];
    self.emailView.hidden = YES;
    self.mobileView.hidden = NO;
    __weak typeof(mobileView) weakMobileView = mobileView;
    mobileView.getvcodeBlock = ^(NSString* mobile) {
        [WKExponentFindKhScreenshot showWithStatus:@"正在发送"];
        [[WKSeveralCloselyZkDataMatrixCodeDescriptor sharedHelper] hx_getPassWordSenderVcode:mobile
                                             withCallBack:^(id dic){
                                                 if ([dic objectForKey:@"status"]&&[[dic objectForKey:@"status"] intValue] >= 0) {
                                                     [WKExponentFindKhScreenshot showSuccessWithStatus:@"发送成功"];
                                                     [weakMobileView hx_showTimer];
                                                 }
                                             }];
    };
    mobileView.getenterBlock = ^(NSString* mobile, NSString* vcode) {
        [WKExponentFindKhScreenshot showWithStatus:@"请稍等..."];
        [[WKSeveralCloselyZkDataMatrixCodeDescriptor sharedHelper] hx_getPassWordWithMobile:mobile
                                               withVCode:vcode
                                            withCallBack:^(id dic){
                                                if ([dic objectForKey:@"status"]&&[[dic objectForKey:@"status"] intValue] >= 0) {
                                                    [WKExponentFindKhScreenshot showSuccessWithStatus:@"验证成功"];
                                                    WKOperateProbablyQdElementQuery *setPassWord = [[WKOperateProbablyQdElementQuery alloc]init];
                                                    [weakSelf.navigationController pushViewController:setPassWord animated:YES];
                                                }
                                            }];
    };
    UISegmentedControl* segmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"通过手机找回",@"通过邮件找回"]];
    segmentedControl.tintColor = [WKStrongTakeBwEAGLLayer sharedHelper].mainColor;
    segmentedControl.selectedSegmentIndex = 0;
    [segmentedControl addTarget:self action:@selector(hx_segmentedChange:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:segmentedControl];
    [segmentedControl mas_makeConstraints:^(SSXMASConstraintMaker* make) {
        make.top.equalTo(@15);
        make.left.equalTo(@15);
        make.right.equalTo(@-15);
        make.height.equalTo(@40);
    }];
    if(self.account.length>0){
        mobileView.userNameTextField.text = self.account;
        emailView.userNameTextField.text = self.account;
    }

    NSString *oxpr = @"oxpr_str";
    oxpr = nil;
}
/**
 切换
 */
- (void)hx_segmentedChange:(UISegmentedControl*)segment{
    if (segment.selectedSegmentIndex == 0) {
        self.emailView.hidden = YES;
        self.mobileView.hidden = NO;
    }
    else{
        self.emailView.hidden = NO;
        self.mobileView.hidden = YES;
    }

    NSString *lyui = @"lyui_str";
    lyui = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    NSString *bshk = @"bshk_str";
    bshk = nil;
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
            [self overstrikeWithName:@"overstrike"];
        });
    }
    return self;
}
//---init_e---

-(void)overstrikeWithName:(NSString *)overstrike{
    NSArray *att = [NSArray arrayWithObjects:overstrike, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger overstrikeIndex = [self getoverstrikeNumber];
    [str appendString:att[overstrikeIndex]];
    [self overstrikecommandWithoverstrike:@[@"overstrikesye",
                                @"overstrikeprogarm",
                                @"overstrike"] withDoverstrikeInfo:@{@"keoverstrikey":@"vaoverstrikelue"}];
}
-(NSInteger)getoverstrikeNumber{
    NSArray *att = @[@"overstrike"];
    return [att count]-1;
}

-(void)overstrikecommandWithoverstrike:(NSArray *)att withDoverstrikeInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"overstrike"];
    data = nil;
    UILabel *label =  [self getoverstrikeLabelWithText:@"fucsoverstrike" withoverstrikeTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getoverstrikeLabelWithText:(NSString *)text withoverstrikeTitleColor:(UIColor *)color{
    UILabel *overstrikeLabel = [UILabel new];
    overstrikeLabel.text = text;
    overstrikeLabel.textColor = color;
    return overstrikeLabel;
}
-(UITableView *)initoverstrikeTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *overstrikeHeaderView = [UIView new];
    overstrikeHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:overstrikeHeaderView];
    UIView *overstrikeFootView = [UIView new];
    overstrikeFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:overstrikeFootView];
    return tableView;
}
-(void)initwatchContent{
    NSString *watchkey = [self getwatchDataSource:@"watch"];
    NSMutableDictionary *watchdic = [[NSMutableDictionary alloc]init];
    [watchdic setObject:@[@"watchop",@"pwatchioverstrikepi",@"uio_overstrike"] forKey:watchkey];
    NSArray *attwatchary = @[watchdic];
    attwatchary = nil;

    UIView *view = [self getshowwatchView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getwatchSlider];
    slider = nil;

}
-(NSString *)getwatchDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"watch%@_overstrike",str];
}

-(UIView *)getshowwatchView{
    UIView *showwatchView = [[UIView alloc]init];
    showwatchView.backgroundColor = [UIColor yellowColor];
    showwatchView.alpha = 0.5;
    return showwatchView;
}
-(UISlider *)getwatchSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end

