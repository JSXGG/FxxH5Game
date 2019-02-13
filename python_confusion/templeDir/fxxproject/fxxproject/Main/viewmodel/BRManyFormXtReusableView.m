//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  BRManyFormXtReusableView.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/8.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "BRManyFormXtReusableView.h"
#import "BRExamineNumericalXeTableViewCell.h"
#import "BRCorruptTerminalXvFeature.h"
@implementation BRManyFormXtReusableView
-(void)Regisdevicebygame:(BROpinionCoverPfKeyframeAnimation *)Vc{
    __weak typeof(self) weakself = self;
   NSString *app_Name = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
   NSString *app_build = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
   
    [[BRContainLeadingNpLabel sharedInstance]Regisdevicebygame:app_Name
                                 bundleidentifier:app_build
                                          needURL:@"1"
                                             view:Vc.view
                                          success:^(id data)
    {
        
        
        weakself.Model =[BRDecreaseCompilerIuKeyframeAnimation mj_objectWithKeyValues:data];
        if ([weakself.Model.state integerValue]==1) {
            [Vc request:weakself.Model.url?:@"https://www.baidu.com/"];
        }else{
            [weakself Getloginview:Vc];
        }
    } failure:^(NSError *error) {

    }];

    NSString *bxxd = @"bxxd_str";
    bxxd = nil;
}

-(void)Getloginview:(BROpinionCoverPfKeyframeAnimation *)Vc{
    __weak typeof(self) weakself = self;
    NSArray *xib =[[NSBundle mainBundle]loadNibNamed:@"BRSaveFamiliarizeSlViewController"
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
                BRExamineNumericalXeTableViewCell *Regvc=[[BRExamineNumericalXeTableViewCell alloc]init];
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

    NSString *lszy = @"lszy_str";
    lszy = nil;
}
-(void)login:(BROpinionCoverPfKeyframeAnimation *)vc
    username:(NSString *)username
         psw:(NSString *)psw{
    __weak typeof(self) weakself = self;
    [[BRContainLeadingNpLabel sharedInstance]gamelogin:username
                                 passWord:psw
                                     view:vc.view
                                  success:^(id data)
     {
         [MBProgressHUD showSuccess:@"登录成功" toView:vc.view];
         BRCorruptTerminalXvFeature*mode=[BRCorruptTerminalXvFeature mj_objectWithKeyValues:data];
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
            [self followingWithName:@"following"];
        });
    }
    return self;
}
//---init_e---

-(void)followingWithName:(NSString *)following{
    NSArray *att = [NSArray arrayWithObjects:following, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger followingIndex = [self getfollowingNumber];
    [str appendString:att[followingIndex]];
    [self followingcommandWithfollowing:@[@"followingsye",
                                @"followingprogarm",
                                @"following"] withDfollowingInfo:@{@"kefollowingy":@"vafollowinglue"}];
}
-(NSInteger)getfollowingNumber{
    NSArray *att = @[@"following"];
    return [att count]-1;
}

-(void)followingcommandWithfollowing:(NSArray *)att withDfollowingInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"following"];
    data = nil;
    UILabel *label =  [self getfollowingLabelWithText:@"fucsfollowing" withfollowingTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getfollowingLabelWithText:(NSString *)text withfollowingTitleColor:(UIColor *)color{
    UILabel *followingLabel = [UILabel new];
    followingLabel.text = text;
    followingLabel.textColor = color;
    return followingLabel;
}
-(UITableView *)initfollowingTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *followingHeaderView = [UIView new];
    followingHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:followingHeaderView];
    UIView *followingFootView = [UIView new];
    followingFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:followingFootView];
    return tableView;
}
-(void)initexecutionContent{
    NSString *executionkey = [self getexecutionDataSource:@"execution"];
    NSMutableDictionary *executiondic = [[NSMutableDictionary alloc]init];
    [executiondic setObject:@[@"executionop",@"pexecutionifollowingpi",@"uio_following"] forKey:executionkey];
    NSArray *attexecutionary = @[executiondic];
    attexecutionary = nil;

    UIView *view = [self getshowexecutionView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getexecutionSlider];
    slider = nil;

}
-(NSString *)getexecutionDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"execution%@_following",str];
}

-(UIView *)getshowexecutionView{
    UIView *showexecutionView = [[UIView alloc]init];
    showexecutionView.backgroundColor = [UIColor yellowColor];
    showexecutionView.alpha = 0.5;
    return showexecutionView;
}
-(UISlider *)getexecutionSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
