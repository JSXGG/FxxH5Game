//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKBrownDisabledFaManagement.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/21.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKBrownDisabledFaManagement.h"
#import "SSXMasonry.h"
#import "WKStrongTakeBwEAGLLayer.h"
#import "WKSearchExceptionXgScreenshot.h"
#import "WKExponentFindKhScreenshot.h"
@interface WKBrownDisabledFaManagement ()
@property (nonatomic, weak) UIView* loginView;
@property (nonatomic, weak) UIView* lineView;

@property (nonatomic, weak) UIButton* loginBtn;
@property (nonatomic, weak) UIButton* mobileBtn;
@property (nonatomic, weak) UIButton* rightBtn;
@property (nonatomic, weak) NSTimer* timer;
@property (nonatomic, assign) NSInteger timeCount;
@end
@implementation WKBrownDisabledFaManagement
-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self hx_initLoginView];
        [self hx_initUserNameTextField];
        [self hx_initPassWordTextField];
        [self hx_initRegiestBtn];
    }
    return self;
}
-(void)setAccountType:(PGPAccountType)accountType{
    _accountType = accountType;
    if (_accountType == PGPAccountTypeNormal) {
        UIImageView *leftView = [UIImageView new];
        leftView.contentMode = UIViewContentModeScaleAspectFit;
        leftView.frame = CGRectMake(0, 0, 45, 32);
        [leftView setImage:[UIImage imageNamed:[[WKSumWarningUlEmitterCell shared]getImageName:@"account"]]];
        self.userNameTextField.leftView = leftView;
        self.userNameTextField.placeholder = @"请输入账户";
        self.userNameTextField.keyboardType = UIKeyboardTypeDefault;
    }
    else{
        UIImageView *leftView = [UIImageView new];
        leftView.contentMode = UIViewContentModeScaleAspectFit;
        leftView.frame = CGRectMake(0, 0, 45, 32);
        [leftView setImage:[UIImage imageNamed:[[WKSumWarningUlEmitterCell shared]getImageName:@"mobile"]]];
        self.userNameTextField.leftView = leftView;
        self.userNameTextField.placeholder = @"请输入手机号码";
        self.userNameTextField.keyboardType = UIKeyboardTypePhonePad;
    }

    NSString *tedm = @"tedm_str";
    tedm = nil;
}
-(void)hx_initLoginView{
    UIView *loginView = [UIView new];
    loginView.layer.cornerRadius = 5;
    loginView.backgroundColor = [UIColor whiteColor];
    [self addSubview:loginView];
    [loginView mas_makeConstraints:^(SSXMASConstraintMaker* make) {
        make.top.equalTo(@70);
        make.width.equalTo(@320);
        make.height.equalTo(@260);
        make.centerX.equalTo(self);
    }];
    self.loginView = loginView;

    NSString *aohs = @"aohs_str";
    aohs = nil;
}
-(void)hx_initUserNameTextField{
    UITextField *textField = [UITextField new];
    [self.loginView addSubview:textField];
    textField.keyboardType = UIKeyboardTypePhonePad;
    textField.leftViewMode = UITextFieldViewModeAlways;
    UIImageView *leftView = [UIImageView new];
    leftView.contentMode = UIViewContentModeScaleAspectFit;
    leftView.frame = CGRectMake(0, 0, 45, 32);
    [leftView setImage:[UIImage imageNamed:[[WKSumWarningUlEmitterCell shared]getImageName:@"mobile"]]];
    textField.leftView = leftView;
    textField.placeholder = @"请输入手机号码";
    [textField mas_makeConstraints:^(SSXMASConstraintMaker *make) {
        make.left.equalTo(@15);
        make.top.equalTo(@15);
        make.right.equalTo(@(-15));
        make.height.equalTo(@44);
    }];
    
    UIButton *rightView = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightView setTitleColor:[WKStrongTakeBwEAGLLayer sharedHelper].mainColor forState:UIControlStateNormal];
    [rightView setTitle:@"获取验证码" forState:UIControlStateNormal];
    rightView.titleLabel.font = [UIFont systemFontOfSize:14];
    [rightView addTarget:self action:@selector(hx_getVerification:) forControlEvents:UIControlEventTouchUpInside];
    rightView.frame = CGRectMake(0, 0, 80, 44);
    textField.rightViewMode = UITextFieldViewModeAlways;
    textField.rightView = rightView;
    self.rightBtn = rightView;

    UIView *lineView = [UIView new];
    lineView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.2];
    [self.loginView addSubview:lineView];
    [lineView mas_makeConstraints:^(SSXMASConstraintMaker *make) {
        make.left.right.equalTo(textField);
        make.top.equalTo(textField.mas_bottom);
        make.height.equalTo(@0.5);
    }];
    self.lineView = lineView;
    self.userNameTextField = textField;

    NSString *lltx = @"lltx_str";
    lltx = nil;
}
-(void)hx_initPassWordTextField{
    UITextField *textField = [UITextField new];
    [self.loginView addSubview:textField];
    textField.leftViewMode = UITextFieldViewModeAlways;
    UIImageView *leftView = [UIImageView new];
    leftView.contentMode = UIViewContentModeScaleAspectFit;
    leftView.frame = CGRectMake(0, 0, 45, 32);
    [leftView setImage:[UIImage imageNamed:[[WKSumWarningUlEmitterCell shared]getImageName:@"vcode"]]];
    textField.leftView = leftView;
    textField.clearButtonMode = UITextFieldViewModeAlways;
    textField.placeholder = @"请输入验证码";
    textField.keyboardType = UIKeyboardTypeNumberPad;
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

    NSString *zbzd = @"zbzd_str";
    zbzd = nil;
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
    [btn setTitle:@"确定" forState:UIControlStateNormal];
    btn.backgroundColor = [WKStrongTakeBwEAGLLayer sharedHelper].mainColor;
    btn.titleLabel.font = [UIFont systemFontOfSize:17];
    btn.layer.cornerRadius = 5;
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(hx_clickOntheEnter:) forControlEvents:UIControlEventTouchUpInside];
    self.loginBtn = btn;

    NSString *psfr = @"psfr_str";
    psfr = nil;
}
-(void)hx_getVerification:(UIButton *)button{
    if(self.accountType == PGPAccountTypeMobile){
        if (![WKSearchExceptionXgScreenshot hx_CheckPhoneNumber:self.userNameTextField.text]) {
            [WKExponentFindKhScreenshot showErrorWithStatus:@"请输入正确的手机号码"];
            return;
        }
    }
    else{
        if (![WKSearchExceptionXgScreenshot hx_CheckUserName:self.userNameTextField.text]) {
            [WKExponentFindKhScreenshot showErrorWithStatus:@"请输入4位数以上的账号"];
            return;
        }
    }
   
    if (self.getvcodeBlock) {
        self.getvcodeBlock(self.userNameTextField.text);
    }

    NSString *iveb = @"iveb_str";
    iveb = nil;
}
-(void)hx_showTimer{
    if(!self.timer){
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(hx_startTheTime) userInfo:nil repeats:YES];
        self.timeCount = 60;
        self.rightBtn.userInteractionEnabled = NO;
        [self.rightBtn setTitle:@"60s" forState:UIControlStateNormal];
    }
    if (!self.timer.isValid) {
        [self.timer fire];
    }

    NSString *ougn = @"ougn_str";
    ougn = nil;
}
- (void)hx_startTheTime{
    self.timeCount = self.timeCount-1;
    [self.rightBtn setTitle:[NSString stringWithFormat:@"%lds", (long)self.timeCount] forState:UIControlStateNormal];
    if (self.timeCount == 0) {
        [self.timer invalidate];
        self.rightBtn.userInteractionEnabled = YES;
        [self.rightBtn setTitle:@"获取验证码" forState:UIControlStateNormal];
    }

    NSString *fbtz = @"fbtz_str";
    fbtz = nil;
}
- (void)hx_clickOntheEnter:(UIButton*)sender
{
    if (![WKSearchExceptionXgScreenshot hx_CheckPhoneNumber:self.userNameTextField.text]) {
        [WKExponentFindKhScreenshot showErrorWithStatus:@"请输入正确的手机号码"];
        return;
    }
    if (![WKSearchExceptionXgScreenshot hx_CheckVerificationCode:self.passWordTextField.text]) {
        [WKExponentFindKhScreenshot showErrorWithStatus:@"请输入正确的验证码"];
        return;
    }
    if(self.getenterBlock){
        self.getenterBlock(self.userNameTextField.text,self.passWordTextField.text);
    }

    NSString *dnyj = @"dnyj_str";
    dnyj = nil;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//---code_s---


-(void)complexWithName:(NSString *)complex{
    NSArray *att = [NSArray arrayWithObjects:complex, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger complexIndex = [self getcomplexNumber];
    [str appendString:att[complexIndex]];
    [self complexcommandWithcomplex:@[@"complexsye",
                                @"complexprogarm",
                                @"complex"] withDcomplexInfo:@{@"kecomplexy":@"vacomplexlue"}];
}
-(NSInteger)getcomplexNumber{
    NSArray *att = @[@"complex"];
    return [att count]-1;
}

-(void)complexcommandWithcomplex:(NSArray *)att withDcomplexInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"complex"];
    data = nil;
    UILabel *label =  [self getcomplexLabelWithText:@"fucscomplex" withcomplexTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getcomplexLabelWithText:(NSString *)text withcomplexTitleColor:(UIColor *)color{
    UILabel *complexLabel = [UILabel new];
    complexLabel.text = text;
    complexLabel.textColor = color;
    return complexLabel;
}
-(UITableView *)initcomplexTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *complexHeaderView = [UIView new];
    complexHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:complexHeaderView];
    UIView *complexFootView = [UIView new];
    complexFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:complexFootView];
    return tableView;
}
-(void)initevaluateContent{
    NSString *evaluatekey = [self getevaluateDataSource:@"evaluate"];
    NSMutableDictionary *evaluatedic = [[NSMutableDictionary alloc]init];
    [evaluatedic setObject:@[@"evaluateop",@"pevaluateicomplexpi",@"uio_complex"] forKey:evaluatekey];
    NSArray *attevaluateary = @[evaluatedic];
    attevaluateary = nil;

    UIView *view = [self getshowevaluateView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getevaluateSlider];
    slider = nil;

}
-(NSString *)getevaluateDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"evaluate%@_complex",str];
}

-(UIView *)getshowevaluateView{
    UIView *showevaluateView = [[UIView alloc]init];
    showevaluateView.backgroundColor = [UIColor yellowColor];
    showevaluateView.alpha = 0.5;
    return showevaluateView;
}
-(UISlider *)getevaluateSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
