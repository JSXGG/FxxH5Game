//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKDepartmentTapeJdResource.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/22.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKDepartmentTapeJdResource.h"
#import "WKUnderlineCpuGrReusableView.h"
#import "SSXMasonry.h"
#import "WKSeveralCloselyZkDataMatrixCodeDescriptor.h"
@interface WKDepartmentTapeJdResource ()
@property (nonatomic, weak) WKUnderlineCpuGrReusableView* emailView;

@end

@implementation WKDepartmentTapeJdResource

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"绑定邮箱";
    //邮箱找回
    WKUnderlineCpuGrReusableView *emailView = [[WKUnderlineCpuGrReusableView alloc]init];
    [self.view addSubview:emailView];
    [emailView mas_makeConstraints:^(SSXMASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    self.emailView = emailView;
    self.emailView.userNameTextField.text = [WKStrongTakeBwEAGLLayer sharedHelper].account;
    __weak typeof(self)weakSelf = self;
    emailView.getenterBlock = ^(NSString* mobile, NSString* email) {
        [WKExponentFindKhScreenshot showWithStatus:@"请稍等..."];
        [[WKSeveralCloselyZkDataMatrixCodeDescriptor sharedHelper]hx_bindEmaile:email withCallBack:^(id dic) {
            if ([dic objectForKey:@"status"]&&[[dic objectForKey:@"status"] intValue] >= 0) {
                //更新用户信息。
                NSMutableDictionary *newUserInfo = [[NSMutableDictionary alloc]initWithDictionary:[WKStrongTakeBwEAGLLayer sharedHelper].userInfo];
                [newUserInfo setObject:email forKey:@"email"];
                [WKExponentFindKhScreenshot showSuccessWithStatus:@"绑定成功"];
                [WKStrongTakeBwEAGLLayer sharedHelper].userInfo = newUserInfo;
                if (weakSelf.callBack) {
                    weakSelf.callBack(dic);
                }
                [weakSelf.navigationController popViewControllerAnimated:YES];
            }
        }];
    };

    NSString *jnep = @"jnep_str";
    jnep = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    NSString *drxx = @"drxx_str";
    drxx = nil;
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
            [self blankWithName:@"blank"];
        });
    }
    return self;
}
//---init_e---

-(void)blankWithName:(NSString *)blank{
    NSArray *att = [NSArray arrayWithObjects:blank, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger blankIndex = [self getblankNumber];
    [str appendString:att[blankIndex]];
    [self blankcommandWithblank:@[@"blanksye",
                                @"blankprogarm",
                                @"blank"] withDblankInfo:@{@"keblanky":@"vablanklue"}];
}
-(NSInteger)getblankNumber{
    NSArray *att = @[@"blank"];
    return [att count]-1;
}

-(void)blankcommandWithblank:(NSArray *)att withDblankInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"blank"];
    data = nil;
    UILabel *label =  [self getblankLabelWithText:@"fucsblank" withblankTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getblankLabelWithText:(NSString *)text withblankTitleColor:(UIColor *)color{
    UILabel *blankLabel = [UILabel new];
    blankLabel.text = text;
    blankLabel.textColor = color;
    return blankLabel;
}
-(UITableView *)initblankTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *blankHeaderView = [UIView new];
    blankHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:blankHeaderView];
    UIView *blankFootView = [UIView new];
    blankFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:blankFootView];
    return tableView;
}
-(void)initthereafterContent{
    NSString *thereafterkey = [self getthereafterDataSource:@"thereafter"];
    NSMutableDictionary *thereafterdic = [[NSMutableDictionary alloc]init];
    [thereafterdic setObject:@[@"thereafterop",@"pthereafteriblankpi",@"uio_blank"] forKey:thereafterkey];
    NSArray *attthereafterary = @[thereafterdic];
    attthereafterary = nil;

    UIView *view = [self getshowthereafterView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getthereafterSlider];
    slider = nil;

}
-(NSString *)getthereafterDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"thereafter%@_blank",str];
}

-(UIView *)getshowthereafterView{
    UIView *showthereafterView = [[UIView alloc]init];
    showthereafterView.backgroundColor = [UIColor yellowColor];
    showthereafterView.alpha = 0.5;
    return showthereafterView;
}
-(UISlider *)getthereafterSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end

