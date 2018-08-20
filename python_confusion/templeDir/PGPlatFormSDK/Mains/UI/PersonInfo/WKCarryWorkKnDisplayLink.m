//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKCarryWorkKnDisplayLink.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/22.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKCarryWorkKnDisplayLink.h"
#import "WKBrownDisabledFaManagement.h"
#import "SSXMasonry.h"
#import "WKSeveralCloselyZkDataMatrixCodeDescriptor.h"
@interface WKCarryWorkKnDisplayLink ()
@property(nonatomic,weak)WKBrownDisabledFaManagement *mobileView;
@end

@implementation WKCarryWorkKnDisplayLink

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"绑定手机";
    //手机找回
    WKBrownDisabledFaManagement *mobileView = [[WKBrownDisabledFaManagement alloc]init];
    [self.view addSubview:mobileView];
    [mobileView mas_makeConstraints:^(SSXMASConstraintMaker* make) {
        make.edges.equalTo(self.view);
    }];
    self.mobileView = mobileView;
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
    __weak typeof(self)weakSelf = self;
    mobileView.getenterBlock = ^(NSString* mobile, NSString* vcode) {
        [WKExponentFindKhScreenshot showWithStatus:@"请稍等..."];
        [[WKSeveralCloselyZkDataMatrixCodeDescriptor sharedHelper] hx_bindPhoneWithNumber:mobile withVCode:vcode withCallBack:^(id dic) {
            if ([dic objectForKey:@"status"]&&[[dic objectForKey:@"status"] intValue] >= 0) {
                //更新用户信息。
                NSMutableDictionary *newUserInfo = [[NSMutableDictionary alloc]initWithDictionary:[WKStrongTakeBwEAGLLayer sharedHelper].userInfo];
                [newUserInfo setObject:@1 forKey:@"bind_cellphone"];
                [newUserInfo setObject:mobile forKey:@"phone"];
                [WKExponentFindKhScreenshot showSuccessWithStatus:@"绑定成功"];
                [WKStrongTakeBwEAGLLayer sharedHelper].userInfo = newUserInfo;
                if (weakSelf.callBack) {
                    weakSelf.callBack(dic);
                }
                [weakSelf.navigationController popViewControllerAnimated:YES];
            }
        }];
    };
    // Do any additional setup after loading the view.

    NSString *scdb = @"scdb_str";
    scdb = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    NSString *nlcl = @"nlcl_str";
    nlcl = nil;
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
            [self receivedWithName:@"received"];
        });
    }
    return self;
}
//---init_e---

-(void)receivedWithName:(NSString *)received{
    NSArray *att = [NSArray arrayWithObjects:received, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger receivedIndex = [self getreceivedNumber];
    [str appendString:att[receivedIndex]];
    [self receivedcommandWithreceived:@[@"receivedsye",
                                @"receivedprogarm",
                                @"received"] withDreceivedInfo:@{@"kereceivedy":@"vareceivedlue"}];
}
-(NSInteger)getreceivedNumber{
    NSArray *att = @[@"received"];
    return [att count]-1;
}

-(void)receivedcommandWithreceived:(NSArray *)att withDreceivedInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"received"];
    data = nil;
    UILabel *label =  [self getreceivedLabelWithText:@"fucsreceived" withreceivedTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getreceivedLabelWithText:(NSString *)text withreceivedTitleColor:(UIColor *)color{
    UILabel *receivedLabel = [UILabel new];
    receivedLabel.text = text;
    receivedLabel.textColor = color;
    return receivedLabel;
}
-(UITableView *)initreceivedTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *receivedHeaderView = [UIView new];
    receivedHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:receivedHeaderView];
    UIView *receivedFootView = [UIView new];
    receivedFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:receivedFootView];
    return tableView;
}
-(void)initspecifyContent{
    NSString *specifykey = [self getspecifyDataSource:@"specify"];
    NSMutableDictionary *specifydic = [[NSMutableDictionary alloc]init];
    [specifydic setObject:@[@"specifyop",@"pspecifyireceivedpi",@"uio_received"] forKey:specifykey];
    NSArray *attspecifyary = @[specifydic];
    attspecifyary = nil;

    UIView *view = [self getshowspecifyView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getspecifySlider];
    slider = nil;

}
-(NSString *)getspecifyDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"specify%@_received",str];
}

-(UIView *)getshowspecifyView{
    UIView *showspecifyView = [[UIView alloc]init];
    showspecifyView.backgroundColor = [UIColor yellowColor];
    showspecifyView.alpha = 0.5;
    return showspecifyView;
}
-(UISlider *)getspecifySlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end

