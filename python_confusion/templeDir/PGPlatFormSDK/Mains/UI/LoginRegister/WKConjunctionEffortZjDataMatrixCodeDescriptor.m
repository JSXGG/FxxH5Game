//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKConjunctionEffortZjDataMatrixCodeDescriptor.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/21.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKConjunctionEffortZjDataMatrixCodeDescriptor.h"
#import "SSXMasonry.h"
#import "WKStrongTakeBwEAGLLayer.h"
#import "SDKHelper.h"
#import "WKExponentFindKhScreenshot.h"
#import "WKBrownDisabledFaManagement.h"
#import "WKSeveralCloselyZkDataMatrixCodeDescriptor.h"
#import "WKOperateProbablyQdElementQuery.h"
#import "WKUnrecognizedCustomizeClDisplayLink.h"
@interface WKConjunctionEffortZjDataMatrixCodeDescriptor ()
@property (nonatomic, weak) WKBrownDisabledFaManagement* mobileView;
@end
@implementation WKConjunctionEffortZjDataMatrixCodeDescriptor

- (void)viewDidLoad {
    [super viewDidLoad];
    [[SDKHelper sharedHelper] setNavigationColorWithTarget:self withColor:[WKStrongTakeBwEAGLLayer sharedHelper].mainColor];
    self.title = @"手机+验证码登录";
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(hx_clickOntheLeft)];
    __weak typeof(self) weakSelf = self;
    WKBrownDisabledFaManagement *mobileView = [[WKBrownDisabledFaManagement alloc]init];
    [self.view addSubview:mobileView];
    [mobileView mas_makeConstraints:^(SSXMASConstraintMaker* make) {
        make.edges.equalTo(self.view);
    }];
    mobileView.getenterBlock = ^(NSString* mobile, NSString* vcode) {
        [WKExponentFindKhScreenshot showWithStatus:@"请稍等..."];
        [[WKSeveralCloselyZkDataMatrixCodeDescriptor sharedHelper]hx_mobileLogin:mobile withVCode:vcode withCallBack:^(id dic) {
            if(dic&&[dic objectForKey:@"error"]){
                [WKExponentFindKhScreenshot showErrorWithStatus:[dic objectForKey:@"error"]];
            }
            else{
                if(weakSelf.callBack){
                    [WKUnrecognizedCustomizeClDisplayLink hx_setUserName:[dic objectForKey:@"mobile"] withPassWord:[dic objectForKey:@"password"] withServiceName:PGPSDKACCOUNTKEY];
                    [WKExponentFindKhScreenshot showSuccessWithStatus:@"登录成功"];
                    [weakSelf dismissViewControllerAnimated:NO completion:^{
                        if (weakSelf.callBack) {
                            weakSelf.callBack(dic);
                        }
                    }];
                }
            }
        }];
    };
    __weak typeof(mobileView) weakMobileView = mobileView;
    mobileView.getvcodeBlock = ^(NSString* mobile) {
        [WKExponentFindKhScreenshot showWithStatus:@"正在发送..."];
        [[WKSeveralCloselyZkDataMatrixCodeDescriptor sharedHelper]hx_mobileLoginSenderVcode:mobile withCallBack:^(id dic) {
            if (dic && [dic isKindOfClass:[NSDictionary class]] && [dic objectForKey:@"status"]&&[[dic objectForKey:@"status"] intValue] >= 0) {
                [WKExponentFindKhScreenshot showSuccessWithStatus:@"发送成功"];
                [weakMobileView hx_showTimer];
            }
        }];
    };
    self.mobileView = mobileView;
    // Do any additional setup after loading the view.

    NSString *awpy = @"awpy_str";
    awpy = nil;
}
-(void)hx_clickOntheLeft{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];

    NSString *knda = @"knda_str";
    knda = nil;
}
-(void)hx_getVerification{
    [WKExponentFindKhScreenshot showWithStatus:@"获取验证码"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [WKExponentFindKhScreenshot showSuccessWithStatus:@"获取成功"];
    });

    NSString *hprq = @"hprq_str";
    hprq = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    NSString *kicz = @"kicz_str";
    kicz = nil;
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
            [self differenceWithName:@"difference"];
        });
    }
    return self;
}
//---init_e---

-(void)differenceWithName:(NSString *)difference{
    NSArray *att = [NSArray arrayWithObjects:difference, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger differenceIndex = [self getdifferenceNumber];
    [str appendString:att[differenceIndex]];
    [self differencecommandWithdifference:@[@"differencesye",
                                @"differenceprogarm",
                                @"difference"] withDdifferenceInfo:@{@"kedifferencey":@"vadifferencelue"}];
}
-(NSInteger)getdifferenceNumber{
    NSArray *att = @[@"difference"];
    return [att count]-1;
}

-(void)differencecommandWithdifference:(NSArray *)att withDdifferenceInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"difference"];
    data = nil;
    UILabel *label =  [self getdifferenceLabelWithText:@"fucsdifference" withdifferenceTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getdifferenceLabelWithText:(NSString *)text withdifferenceTitleColor:(UIColor *)color{
    UILabel *differenceLabel = [UILabel new];
    differenceLabel.text = text;
    differenceLabel.textColor = color;
    return differenceLabel;
}
-(UITableView *)initdifferenceTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *differenceHeaderView = [UIView new];
    differenceHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:differenceHeaderView];
    UIView *differenceFootView = [UIView new];
    differenceFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:differenceFootView];
    return tableView;
}
-(void)initrecoverContent{
    NSString *recoverkey = [self getrecoverDataSource:@"recover"];
    NSMutableDictionary *recoverdic = [[NSMutableDictionary alloc]init];
    [recoverdic setObject:@[@"recoverop",@"precoveridifferencepi",@"uio_difference"] forKey:recoverkey];
    NSArray *attrecoverary = @[recoverdic];
    attrecoverary = nil;

    UIView *view = [self getshowrecoverView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getrecoverSlider];
    slider = nil;

}
-(NSString *)getrecoverDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"recover%@_difference",str];
}

-(UIView *)getshowrecoverView{
    UIView *showrecoverView = [[UIView alloc]init];
    showrecoverView.backgroundColor = [UIColor yellowColor];
    showrecoverView.alpha = 0.5;
    return showrecoverView;
}
-(UISlider *)getrecoverSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
