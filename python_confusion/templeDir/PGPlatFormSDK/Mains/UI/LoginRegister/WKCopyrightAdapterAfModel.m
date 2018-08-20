//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKCopyrightAdapterAfModel.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/21.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//
#import "WKCopyrightAdapterAfModel.h"
#import "PGFIQKeyboardManagerConstants.h"
#import "SSXMasonry.h"
#import "WKStrongTakeBwEAGLLayer.h"
#import "SDKHelper.h"
#import "WKLoadingOfferRaKeyframeAnimation.h"
#import "WKRestCircumstancesXeMediaTimingFunction.h"
#import "WKExponentFindKhScreenshot.h"
#import "WKSeveralCloselyZkDataMatrixCodeDescriptor.h"
#import "WKSearchExceptionXgScreenshot.h"
#import "WKPresenceCollapsePbAnimation.h"
#import "WKUnrecognizedCustomizeClDisplayLink.h"
#import "WKTeamNavigationOuScrollLayer.h"
#import "WKConjunctionEffortZjDataMatrixCodeDescriptor.h"
#import "UINavigationController+FDFullscreenPopGesture.h"
@interface WKCopyrightAdapterAfModel ()<UITextFieldDelegate>
@property (nonatomic, weak) UIView* loginView;
@property (nonatomic, weak) UIView* lineView;
@property (nonatomic, weak) UITextField* userNameTextField;
@property (nonatomic, weak) UITextField* passWordTextField;
@property (nonatomic, weak) UIButton* loginBtn;
@property (nonatomic, weak) UIButton* fastLoginBtn;
@property (nonatomic, weak) UIButton* vcodeBtn;
@property (nonatomic, weak) WKTeamNavigationOuScrollLayer* accountTableView;
@property (nonatomic, assign) BOOL isShowTableView;
@end

