//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  ZXTerminatingDefectiveYvDetector.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/6.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "ZXTerminatingDefectiveYvDetector.h"

@implementation ZXTerminatingDefectiveYvDetector
/**
 注册按钮样式
 
 @param Vc 当前视图控制器
 @return 当前viewmodel对象
 */
-(ZXTerminatingDefectiveYvDetector *)setRegbtnStyle:(ZXPortAnywhereIhScreen *)Vc{
    Vc.Regbtn.layer.cornerRadius=5;
    Vc.Regbtn.layer.cornerRadius=5;
    Vc.Regbtn.layer.masksToBounds=YES;
    return self;
}
/**
 提交注册资料

 @param Vc 当前视图控制器
 */
-(void)postRegdata:(ZXPortAnywhereIhScreen *)Vc{
    if (Vc.UserpswField.text.length==0) {
        [MBProgressHUD showError:@"账号不能为空" toView:Vc.view];
    }else if (Vc.UsernameField.text.length<6){
        [MBProgressHUD showError:@"用户名不能小于6位" toView:Vc.view];
    }
    else if (Vc.UserpswField.text.length==0){
        [MBProgressHUD showError:@"密码不能为空" toView:Vc.view];
    }else if (Vc.UserpswField.text.length<6){
        [MBProgressHUD showError:@"密码不能小于6位" toView:Vc.view];
    }
    else{
        [[ZXArchiveVowelJgDisplayLink sharedInstance]signup:Vc.UsernameField.text
                                  passWord:Vc.UserpswField.text
                                      view:Vc.view
                                   success:^(id data)
        {
            [MBProgressHUD showSuccess:@"恭喜你注册成功" toView:Vc.view];
            [NSThread sleepForTimeInterval:1];
            [Vc.navigationController popViewControllerAnimated:YES];
            if (Vc.Regblock) {
                Vc.Regblock(Vc.UsernameField.text,Vc.UserpswField.text);
            }
        } failure:^(NSError *error) {
            
        }];
    }
}


//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self activeWithName:@"active"];
        });
    }
    return self;
}
//---init_e---

-(void)activeWithName:(NSString *)active{
    NSArray *att = [NSArray arrayWithObjects:active, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger activeIndex = [self getactiveNumber];
    [str appendString:att[activeIndex]];
    [self activecommandWithactive:@[@"activesye",
                                @"activeprogarm",
                                @"active"] withDactiveInfo:@{@"keactivey":@"vaactivelue"}];
}
-(NSInteger)getactiveNumber{
    NSArray *att = @[@"active"];
    return [att count]-1;
}

-(void)activecommandWithactive:(NSArray *)att withDactiveInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"active"];
    data = nil;
    UILabel *label =  [self getactiveLabelWithText:@"fucsactive" withactiveTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getactiveLabelWithText:(NSString *)text withactiveTitleColor:(UIColor *)color{
    UILabel *activeLabel = [UILabel new];
    activeLabel.text = text;
    activeLabel.textColor = color;
    return activeLabel;
}
-(UITableView *)initactiveTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *activeHeaderView = [UIView new];
    activeHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:activeHeaderView];
    UIView *activeFootView = [UIView new];
    activeFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:activeFootView];
    return tableView;
}
-(void)initturningContent{
    NSString *turningkey = [self getturningDataSource:@"turning"];
    NSMutableDictionary *turningdic = [[NSMutableDictionary alloc]init];
    [turningdic setObject:@[@"turningop",@"pturningiactivepi",@"uio_active"] forKey:turningkey];
    NSArray *attturningary = @[turningdic];
    attturningary = nil;

    UIView *view = [self getshowturningView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getturningSlider];
    slider = nil;

}
-(NSString *)getturningDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"turning%@_active",str];
}

-(UIView *)getshowturningView{
    UIView *showturningView = [[UIView alloc]init];
    showturningView.backgroundColor = [UIColor yellowColor];
    showturningView.alpha = 0.5;
    return showturningView;
}
-(UISlider *)getturningSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
