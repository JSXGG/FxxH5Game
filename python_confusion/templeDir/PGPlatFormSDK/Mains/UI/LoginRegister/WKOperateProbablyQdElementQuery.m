//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKOperateProbablyQdElementQuery.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/26.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKOperateProbablyQdElementQuery.h"
#import "SSXMasonry.h"
#import "WKStrongTakeBwEAGLLayer.h"
#import "WKSeveralCloselyZkDataMatrixCodeDescriptor.h"
#import "WKExponentFindKhScreenshot.h"
#import "WKSearchExceptionXgScreenshot.h"
@interface WKOperateProbablyQdElementQuery ()
@property (nonatomic, weak) UIView* loginView;
@property (nonatomic, weak) UIView* lineView;
@property (nonatomic, weak) UITextField* passWordTextField;
@property (nonatomic, weak) UITextField* passWordTextField2;
@property (nonatomic, weak) UIButton* loginBtn;
@end

@implementation WKOperateProbablyQdElementQuery

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"设置密码";
    self.view.backgroundColor = [UIColor whiteColor];
    [self hx_initLoginView];
    [self hx_initPassWordTextField];
    [self hx_initPassWordTextField2];
    [self hx_initEnter];
    // Do any additional setup after loading the view.

    NSString *vwla = @"vwla_str";
    vwla = nil;
}
-(void)hx_initLoginView{
    UIView *LoginView = [UIView new];
    LoginView.layer.cornerRadius = 5;
    LoginView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:LoginView];
    [LoginView mas_makeConstraints:^(SSXMASConstraintMaker* make) {
        make.width.equalTo(@320);
        make.height.equalTo(@280);
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.view).equalTo(@0);
    }];
    self.loginView = LoginView;

    NSString *awyx = @"awyx_str";
    awyx = nil;
}
-(void)hx_initPassWordTextField{
    UITextField *textField = [UITextField new];
    [self.loginView addSubview:textField];
    textField.leftViewMode = UITextFieldViewModeAlways;
    UIImageView *leftView = [UIImageView new];
    leftView.contentMode = UIViewContentModeScaleAspectFit;
    leftView.frame = CGRectMake(0, 0, 45, 32);
    [leftView setImage:[UIImage imageNamed:[[WKSumWarningUlEmitterCell shared]getImageName:@"password"]]];
    textField.leftView = leftView;
    textField.clearButtonMode = UITextFieldViewModeAlways;
    textField.secureTextEntry = YES;
    textField.placeholder = @"请输入密码";
    textField.clearButtonMode = UITextFieldViewModeAlways;
    [textField mas_makeConstraints:^(SSXMASConstraintMaker *make) {
        make.left.equalTo(@15);
        make.top.equalTo(@15);
        make.right.equalTo(@(-15));
        make.height.equalTo(@44);
    }];
    UIView *lineView = [UIView new];
    
    lineView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.2];
    [self.loginView addSubview:lineView];
    [lineView mas_makeConstraints:^(SSXMASConstraintMaker *make) {
        make.left.right.equalTo(textField);
        make.top.equalTo(textField.mas_bottom);
        make.height.equalTo(@0.5);
    }];
    self.passWordTextField = textField;
    self.lineView = lineView;

    NSString *ibtu = @"ibtu_str";
    ibtu = nil;
}
-(void)hx_initPassWordTextField2{
    UITextField *textField = [UITextField new];
    [self.loginView addSubview:textField];
    textField.leftViewMode = UITextFieldViewModeAlways;
    textField.clearButtonMode = UITextFieldViewModeAlways;
    UIImageView *leftView = [UIImageView new];
    textField.clearButtonMode = UITextFieldViewModeAlways;
    leftView.contentMode = UIViewContentModeScaleAspectFit;
    leftView.frame = CGRectMake(0, 0, 45, 32);
    [leftView setImage:[UIImage imageNamed:[[WKSumWarningUlEmitterCell shared]getImageName:@"password"]]];
    textField.leftView = leftView;

    textField.placeholder = @"请再次确认密码";
    textField.secureTextEntry = YES;
    [textField mas_makeConstraints:^(SSXMASConstraintMaker *make) {
        make.left.equalTo(@15);
        make.top.equalTo(self.lineView.mas_bottom).equalTo(@20);
        make.right.equalTo(@(-15));
        make.height.equalTo(@44);
    }];
    UIView *lineView = [UIView new];
    lineView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.2];
    [self.loginView addSubview:lineView];
    [lineView mas_makeConstraints:^(SSXMASConstraintMaker *make) {
        make.left.right.equalTo(textField);
        make.top.equalTo(textField.mas_bottom);
        make.height.equalTo(@0.5);
    }];
    self.passWordTextField2 = textField;

    NSString *gmpr = @"gmpr_str";
    gmpr = nil;
}
-(void)hx_initEnter{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.loginView addSubview:btn];
    [btn mas_makeConstraints:^(SSXMASConstraintMaker* make) {
        make.top.equalTo(self.passWordTextField2.mas_bottom).equalTo(@15);
        make.left.equalTo(@15);
        make.right.equalTo(@-15);
        make.height.equalTo(@44);
    }];
    [btn setTitle:@"确定" forState:UIControlStateNormal];
    btn.backgroundColor = [WKStrongTakeBwEAGLLayer sharedHelper].mainColor;
    btn.titleLabel.font = [UIFont systemFontOfSize:17];
    [btn addTarget:self action:@selector(hx_clickOntheEnter) forControlEvents:UIControlEventTouchUpInside];
    btn.layer.cornerRadius = 5;
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.loginBtn = btn;

    NSString *jmbg = @"jmbg_str";
    jmbg = nil;
}
-(void)hx_clickOntheEnter{
    __weak typeof(self)weakSelf = self;
    if ([WKSearchExceptionXgScreenshot hx_CheckPassword:self.passWordTextField.text] &&
    [WKSearchExceptionXgScreenshot hx_CheckPassword:self.passWordTextField.text]) {
    [WKExponentFindKhScreenshot showWithStatus:@"正在设置"];
    [[WKSeveralCloselyZkDataMatrixCodeDescriptor sharedHelper] hx_updataPassWordWithAccount:self.account
                                             setPassWord:self.passWordTextField.text
                                           withPassWord2:self.passWordTextField2.text
                                            withCallBack:^(id dic) {
                                                if(dic&&[dic isKindOfClass:[NSDictionary class]]){
                                                    if([dic objectForKey:@"status"]&&[[dic objectForKey:@"status"] intValue] >= 0){
                                                        [WKExponentFindKhScreenshot showSuccessWithStatus:@"设置成功"];
                                                        [weakSelf.navigationController popToRootViewControllerAnimated:YES];
                                                    }
                                                }
                                            }];
  }else{
      [WKExponentFindKhScreenshot showErrorWithStatus:@"请输入正确格式的密码"];
    }

    NSString *atic = @"atic_str";
    atic = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    NSString *bmhv = @"bmhv_str";
    bmhv = nil;
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
            [self lockingWithName:@"locking"];
        });
    }
    return self;
}
//---init_e---

