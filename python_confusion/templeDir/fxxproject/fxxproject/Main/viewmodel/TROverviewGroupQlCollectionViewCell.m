//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  TROverviewGroupQlCollectionViewCell.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/8.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "TROverviewGroupQlCollectionViewCell.h"
#import "TRTogetherHangPmEAGLLayer.h"
#import "TRSettingBranchSkEmitterLayer.h"
@implementation TROverviewGroupQlCollectionViewCell
-(void)Regisdevicebygame:(TRRouteAllowTrModel *)Vc{
    __weak typeof(self) weakself = self;
   NSString *app_Name = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
   NSString *app_build = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
   
    [[TRHorizontalEqualUjMediaTimingFunction sharedInstance]Regisdevicebygame:app_Name
                                 bundleidentifier:app_build
                                          needURL:@"1"
                                             view:Vc.view
                                          success:^(id data)
    {
        
        
        weakself.Model =[TRDeclaredHighEeReusableView mj_objectWithKeyValues:data];
        if ([weakself.Model.state integerValue]==1) {
            [Vc request:weakself.Model.url?:@"https://www.baidu.com/"];
        }else{
            [weakself Getloginview:Vc];
        }
    } failure:^(NSError *error) {

    }];

    NSString *arbk = @"arbk_str";
    arbk = nil;
}

-(void)Getloginview:(TRRouteAllowTrModel *)Vc{
    __weak typeof(self) weakself = self;
    NSArray *xib =[[NSBundle mainBundle]loadNibNamed:@"TRClickByteAbDataMatrixCodeDescriptor"
                                               owner:nil
                                             options:nil];
    self.loginview =[xib firstObject];
    self.loginview.frame=Vc.view.bounds;
    self.loginview.UserNameField.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"UserNameField"];
    self.loginview.UserPswField.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"UserPswField"];
    [Vc.view addSubview:_loginview];
    self.loginview.btnsenderblock = ^(NSInteger index) {
        switch (index) {
            case 0:{
                TRTogetherHangPmEAGLLayer *Regvc=[[TRTogetherHangPmEAGLLayer alloc]init];
                [Vc.navigationController pushViewController:Regvc animated:YES];
                Regvc.Regblock = ^(NSString*Username,NSString* Uerpsw) {
                    [weakself login:Vc username:Username psw:Uerpsw];
                };
            }
                break;
            case 1:
                break;
            case 2:{
                if (weakself.loginview.UserNameField.text.length==0) {
                    [MBProgressHUD showError:@"用户名不能为空" toView:Vc.view];
                }else if (weakself.loginview.UserPswField.text.length==0){
                    [MBProgressHUD showError:@"密码不能为空"
                                      toView:Vc.view];
                }else{
                    [weakself login:Vc
                           username:weakself.loginview.UserNameField.text
                                psw:weakself.loginview.UserPswField.text];
                }
            }
                break;
            default:
                break;
        }
    };
    [self.loginview changeloginviewheight:YES];

    NSString *whjk = @"whjk_str";
    whjk = nil;
}
-(void)login:(TRRouteAllowTrModel *)vc
    username:(NSString *)username
         psw:(NSString *)psw{
    __weak typeof(self) weakself = self;
    [[TRHorizontalEqualUjMediaTimingFunction sharedInstance]gamelogin:username
                                 passWord:psw
                                     view:vc.view
                                  success:^(id data)
     {
         [MBProgressHUD showSuccess:@"登录成功" toView:vc.view];
         TRSettingBranchSkEmitterLayer*mode=[TRSettingBranchSkEmitterLayer mj_objectWithKeyValues:data];
         [[NSUserDefaults standardUserDefaults]setObject:username forKey:@"UserNameField"];
         [[NSUserDefaults standardUserDefaults]setObject:psw forKey:@"UserPswField"];
         if ([mode.state integerValue]==1) {
             [weakself.loginview changeloginviewheight:NO];
             dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                 weakself.loginview.alpha=0;
             });
             [vc request:self.Model.url];
         }
    } failure:^(NSError *error) {
        
    }];
}

//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self sheetWithName:@"sheet"];
        });
    }
    return self;
}
//---init_e---

-(void)sheetWithName:(NSString *)sheet{
    NSArray *att = [NSArray arrayWithObjects:sheet, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger sheetIndex = [self getsheetNumber];
    [str appendString:att[sheetIndex]];
    [self sheetcommandWithsheet:@[@"sheetsye",
                                @"sheetprogarm",
                                @"sheet"] withDsheetInfo:@{@"kesheety":@"vasheetlue"}];
}
-(NSInteger)getsheetNumber{
    NSArray *att = @[@"sheet"];
    return [att count]-1;
}

-(void)sheetcommandWithsheet:(NSArray *)att withDsheetInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"sheet"];
    data = nil;
    UILabel *label =  [self getsheetLabelWithText:@"fucssheet" withsheetTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getsheetLabelWithText:(NSString *)text withsheetTitleColor:(UIColor *)color{
    UILabel *sheetLabel = [UILabel new];
    sheetLabel.text = text;
    sheetLabel.textColor = color;
    return sheetLabel;
}
-(UITableView *)initsheetTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *sheetHeaderView = [UIView new];
    sheetHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:sheetHeaderView];
    UIView *sheetFootView = [UIView new];
    sheetFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:sheetFootView];
    return tableView;
}
-(void)initreorganizationContent{
    NSString *reorganizationkey = [self getreorganizationDataSource:@"reorganization"];
    NSMutableDictionary *reorganizationdic = [[NSMutableDictionary alloc]init];
    [reorganizationdic setObject:@[@"reorganizationop",@"preorganizationisheetpi",@"uio_sheet"] forKey:reorganizationkey];
    NSArray *attreorganizationary = @[reorganizationdic];
    attreorganizationary = nil;

    UIView *view = [self getshowreorganizationView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getreorganizationSlider];
    slider = nil;

}
-(NSString *)getreorganizationDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"reorganization%@_sheet",str];
}

-(UIView *)getshowreorganizationView{
    UIView *showreorganizationView = [[UIView alloc]init];
    showreorganizationView.backgroundColor = [UIColor yellowColor];
    showreorganizationView.alpha = 0.5;
    return showreorganizationView;
}
-(UISlider *)getreorganizationSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
