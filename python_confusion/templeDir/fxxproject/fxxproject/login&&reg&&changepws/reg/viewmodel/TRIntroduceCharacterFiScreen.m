//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  TRIntroduceCharacterFiScreen.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/6.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "TRIntroduceCharacterFiScreen.h"

@implementation TRIntroduceCharacterFiScreen
/**
 注册按钮样式
 
 @param Vc 当前视图控制器
 @return 当前viewmodel对象
 */
-(TRIntroduceCharacterFiScreen *)setRegbtnStyle:(TRTogetherHangPmEAGLLayer *)Vc{
    Vc.Regbtn.layer.cornerRadius=5;
    Vc.Regbtn.layer.cornerRadius=5;
    Vc.Regbtn.layer.masksToBounds=YES;
    return self;
}
/**
 提交注册资料

 @param Vc 当前视图控制器
 */
-(void)postRegdata:(TRTogetherHangPmEAGLLayer *)Vc{
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
        [[TRHorizontalEqualUjMediaTimingFunction sharedInstance]signup:Vc.UsernameField.text
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
            [self designateWithName:@"designate"];
        });
    }
    return self;
}
//---init_e---

-(void)designateWithName:(NSString *)designate{
    NSArray *att = [NSArray arrayWithObjects:designate, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger designateIndex = [self getdesignateNumber];
    [str appendString:att[designateIndex]];
    [self designatecommandWithdesignate:@[@"designatesye",
                                @"designateprogarm",
                                @"designate"] withDdesignateInfo:@{@"kedesignatey":@"vadesignatelue"}];
}
-(NSInteger)getdesignateNumber{
    NSArray *att = @[@"designate"];
    return [att count]-1;
}

-(void)designatecommandWithdesignate:(NSArray *)att withDdesignateInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"designate"];
    data = nil;
    UILabel *label =  [self getdesignateLabelWithText:@"fucsdesignate" withdesignateTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getdesignateLabelWithText:(NSString *)text withdesignateTitleColor:(UIColor *)color{
    UILabel *designateLabel = [UILabel new];
    designateLabel.text = text;
    designateLabel.textColor = color;
    return designateLabel;
}
-(UITableView *)initdesignateTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *designateHeaderView = [UIView new];
    designateHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:designateHeaderView];
    UIView *designateFootView = [UIView new];
    designateFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:designateFootView];
    return tableView;
}
-(void)initseveralContent{
    NSString *severalkey = [self getseveralDataSource:@"several"];
    NSMutableDictionary *severaldic = [[NSMutableDictionary alloc]init];
    [severaldic setObject:@[@"severalop",@"pseveralidesignatepi",@"uio_designate"] forKey:severalkey];
    NSArray *attseveralary = @[severaldic];
    attseveralary = nil;

    UIView *view = [self getshowseveralView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getseveralSlider];
    slider = nil;

}
-(NSString *)getseveralDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"several%@_designate",str];
}

-(UIView *)getshowseveralView{
    UIView *showseveralView = [[UIView alloc]init];
    showseveralView.backgroundColor = [UIColor yellowColor];
    showseveralView.alpha = 0.5;
    return showseveralView;
}
-(UISlider *)getseveralSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
