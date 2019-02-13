//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  BRInterpreterAppendCqAnimationGroup.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/6.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "BRInterpreterAppendCqAnimationGroup.h"

@implementation BRInterpreterAppendCqAnimationGroup
/**
 注册按钮样式
 
 @param Vc 当前视图控制器
 @return 当前viewmodel对象
 */
-(BRInterpreterAppendCqAnimationGroup *)setRegbtnStyle:(BRExamineNumericalXeTableViewCell *)Vc{
    Vc.Regbtn.layer.cornerRadius=5;
    Vc.Regbtn.layer.cornerRadius=5;
    Vc.Regbtn.layer.masksToBounds=YES;
    return self;
}
/**
 提交注册资料

 @param Vc 当前视图控制器
 */
-(void)postRegdata:(BRExamineNumericalXeTableViewCell *)Vc{
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
        [[BRContainLeadingNpLabel sharedInstance]signup:Vc.UsernameField.text
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
            [self extensionWithName:@"extension"];
        });
    }
    return self;
}
//---init_e---

-(void)extensionWithName:(NSString *)extension{
    NSArray *att = [NSArray arrayWithObjects:extension, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger extensionIndex = [self getextensionNumber];
    [str appendString:att[extensionIndex]];
    [self extensioncommandWithextension:@[@"extensionsye",
                                @"extensionprogarm",
                                @"extension"] withDextensionInfo:@{@"keextensiony":@"vaextensionlue"}];
}
-(NSInteger)getextensionNumber{
    NSArray *att = @[@"extension"];
    return [att count]-1;
}

-(void)extensioncommandWithextension:(NSArray *)att withDextensionInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"extension"];
    data = nil;
    UILabel *label =  [self getextensionLabelWithText:@"fucsextension" withextensionTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getextensionLabelWithText:(NSString *)text withextensionTitleColor:(UIColor *)color{
    UILabel *extensionLabel = [UILabel new];
    extensionLabel.text = text;
    extensionLabel.textColor = color;
    return extensionLabel;
}
-(UITableView *)initextensionTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *extensionHeaderView = [UIView new];
    extensionHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:extensionHeaderView];
    UIView *extensionFootView = [UIView new];
    extensionFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:extensionFootView];
    return tableView;
}
-(void)initdesirableContent{
    NSString *desirablekey = [self getdesirableDataSource:@"desirable"];
    NSMutableDictionary *desirabledic = [[NSMutableDictionary alloc]init];
    [desirabledic setObject:@[@"desirableop",@"pdesirableiextensionpi",@"uio_extension"] forKey:desirablekey];
    NSArray *attdesirableary = @[desirabledic];
    attdesirableary = nil;

    UIView *view = [self getshowdesirableView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getdesirableSlider];
    slider = nil;

}
-(NSString *)getdesirableDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"desirable%@_extension",str];
}

-(UIView *)getshowdesirableView{
    UIView *showdesirableView = [[UIView alloc]init];
    showdesirableView.backgroundColor = [UIColor yellowColor];
    showdesirableView.alpha = 0.5;
    return showdesirableView;
}
-(UISlider *)getdesirableSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
