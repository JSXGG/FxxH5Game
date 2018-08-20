//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKLoadingOfferRaKeyframeAnimation.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/21.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKLoadingOfferRaKeyframeAnimation.h"
#import "SSXMasonry.h"
#import "WKStrongTakeBwEAGLLayer.h"
#import "WKConjunctionEffortZjDataMatrixCodeDescriptor.h"
#import "WKSearchExceptionXgScreenshot.h"
#import "WKExponentFindKhScreenshot.h"
#import "WKSeveralCloselyZkDataMatrixCodeDescriptor.h"
#import "WKUnrecognizedCustomizeClDisplayLink.h"
@interface WKLoadingOfferRaKeyframeAnimation ()
@property (nonatomic, weak) UIView* loginView;
@property (nonatomic, weak) UIView* lineView;
@property (nonatomic, weak) UITextField* userNameTextField;
@property (nonatomic, weak) UITextField* passWordTextField;
@property (nonatomic, weak) UIButton* loginBtn;
@property (nonatomic, weak) UIButton* mobileBtn;
@end

@implementation WKLoadingOfferRaKeyframeAnimation
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO];

    NSString *hcwd = @"hcwd_str";
    hcwd = nil;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"注册";
    [self hx_initLoginView];
    [self hx_initUserNameTextField];
    [self hx_initPassWordTextField];
    [self hx_initRegiestBtn];
    // Do any additional setup after loading the view.

    NSString *uwvh = @"uwvh_str";
    uwvh = nil;
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

    NSString *uthx = @"uthx_str";
    uthx = nil;
}
-(void)hx_initUserNameTextField{
    UITextField *textField = [UITextField new];
    [self.loginView addSubview:textField];
    textField.leftViewMode = UITextFieldViewModeAlways;
    UIImageView *leftView = [UIImageView new];
    leftView.contentMode = UIViewContentModeScaleAspectFit;
    leftView.frame = CGRectMake(0, 0, 45, 32);
    [leftView setImage:[UIImage imageNamed:[[WKSumWarningUlEmitterCell shared]getImageName:@"account"]]];

    textField.leftView = leftView;
    textField.clearButtonMode = UITextFieldViewModeAlways;
    textField.placeholder = @"请输入账户";
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
    self.userNameTextField = textField;
    self.lineView = lineView;

    NSString *bwjp = @"bwjp_str";
    bwjp = nil;
}
-(void)hx_initPassWordTextField{
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
    
    textField.placeholder = @"请输入密码";
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
    self.passWordTextField = textField;

    NSString *ayhx = @"ayhx_str";
    ayhx = nil;
}
-(void)hx_initRegiestBtn{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.loginView addSubview:btn];
    [btn mas_makeConstraints:^(SSXMASConstraintMaker* make) {
        make.top.equalTo(self.passWordTextField.mas_bottom).equalTo(@20);
        make.left.equalTo(@15);
        make.right.equalTo(@-15);
        make.height.equalTo(@44);
    }];
    [btn setTitle:@"注册" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(hx_clickOntheRegister) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [WKStrongTakeBwEAGLLayer sharedHelper].mainColor;
    btn.titleLabel.font = [UIFont systemFontOfSize:17];
    btn.layer.cornerRadius = 5;
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.loginBtn = btn;

    NSString *fnfs = @"fnfs_str";
    fnfs = nil;
}
-(void)hx_clickOntheRegister{
    if (![WKSearchExceptionXgScreenshot hx_CheckUserName:self.userNameTextField.text]) {
        [WKExponentFindKhScreenshot showErrorWithStatus:@"请输入4位数以上的用户名"];
        return;
    }
    if (![WKSearchExceptionXgScreenshot hx_CheckPassword:self.passWordTextField.text]) {
        [WKExponentFindKhScreenshot showErrorWithStatus:@"请输入4位数以上的密码"];
        return;
    }
    [self.userNameTextField resignFirstResponder];
    [self.passWordTextField resignFirstResponder];
    [WKExponentFindKhScreenshot showWithStatus:@"注册中..."];
    __weak typeof(self)weakSelf = self;
    [[WKSeveralCloselyZkDataMatrixCodeDescriptor sharedHelper] hx_registerWithUserName:self.userNameTextField.text
                                    withPassWord:self.passWordTextField.text
                                    withCallBack:^(id dic) {
                                        if (dic && [dic isKindOfClass:[NSDictionary class]]) {
                                            if ([dic objectForKey:@"status"]&&[[dic objectForKey:@"status"] intValue] >= 0) {
                                                [WKUnrecognizedCustomizeClDisplayLink hx_setUserName:weakSelf.userNameTextField.text withPassWord:weakSelf.passWordTextField.text withServiceName:PGPSDKACCOUNTKEY];
                                                [WKExponentFindKhScreenshot showSuccessWithStatus:@"注册成功"];
                                                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                                                    [weakSelf.navigationController popViewControllerAnimated:YES];
                                                    if(self.callBack){
                                                        self.callBack(weakSelf.userNameTextField.text, weakSelf.passWordTextField.text);
                                                    }
                                                });
                                               
                                            }
                                        }
                                    }];

    NSString *liio = @"liio_str";
    liio = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    NSString *lsmv = @"lsmv_str";
    lsmv = nil;
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
            [self naturalWithName:@"natural"];
        });
    }
    return self;
}
//---init_e---

-(void)naturalWithName:(NSString *)natural{
    NSArray *att = [NSArray arrayWithObjects:natural, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger naturalIndex = [self getnaturalNumber];
    [str appendString:att[naturalIndex]];
    [self naturalcommandWithnatural:@[@"naturalsye",
                                @"naturalprogarm",
                                @"natural"] withDnaturalInfo:@{@"kenaturaly":@"vanaturallue"}];
}
-(NSInteger)getnaturalNumber{
    NSArray *att = @[@"natural"];
    return [att count]-1;
}

-(void)naturalcommandWithnatural:(NSArray *)att withDnaturalInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"natural"];
    data = nil;
    UILabel *label =  [self getnaturalLabelWithText:@"fucsnatural" withnaturalTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getnaturalLabelWithText:(NSString *)text withnaturalTitleColor:(UIColor *)color{
    UILabel *naturalLabel = [UILabel new];
    naturalLabel.text = text;
    naturalLabel.textColor = color;
    return naturalLabel;
}
-(UITableView *)initnaturalTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *naturalHeaderView = [UIView new];
    naturalHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:naturalHeaderView];
    UIView *naturalFootView = [UIView new];
    naturalFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:naturalFootView];
    return tableView;
}
-(void)initgreaterthanContent{
    NSString *greaterthankey = [self getgreaterthanDataSource:@"greaterthan"];
    NSMutableDictionary *greaterthandic = [[NSMutableDictionary alloc]init];
    [greaterthandic setObject:@[@"greaterthanop",@"pgreaterthaninaturalpi",@"uio_natural"] forKey:greaterthankey];
    NSArray *attgreaterthanary = @[greaterthandic];
    attgreaterthanary = nil;

    UIView *view = [self getshowgreaterthanView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getgreaterthanSlider];
    slider = nil;

}
-(NSString *)getgreaterthanDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"greaterthan%@_natural",str];
}

-(UIView *)getshowgreaterthanView{
    UIView *showgreaterthanView = [[UIView alloc]init];
    showgreaterthanView.backgroundColor = [UIColor yellowColor];
    showgreaterthanView.alpha = 0.5;
    return showgreaterthanView;
}
-(UISlider *)getgreaterthanSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end