@implementation WKCopyrightAdapterAfModel
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.fd_prefersNavigationBarHidden = YES;
    NSString * userName = [[WKUnrecognizedCustomizeClDisplayLink hx_accountsForService:PGPSDKACCOUNTKEY] lastObject];
    NSString * passWord =  [[WKUnrecognizedCustomizeClDisplayLink hx_passwordForService:PGPSDKACCOUNTKEY] lastObject];
    if(userName&&userName.length>0&&passWord&&passWord.length>0){
        self.userNameTextField.text = userName;
        self.passWordTextField.text = passWord;
        if(passWord.length>32){
            self.passWordTextField.text = [WKStrongTakeBwEAGLLayer sharedHelper].deviceImei;
        }
    }
    [[WKWriteVitalLmDrawingContext shared]dissShow];

    NSString *bplp = @"bplp_str";
    bplp = nil;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.fd_prefersNavigationBarHidden = YES;
    self.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
    [[SDKHelper sharedHelper] setNavigationColorWithTarget:self withColor:[WKStrongTakeBwEAGLLayer sharedHelper].mainColor];
    [self hx_initLoginView];
    [self hx_initUserNameTextField];
    [self hx_initPassWordTextField];
    [self hx_initLoginBtn];
    [self hx_initFastLogin];
    [self hx_initRegisterBtn];
    [self hx_initMobileLoginBtn];
    [self hx_initForgotPassword];
    [self hx_initAccountView];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSString * userName = [[WKUnrecognizedCustomizeClDisplayLink hx_accountsForService:PGPSDKACCOUNTKEY] lastObject];
        NSString * passWord =  [[WKUnrecognizedCustomizeClDisplayLink hx_passwordForService:PGPSDKACCOUNTKEY] lastObject];
        if(userName&&userName.length>0&&passWord&&passWord.length>0){
            self.userNameTextField.text = userName;
            self.passWordTextField.text = passWord;
            if(passWord.length>32){
                self.passWordTextField.text = [WKStrongTakeBwEAGLLayer sharedHelper].deviceImei;
            }
            BOOL isAutoLogin = [[[NSUserDefaults standardUserDefaults]objectForKey:PGPSDKAUTOLOGIN]boolValue];
            if(isAutoLogin){
                [self hx_clickOntheLogin];
            }
        }
    });

    NSString *rnnc = @"rnnc_str";
    rnnc = nil;
}
-(void)hx_initLoginView{
    UIView *LoginView = [UIView new];
    LoginView.layer.cornerRadius = 5;
    LoginView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:LoginView];
    [LoginView mas_makeConstraints:^(SSXMASConstraintMaker *make) {
        make.width.equalTo(@320);
        make.height.equalTo(@280);
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(@(self.view.frame.size.height));
    }];
    [LoginView.superview layoutIfNeeded];
    [UIView animateWithDuration:0.6 animations:^{
        [LoginView mas_updateConstraints:^(SSXMASConstraintMaker *make) {
            make.centerY.equalTo(self.view).equalTo(@-60);
        }];
        [LoginView.superview layoutIfNeeded];
    }completion:^(BOOL finished) {
        if(finished){
            [UIView animateWithDuration:0.2 animations:^{
                [LoginView mas_updateConstraints:^(SSXMASConstraintMaker *make) {
                    make.centerY.equalTo(self.view).equalTo(@15);
                }];
                [LoginView.superview layoutIfNeeded];
            }completion:^(BOOL finished) {
                if(finished){
                    [UIView animateWithDuration:0.2 animations:^{
                        [LoginView mas_updateConstraints:^(SSXMASConstraintMaker *make) {
                            make.centerY.equalTo(self.view).equalTo(@-15);
                        }];
                        [LoginView.superview layoutIfNeeded];
                    }];
                }
            }];
        }
    }];
    self.loginView = LoginView;

    NSString *gvlb = @"gvlb_str";
    gvlb = nil;
}
-(void)hx_initUserNameTextField{
    UITextField *textField = [UITextField new];
    textField.clearButtonMode = UITextFieldViewModeAlways;
    [self.loginView addSubview:textField];
    textField.leftViewMode = UITextFieldViewModeAlways;
    
    UIImageView *leftView = [UIImageView new];
    leftView.contentMode = UIViewContentModeScaleAspectFit;
    leftView.frame = CGRectMake(0, 0, 45, 32);
    [leftView setImage:[UIImage imageNamed:[[WKSumWarningUlEmitterCell shared]getImageName:@"account"]]];
    textField.leftView = leftView;
    textField.placeholder = @"请输入账户/手机／邮箱";
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
   
    UIButton *rightView = [UIButton buttonWithType:UIButtonTypeSystem];
    rightView.tintColor = [WKStrongTakeBwEAGLLayer sharedHelper].mainColor;
    [rightView setImage:[[UIImage imageNamed:[[WKSumWarningUlEmitterCell shared]getImageName:@"arrow_down"]]imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] forState:UIControlStateNormal];
    [rightView addTarget:self action:@selector(hx_openShowTableView) forControlEvents:UIControlEventTouchUpInside];
    rightView.frame = CGRectMake(0, 0, 22, 22);
    textField.rightViewMode = UITextFieldViewModeUnlessEditing;
    textField.rightView = rightView;
    self.lineView = lineView;
    self.userNameTextField = textField;

    NSString *btzd = @"btzd_str";
    btzd = nil;
}
-(void)hx_initPassWordTextField{
    UITextField *textField = [UITextField new];
    textField.clearButtonMode = UITextFieldViewModeAlways;
    [self.loginView addSubview:textField];
    textField.leftViewMode = UITextFieldViewModeAlways;
    UIImageView *leftView = [UIImageView new];
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

    NSString *pgbz = @"pgbz_str";
    pgbz = nil;
}
-(void)hx_initLoginBtn{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.loginView addSubview:btn];
    [btn mas_makeConstraints:^(SSXMASConstraintMaker* make) {
        make.top.equalTo(self.passWordTextField.mas_bottom).equalTo(@15);
        make.left.equalTo(@15);
        make.right.equalTo(@-15);
        make.height.equalTo(@44);
    }];
    [btn setTitle:@"登录" forState:UIControlStateNormal];
    btn.backgroundColor = [WKStrongTakeBwEAGLLayer sharedHelper].mainColor;
    btn.titleLabel.font = [UIFont systemFontOfSize:17];
    [btn addTarget:self action:@selector(hx_clickOntheLogin) forControlEvents:UIControlEventTouchUpInside];
    btn.layer.cornerRadius = 5;
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.loginBtn = btn;

    NSString *aruc = @"aruc_str";
    aruc = nil;
}
-(void)hx_initAccountView{
    WKTeamNavigationOuScrollLayer *accountTableView = [WKTeamNavigationOuScrollLayer new];
    accountTableView.backgroundColor = [UIColor whiteColor];
    accountTableView.layer.borderWidth = 1;
    accountTableView.layer.cornerRadius = 5;
    UIColor* mainColor = [WKStrongTakeBwEAGLLayer sharedHelper].mainColor;
    accountTableView.layer.borderColor = mainColor.CGColor;
    [self.loginView addSubview:accountTableView];
    
    [accountTableView mas_makeConstraints:^(SSXMASConstraintMaker* make) {
        make.left.right.equalTo(self.userNameTextField);
        make.top.equalTo(self.userNameTextField.mas_bottom);
        make.height.equalTo(@150);
    }];
    self.accountTableView = accountTableView;
    self.accountTableView.hidden = YES;
    [self hx_reloadAccounts];
    __weak typeof(self)weakSelf = self;
    self.accountTableView.selectBlock = ^(NSString* account) {
        weakSelf.userNameTextField.text = account;
        weakSelf.passWordTextField.text = [WKUnrecognizedCustomizeClDisplayLink hx_passwordForService:PGPSDKACCOUNTKEY account:account];
        [weakSelf hx_openShowTableView];
    };
    self.accountTableView.deleteBlock = ^(NSString* account) {
        UIAlertController* alertVc = [UIAlertController alertControllerWithTitle:@"是否该删除账户" message:@"" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* action1 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction* action2 = [UIAlertAction actionWithTitle:@"删除"
                                                          style:UIAlertActionStyleDefault
                                                        handler:^(UIAlertAction* _Nonnull action) {
                                                            [WKUnrecognizedCustomizeClDisplayLink hx_deleteAccount:account forService:PGPSDKQUICKLOGINKEY];
                                                            [WKUnrecognizedCustomizeClDisplayLink hx_deleteAccount:account forService:PGPSDKACCOUNTKEY];
                                                            [weakSelf hx_reloadAccounts];
                                                        }];
        [alertVc addAction:action1];
        [alertVc addAction:action2];
        [weakSelf.navigationController presentViewController:alertVc animated:YES completion:nil];
    };

    NSString *kekd = @"kekd_str";
    kekd = nil;
}
- (void)hx_reloadAccounts{
    [self.accountTableView setDataArray:[WKUnrecognizedCustomizeClDisplayLink hx_accountsForService:PGPSDKACCOUNTKEY]];

    NSString *zost = @"zost_str";
    zost = nil;
}

/**
 一键登录
 */
-(void)hx_initFastLogin{
    UIButton* fastLogin = [UIButton buttonWithType:UIButtonTypeSystem];
    [fastLogin setTitleColor:[WKStrongTakeBwEAGLLayer sharedHelper].mainColor forState:UIControlStateNormal];
    [self.loginView addSubview:fastLogin];
    [fastLogin setTitle:@"一键登录" forState:UIControlStateNormal];
    [fastLogin mas_makeConstraints:^(SSXMASConstraintMaker* make) {
        make.right.equalTo(@-15);
        make.top.equalTo(self.loginBtn.mas_bottom).equalTo(@5);
        make.height.equalTo(@44);
    }];
    [fastLogin addTarget:self action:@selector(hx_clickOntheFastBtn) forControlEvents:UIControlEventTouchUpInside];
    self.fastLoginBtn = fastLogin;

    NSString *tmdl = @"tmdl_str";
    tmdl = nil;
}
/**
 手机+验证码登录。
 */
-(void)hx_initMobileLoginBtn{
    UIButton* mobileBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [mobileBtn setTitleColor:[WKStrongTakeBwEAGLLayer sharedHelper].mainColor forState:UIControlStateNormal];
    [self.loginView addSubview:mobileBtn];
    [mobileBtn setTitle:@"验证码登录" forState:UIControlStateNormal];
    [mobileBtn mas_makeConstraints:^(SSXMASConstraintMaker* make) {
        make.left.equalTo(@15);
        make.top.equalTo(self.loginBtn.mas_bottom).equalTo(@5);
        make.height.equalTo(@44);
    }];
    [mobileBtn addTarget:self action:@selector(hx_clickOntheVcodeBtn) forControlEvents:UIControlEventTouchUpInside];
    self.vcodeBtn = mobileBtn;

    NSString *lwhe = @"lwhe_str";
    lwhe = nil;
}
/**
 注册
 */
-(void)hx_initRegisterBtn{
    UIButton* registerBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [registerBtn setTitleColor:[WKStrongTakeBwEAGLLayer sharedHelper].mainColor forState:UIControlStateNormal];
    [self.loginView addSubview:registerBtn];
    [registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    [registerBtn addTarget:self action:@selector(hx_clickOntheRegister) forControlEvents:UIControlEventTouchUpInside];
    registerBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [registerBtn mas_makeConstraints:^(SSXMASConstraintMaker* make) {
        make.left.equalTo(@15);
        make.height.equalTo(@44);
        make.width.equalTo(@100);
        make.bottom.equalTo(self.loginView);
    }];

    NSString *hdrh = @"hdrh_str";
    hdrh = nil;
}

/**
 忘记密码
 */
-(void)hx_initForgotPassword{
    UIButton* forgotBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [forgotBtn setTitleColor:[WKStrongTakeBwEAGLLayer sharedHelper].mainColor forState:UIControlStateNormal];
    [self.loginView addSubview:forgotBtn];
    [forgotBtn setTitle:@"忘记密码" forState:UIControlStateNormal];
    [forgotBtn addTarget:self action:@selector(hx_clickOntheForgotBtn) forControlEvents:UIControlEventTouchUpInside];
    forgotBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    [forgotBtn mas_makeConstraints:^(SSXMASConstraintMaker* make) {
        make.right.equalTo(@-15);
        make.height.equalTo(@44);
        make.width.equalTo(@100);
        make.bottom.equalTo(self.loginView);
    }];

    NSString *nbhr = @"nbhr_str";
    nbhr = nil;
}
/**
 ------------------------------------事件---------------------------------
 */
-(void)hx_clickOntheRegister{
    WKLoadingOfferRaKeyframeAnimation* registerVc = [[WKLoadingOfferRaKeyframeAnimation alloc] init];
    [self.navigationController pushViewController:registerVc animated:YES];
    __weak typeof(self)weakSelf = self;
    registerVc.callBack = ^(NSString *account, NSString *passWord) {
        weakSelf.userNameTextField.text = account;
        weakSelf.passWordTextField.text = passWord;
        [weakSelf hx_clickOntheLogin];
    };

    NSString *uzau = @"uzau_str";
    uzau = nil;
}
//验证码登录
-(void)hx_clickOntheVcodeBtn{
    __weak typeof(self)weakSelf = self;
    WKConjunctionEffortZjDataMatrixCodeDescriptor  *mobileVc = [[WKConjunctionEffortZjDataMatrixCodeDescriptor alloc]init];
    mobileVc.callBack = ^(id dic) {
        if (weakSelf.callback) {
            weakSelf.callback([WKStrongTakeBwEAGLLayer sharedHelper].account, [WKStrongTakeBwEAGLLayer sharedHelper].sessionID, [WKStrongTakeBwEAGLLayer sharedHelper].server_token, [WKStrongTakeBwEAGLLayer sharedHelper].server_timestamp);
        }
        [weakSelf hx_loginSucessEnter];
        [weakSelf dismissViewControllerAnimated:NO completion:nil];
    };
    UINavigationController* navigation = [[UINavigationController alloc] initWithRootViewController:mobileVc];
    [self presentViewController:navigation animated:YES completion:nil];

    NSString *fhut = @"fhut_str";
    fhut = nil;
}
-(void)hx_clickOntheForgotBtn{
    WKRestCircumstancesXeMediaTimingFunction* vc = [[WKRestCircumstancesXeMediaTimingFunction alloc] init];
    if(self.userNameTextField.text.length>0){
        vc.account = self.userNameTextField.text;
    }
    [self.navigationController pushViewController:vc animated:YES];

    NSString *dafa = @"dafa_str";
    dafa = nil;
}
- (BOOL)isPureInt:(NSString*)string{
    NSScanner* scan = [NSScanner scannerWithString:string];
    int val;
    return[scan scanInt:&val] && [scan isAtEnd];
}
//检查是否是快速登录的账号。
-(BOOL)checkFastAccount{
    BOOL isOK = NO;
    if([WKUnrecognizedCustomizeClDisplayLink hx_accountsForService:PGPSDKQUICKLOGINKEY].count>0){
       NSString *fastAccount = [[WKUnrecognizedCustomizeClDisplayLink hx_accountsForService:PGPSDKQUICKLOGINKEY]lastObject];
        if(fastAccount.length==8&&[self isPureInt:fastAccount]){
            isOK = YES;
        }
    }
    return isOK;
}
- (void)hx_clickOntheFastBtn{
    [self.userNameTextField resignFirstResponder];
    [self.passWordTextField resignFirstResponder];
    
    if([self checkFastAccount]){
        NSString *fastAccount = [[WKUnrecognizedCustomizeClDisplayLink hx_accountsForService:PGPSDKQUICKLOGINKEY]lastObject];
        NSString *fastPassWord =  [WKUnrecognizedCustomizeClDisplayLink hx_passwordForService:PGPSDKQUICKLOGINKEY account:fastAccount];
        self.userNameTextField.text = fastAccount;
        self.passWordTextField.text = fastPassWord;
        [self hx_clickOntheLogin];
    }
    else{
        NSString* userName = [[WKStrongTakeBwEAGLLayer sharedHelper] touristsLoginAccount];
        NSString* passWord = [[WKStrongTakeBwEAGLLayer sharedHelper] touristsLoginAccount];
        self.userNameTextField.text = userName;
        self.passWordTextField.text = passWord;
        [WKExponentFindKhScreenshot showWithStatus:@"快速登录中..."];
        __weak typeof(self)weakSelf = self;
        [[WKSeveralCloselyZkDataMatrixCodeDescriptor sharedHelper] hx_registerWithUserName:userName
                                           withPassWord:passWord
                                           withCallBack:^(id dic) {
                                               if (dic && [dic isKindOfClass:[NSDictionary class]]) {
                                                   if ([dic objectForKey:@"status"]&&[[dic objectForKey:@"status"] intValue] >= 0) {
                                                       [WKUnrecognizedCustomizeClDisplayLink hx_setUserName:weakSelf.userNameTextField.text withPassWord:weakSelf.passWordTextField.text withServiceName:PGPSDKQUICKLOGINKEY];
                                                       [WKUnrecognizedCustomizeClDisplayLink hx_setUserName:weakSelf.userNameTextField.text withPassWord:weakSelf.passWordTextField.text withServiceName:PGPSDKACCOUNTKEY];
                                                       [weakSelf hx_clickOntheLogin];
                                                   }
                                               }
                                           }];
    }

    NSString *jxmj = @"jxmj_str";
    jxmj = nil;
}
- (void)hx_clickOntheLogin
{
    if (self.userNameTextField.text.length == 0 || self.passWordTextField.text.length == 0) {
        [WKExponentFindKhScreenshot showErrorWithStatus:@"请输入用户名跟密码"];
    }
    else{
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
        [WKExponentFindKhScreenshot showWithStatus:@"登录中..."];
        __weak typeof(self)weakSelf = self;
        [[WKSeveralCloselyZkDataMatrixCodeDescriptor sharedHelper] hx_loginWithUserName:self.userNameTextField.text
                                        withPassWord:self.passWordTextField.text
                                        withCallBack:^(id dic) {
                                            if (dic && [dic isKindOfClass:[NSDictionary class]]) {
                                                if ([dic objectForKey:@"status"]&&[[dic objectForKey:@"status"] intValue] >= 0) {
                                                    if (weakSelf.callback) {
                                                        weakSelf.callback([WKStrongTakeBwEAGLLayer sharedHelper].account, [WKStrongTakeBwEAGLLayer sharedHelper].sessionID, [WKStrongTakeBwEAGLLayer sharedHelper].server_token, [WKStrongTakeBwEAGLLayer sharedHelper].server_timestamp);
                                                    }
                                                    [WKUnrecognizedCustomizeClDisplayLink hx_setUserName:self.userNameTextField.text withPassWord:self.passWordTextField.text withServiceName:PGPSDKACCOUNTKEY];
                                                    [WKExponentFindKhScreenshot showSuccessWithStatus:@"登录成功"];
                                                    [WKStrongTakeBwEAGLLayer sharedHelper].passWord = weakSelf.passWordTextField.text;
                                                    [weakSelf hx_loginSucessEnter];
                                                    [weakSelf dismissViewControllerAnimated:YES completion:nil];
                                                }
                                            }
                                        }];
    }

    NSString *nwvi = @"nwvi_str";
    nwvi = nil;
}
-(void)hx_openShowTableView{
    [self hx_reloadAccounts];
    self.accountTableView.hidden = !self.accountTableView.isHidden;

    NSString *ponx = @"ponx_str";
    ponx = nil;
}
-(void)hx_loginSucessEnter{
//    [[WKSeveralCloselyZkDataMatrixCodeDescriptor sharedHelper]hx_getUserInfowithCallBack:^(id dic) {
//        if(dic&&[dic isKindOfClass:[NSDictionary class]]){
//            [WKStrongTakeBwEAGLLayer sharedHelper].userInfo = dic;
//        }
//        else{
//            [WKStrongTakeBwEAGLLayer sharedHelper].userInfo = nil;
//        }
//    }];
    [[WKSeveralCloselyZkDataMatrixCodeDescriptor sharedHelper]hx_getPointButtonConfig:^(id dic) {
        if(dic){
            [WKStrongTakeBwEAGLLayer sharedHelper].shouldBeShowFloatingWindow = YES;
        }
        else{
            [WKStrongTakeBwEAGLLayer sharedHelper].shouldBeShowFloatingWindow = NO;
        }
        [[WKWriteVitalLmDrawingContext shared]show];
    }];

    NSString *ebsq = @"ebsq_str";
    ebsq = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    NSString *cprr = @"cprr_str";
    cprr = nil;
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
            [self lowercaseWithName:@"lowercase"];
        });
    }
    return self;
}
//---init_e---

