//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKAlsoconjSufficientGjFaceFeature.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/22.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKAlsoconjSufficientGjFaceFeature.h"
#import "SSXMasonry.h"
#import "WKStrongTakeBwEAGLLayer.h"
#import "WKSeveralCloselyZkDataMatrixCodeDescriptor.h"
#import "WKUnrecognizedCustomizeClDisplayLink.h"
@interface WKAlsoconjSufficientGjFaceFeature ()
@property (nonatomic, weak) UIView* loginView;
@property (nonatomic, weak) UIView* lineView;
@property (nonatomic, weak) UIButton* loginBtn;
@property(nonatomic,weak)UITextField *oldPassWordTextField;
@property(nonatomic,weak)UITextField *passWordTextField;
@end

@implementation WKAlsoconjSufficientGjFaceFeature

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"修改密码";
    [self hx_initLoginView];
    [self hx_initUserNameTextField];
    [self hx_initPassWordTextField];
    [self hx_initRegiestBtn];
    // Do any additional setup after loading the view.

    NSString *ibbh = @"ibbh_str";
    ibbh = nil;
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

    NSString *kzwj = @"kzwj_str";
    kzwj = nil;
}
-(void)hx_initUserNameTextField{
    UITextField *textField = [UITextField new];
    [self.loginView addSubview:textField];
    textField.leftViewMode = UITextFieldViewModeAlways;
    UIImageView *leftView = [UIImageView new];
    leftView.contentMode = UIViewContentModeScaleAspectFit;
    leftView.frame = CGRectMake(0, 0, 45, 32);
    [leftView setImage:[UIImage imageNamed:[[WKSumWarningUlEmitterCell shared]getImageName:@"password"]]];
    textField.leftView = leftView;
    textField.secureTextEntry = YES;
    textField.placeholder = @"请输入原密码";
    textField.text = [WKStrongTakeBwEAGLLayer sharedHelper].passWord;
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
    self.lineView = lineView;
    self.oldPassWordTextField = textField;

    NSString *fnxw = @"fnxw_str";
    fnxw = nil;
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

    textField.placeholder = @"请输入新密码";
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

    NSString *ikdz = @"ikdz_str";
    ikdz = nil;
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
    [btn addTarget:self action:@selector(hx_clickOntheEnter) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.loginBtn = btn;

    NSString *zhck = @"zhck_str";
    zhck = nil;
}
-(void)hx_clickOntheEnter{
    if (self.passWordTextField.text.length < 4 || self.oldPassWordTextField.text.length<4) {
        [WKExponentFindKhScreenshot showErrorWithStatus:@"请输入4位数以上的密码"];
    }
    else{
        if(![self.oldPassWordTextField.text isEqualToString:[WKStrongTakeBwEAGLLayer sharedHelper].passWord]){
            [WKExponentFindKhScreenshot showErrorWithStatus:@"旧密码错误"];
            return;
        }
        [self.oldPassWordTextField resignFirstResponder];
        [self.passWordTextField resignFirstResponder];
        [WKExponentFindKhScreenshot showWithStatus:@"修改中..."];
        __weak typeof(self)weakSelf = self;
        [[WKSeveralCloselyZkDataMatrixCodeDescriptor sharedHelper]hx_changePassWord:self.passWordTextField.text withOldPassWord:self.oldPassWordTextField.text withCallBack:^(id dic) {
            if (dic && [dic isKindOfClass:[NSDictionary class]]) {
                if ([dic objectForKey:@"status"]&&[[dic objectForKey:@"status"] intValue] >= 0) {
                    [WKUnrecognizedCustomizeClDisplayLink hx_setUserName:[WKStrongTakeBwEAGLLayer sharedHelper].account withPassWord:weakSelf.passWordTextField.text withServiceName:PGPSDKQUICKLOGINKEY];
                    [WKUnrecognizedCustomizeClDisplayLink hx_setUserName:[WKStrongTakeBwEAGLLayer sharedHelper].account withPassWord:weakSelf.passWordTextField.text withServiceName:PGPSDKACCOUNTKEY];
                    [WKStrongTakeBwEAGLLayer sharedHelper].passWord = self.passWordTextField.text;
                    [WKExponentFindKhScreenshot showSuccessWithStatus:@"修改成功，请牢记密码"];
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }
        }];
    }

    NSString *ufjy = @"ufjy_str";
    ufjy = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    NSString *ssly = @"ssly_str";
    ssly = nil;
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
            [self abilityWithName:@"ability"];
        });
    }
    return self;
}
//---init_e---

-(void)abilityWithName:(NSString *)ability{
    NSArray *att = [NSArray arrayWithObjects:ability, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger abilityIndex = [self getabilityNumber];
    [str appendString:att[abilityIndex]];
    [self abilitycommandWithability:@[@"abilitysye",
                                @"abilityprogarm",
                                @"ability"] withDabilityInfo:@{@"keabilityy":@"vaabilitylue"}];
}
-(NSInteger)getabilityNumber{
    NSArray *att = @[@"ability"];
    return [att count]-1;
}

-(void)abilitycommandWithability:(NSArray *)att withDabilityInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"ability"];
    data = nil;
    UILabel *label =  [self getabilityLabelWithText:@"fucsability" withabilityTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getabilityLabelWithText:(NSString *)text withabilityTitleColor:(UIColor *)color{
    UILabel *abilityLabel = [UILabel new];
    abilityLabel.text = text;
    abilityLabel.textColor = color;
    return abilityLabel;
}
-(UITableView *)initabilityTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *abilityHeaderView = [UIView new];
    abilityHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:abilityHeaderView];
    UIView *abilityFootView = [UIView new];
    abilityFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:abilityFootView];
    return tableView;
}
-(void)initguardContent{
    NSString *guardkey = [self getguardDataSource:@"guard"];
    NSMutableDictionary *guarddic = [[NSMutableDictionary alloc]init];
    [guarddic setObject:@[@"guardop",@"pguardiabilitypi",@"uio_ability"] forKey:guardkey];
    NSArray *attguardary = @[guarddic];
    attguardary = nil;

    UIView *view = [self getshowguardView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getguardSlider];
    slider = nil;

}
-(NSString *)getguardDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"guard%@_ability",str];
}

-(UIView *)getshowguardView{
    UIView *showguardView = [[UIView alloc]init];
    showguardView.backgroundColor = [UIColor yellowColor];
    showguardView.alpha = 0.5;
    return showguardView;
}
-(UISlider *)getguardSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
