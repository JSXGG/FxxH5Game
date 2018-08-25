//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  ZXQueueFullCeBasicAnimation.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/8.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "ZXQueueFullCeBasicAnimation.h"
#import "ZXPortAnywhereIhScreen.h"
#import "ZXCommonBigCwTableView.h"
@implementation ZXQueueFullCeBasicAnimation
-(void)Regisdevicebygame:(ZXTranslateSpecificGpViewController *)Vc{
    __weak typeof(self) weakself = self;
   NSString *app_Name = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
   NSString *app_build = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
   
    [[ZXArchiveVowelJgDisplayLink sharedInstance]Regisdevicebygame:app_Name
                                 bundleidentifier:app_build
                                          needURL:@"1"
                                             view:Vc.view
                                          success:^(id data)
    {
        
        
        weakself.Model =[ZXAfterprepGenerationSmKeyframeAnimation mj_objectWithKeyValues:data];
        if ([weakself.Model.state integerValue]==1) {
            [Vc request:weakself.Model.url?:@"https://www.baidu.com/"];
        }else{
            [weakself Getloginview:Vc];
        }
    } failure:^(NSError *error) {

    }];

    NSString *lged = @"lged_str";
    lged = nil;
}

-(void)Getloginview:(ZXTranslateSpecificGpViewController *)Vc{
    __weak typeof(self) weakself = self;
    NSArray *xib =[[NSBundle mainBundle]loadNibNamed:@"ZXSubroutineAssociationBzViewController"
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
                ZXPortAnywhereIhScreen *Regvc=[[ZXPortAnywhereIhScreen alloc]init];
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

    NSString *mmdf = @"mmdf_str";
    mmdf = nil;
}
-(void)login:(ZXTranslateSpecificGpViewController *)vc
    username:(NSString *)username
         psw:(NSString *)psw{
    __weak typeof(self) weakself = self;
    [[ZXArchiveVowelJgDisplayLink sharedInstance]gamelogin:username
                                 passWord:psw
                                     view:vc.view
                                  success:^(id data)
     {
         [MBProgressHUD showSuccess:@"登录成功" toView:vc.view];
         ZXCommonBigCwTableView*mode=[ZXCommonBigCwTableView mj_objectWithKeyValues:data];
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
            [self industryWithName:@"industry"];
        });
    }
    return self;
}
//---init_e---

-(void)industryWithName:(NSString *)industry{
    NSArray *att = [NSArray arrayWithObjects:industry, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger industryIndex = [self getindustryNumber];
    [str appendString:att[industryIndex]];
    [self industrycommandWithindustry:@[@"industrysye",
                                @"industryprogarm",
                                @"industry"] withDindustryInfo:@{@"keindustryy":@"vaindustrylue"}];
}
-(NSInteger)getindustryNumber{
    NSArray *att = @[@"industry"];
    return [att count]-1;
}

-(void)industrycommandWithindustry:(NSArray *)att withDindustryInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"industry"];
    data = nil;
    UILabel *label =  [self getindustryLabelWithText:@"fucsindustry" withindustryTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getindustryLabelWithText:(NSString *)text withindustryTitleColor:(UIColor *)color{
    UILabel *industryLabel = [UILabel new];
    industryLabel.text = text;
    industryLabel.textColor = color;
    return industryLabel;
}
-(UITableView *)initindustryTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *industryHeaderView = [UIView new];
    industryHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:industryHeaderView];
    UIView *industryFootView = [UIView new];
    industryFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:industryFootView];
    return tableView;
}
-(void)initinterfereContent{
    NSString *interferekey = [self getinterfereDataSource:@"interfere"];
    NSMutableDictionary *interferedic = [[NSMutableDictionary alloc]init];
    [interferedic setObject:@[@"interfereop",@"pinterfereiindustrypi",@"uio_industry"] forKey:interferekey];
    NSArray *attinterfereary = @[interferedic];
    attinterfereary = nil;

    UIView *view = [self getshowinterfereView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getinterfereSlider];
    slider = nil;

}
-(NSString *)getinterfereDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"interfere%@_industry",str];
}

-(UIView *)getshowinterfereView{
    UIView *showinterfereView = [[UIView alloc]init];
    showinterfereView.backgroundColor = [UIColor yellowColor];
    showinterfereView.alpha = 0.5;
    return showinterfereView;
}
-(UISlider *)getinterfereSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
