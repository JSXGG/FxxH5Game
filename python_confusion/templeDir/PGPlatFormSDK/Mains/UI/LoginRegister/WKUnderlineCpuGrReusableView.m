//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKUnderlineCpuGrReusableView.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/21.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKUnderlineCpuGrReusableView.h"
#import "SSXMasonry.h"
#import "WKStrongTakeBwEAGLLayer.h"
#import "WKSearchExceptionXgScreenshot.h"
#import "WKExponentFindKhScreenshot.h"
@interface WKUnderlineCpuGrReusableView ()
@property (nonatomic, weak) UIView* loginView;
@property (nonatomic, weak) UIView* lineView;

@property (nonatomic, weak) UIButton* loginBtn;
@property (nonatomic, weak) UIButton* mobileBtn;
@end


@implementation WKUnderlineCpuGrReusableView
-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self hx_initLoginView];
        [self hx_initUserNameTextField];
        [self hx_initPassWordTextField];
        [self hx_initRegiestBtn];
    }
    return self;
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

    NSString *zrbe = @"zrbe_str";
    zrbe = nil;
}
-(void)hx_initUserNameTextField{
    UITextField *textField = [UITextField new];
    [self.loginView addSubview:textField];
    textField.leftViewMode = UITextFieldViewModeAlways;
    textField.clearButtonMode = UITextFieldViewModeAlways;

    UIImageView *leftView = [UIImageView new];
    leftView.contentMode = UIViewContentModeScaleAspectFit;
    leftView.frame = CGRectMake(0, 0, 45, 32);
    [leftView setImage:[UIImage imageNamed:[[WKSumWarningUlEmitterCell shared]getImageName:@"account"]]];
    textField.leftView = leftView;
    textField.placeholder = @"请输入账户";
    
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
    self.userNameTextField = textField;

    NSString *wchw = @"wchw_str";
    wchw = nil;
}
-(void)hx_initPassWordTextField{
    UITextField *textField = [UITextField new];
    [self.loginView addSubview:textField];
    textField.leftViewMode = UITextFieldViewModeAlways;
    
    textField.clearButtonMode = UITextFieldViewModeAlways;

    
    UIImageView *leftView = [UIImageView new];
    leftView.contentMode = UIViewContentModeScaleAspectFit;
    leftView.frame = CGRectMake(0, 0, 45, 32);
    [leftView setImage:[UIImage imageNamed:[[WKSumWarningUlEmitterCell shared]getImageName:@"email"]]];
    textField.leftView = leftView;
    textField.placeholder = @"请输入邮箱";
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

    NSString *bymt = @"bymt_str";
    bymt = nil;
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

    NSString *fsxq = @"fsxq_str";
    fsxq = nil;
}
-(void)hx_clickOntheEnter{
    if (![WKSearchExceptionXgScreenshot hx_CheckUserName:self.userNameTextField.text]) {
        [WKExponentFindKhScreenshot showErrorWithStatus:@"请输入正确的账户"];
        return;
    }
    if (![WKSearchExceptionXgScreenshot hx_CheckEmail:self.passWordTextField.text]) {
        [WKExponentFindKhScreenshot showErrorWithStatus:@"请输入正确的邮箱"];
        return;
    }
    if(self.getenterBlock){
        self.getenterBlock(self.userNameTextField.text, self.passWordTextField.text);
    }

    NSString *ezph = @"ezph_str";
    ezph = nil;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


//---code_s---


-(void)delayWithName:(NSString *)delay{
    NSArray *att = [NSArray arrayWithObjects:delay, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger delayIndex = [self getdelayNumber];
    [str appendString:att[delayIndex]];
    [self delaycommandWithdelay:@[@"delaysye",
                                @"delayprogarm",
                                @"delay"] withDdelayInfo:@{@"kedelayy":@"vadelaylue"}];
}
-(NSInteger)getdelayNumber{
    NSArray *att = @[@"delay"];
    return [att count]-1;
}

-(void)delaycommandWithdelay:(NSArray *)att withDdelayInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"delay"];
    data = nil;
    UILabel *label =  [self getdelayLabelWithText:@"fucsdelay" withdelayTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getdelayLabelWithText:(NSString *)text withdelayTitleColor:(UIColor *)color{
    UILabel *delayLabel = [UILabel new];
    delayLabel.text = text;
    delayLabel.textColor = color;
    return delayLabel;
}
-(UITableView *)initdelayTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *delayHeaderView = [UIView new];
    delayHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:delayHeaderView];
    UIView *delayFootView = [UIView new];
    delayFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:delayFootView];
    return tableView;
}
-(void)initclientContent{
    NSString *clientkey = [self getclientDataSource:@"client"];
    NSMutableDictionary *clientdic = [[NSMutableDictionary alloc]init];
    [clientdic setObject:@[@"clientop",@"pclientidelaypi",@"uio_delay"] forKey:clientkey];
    NSArray *attclientary = @[clientdic];
    attclientary = nil;

    UIView *view = [self getshowclientView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getclientSlider];
    slider = nil;

}
-(NSString *)getclientDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"client%@_delay",str];
}

-(UIView *)getshowclientView{
    UIView *showclientView = [[UIView alloc]init];
    showclientView.backgroundColor = [UIColor yellowColor];
    showclientView.alpha = 0.5;
    return showclientView;
}
-(UISlider *)getclientSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end