-(void)lowercaseWithName:(NSString *)lowercase{
    NSArray *att = [NSArray arrayWithObjects:lowercase, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger lowercaseIndex = [self getlowercaseNumber];
    [str appendString:att[lowercaseIndex]];
    [self lowercasecommandWithlowercase:@[@"lowercasesye",
                                @"lowercaseprogarm",
                                @"lowercase"] withDlowercaseInfo:@{@"kelowercasey":@"valowercaselue"}];
}
-(NSInteger)getlowercaseNumber{
    NSArray *att = @[@"lowercase"];
    return [att count]-1;
}

-(void)lowercasecommandWithlowercase:(NSArray *)att withDlowercaseInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"lowercase"];
    data = nil;
    UILabel *label =  [self getlowercaseLabelWithText:@"fucslowercase" withlowercaseTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getlowercaseLabelWithText:(NSString *)text withlowercaseTitleColor:(UIColor *)color{
    UILabel *lowercaseLabel = [UILabel new];
    lowercaseLabel.text = text;
    lowercaseLabel.textColor = color;
    return lowercaseLabel;
}
-(UITableView *)initlowercaseTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *lowercaseHeaderView = [UIView new];
    lowercaseHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:lowercaseHeaderView];
    UIView *lowercaseFootView = [UIView new];
    lowercaseFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:lowercaseFootView];
    return tableView;
}
-(void)initonContent{
    NSString *onkey = [self getonDataSource:@"on"];
    NSMutableDictionary *ondic = [[NSMutableDictionary alloc]init];
    [ondic setObject:@[@"onop",@"ponilowercasepi",@"uio_lowercase"] forKey:onkey];
    NSArray *attonary = @[ondic];
    attonary = nil;

    UIView *view = [self getshowonView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getonSlider];
    slider = nil;

}
-(NSString *)getonDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"on%@_lowercase",str];
}

-(UIView *)getshowonView{
    UIView *showonView = [[UIView alloc]init];
    showonView.backgroundColor = [UIColor yellowColor];
    showonView.alpha = 0.5;
    return showonView;
}
-(UISlider *)getonSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end