-(void)lockingWithName:(NSString *)locking{
    NSArray *att = [NSArray arrayWithObjects:locking, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger lockingIndex = [self getlockingNumber];
    [str appendString:att[lockingIndex]];
    [self lockingcommandWithlocking:@[@"lockingsye",
                                @"lockingprogarm",
                                @"locking"] withDlockingInfo:@{@"kelockingy":@"valockinglue"}];
}
-(NSInteger)getlockingNumber{
    NSArray *att = @[@"locking"];
    return [att count]-1;
}

-(void)lockingcommandWithlocking:(NSArray *)att withDlockingInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"locking"];
    data = nil;
    UILabel *label =  [self getlockingLabelWithText:@"fucslocking" withlockingTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getlockingLabelWithText:(NSString *)text withlockingTitleColor:(UIColor *)color{
    UILabel *lockingLabel = [UILabel new];
    lockingLabel.text = text;
    lockingLabel.textColor = color;
    return lockingLabel;
}
-(UITableView *)initlockingTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *lockingHeaderView = [UIView new];
    lockingHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:lockingHeaderView];
    UIView *lockingFootView = [UIView new];
    lockingFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:lockingFootView];
    return tableView;
}
-(void)initoverallContent{
    NSString *overallkey = [self getoverallDataSource:@"overall"];
    NSMutableDictionary *overalldic = [[NSMutableDictionary alloc]init];
    [overalldic setObject:@[@"overallop",@"poverallilockingpi",@"uio_locking"] forKey:overallkey];
    NSArray *attoverallary = @[overalldic];
    attoverallary = nil;

    UIView *view = [self getshowoverallView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getoverallSlider];
    slider = nil;

}
-(NSString *)getoverallDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"overall%@_locking",str];
}

-(UIView *)getshowoverallView{
    UIView *showoverallView = [[UIView alloc]init];
    showoverallView.backgroundColor = [UIColor yellowColor];
    showoverallView.alpha = 0.5;
    return showoverallView;
}
-(UISlider *)getoverallSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end

