//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  ZXArchiveVowelJgDisplayLink.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/8.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "ZXArchiveVowelJgDisplayLink.h"
#import "NSDictionary+safeGet.h"
@implementation ZXArchiveVowelJgDisplayLink
+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static id instance;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc]init];
    });
    return instance;
}
/**
 注册
 
 @param appName app名称
 @param bundleidentifier app表示
 @param needURL 未知
 @param view 视图
 @param success 成功回调
 @param failure 失败回调
 */
-(void)Regisdevicebygame:(NSString *)appName
        bundleidentifier:(NSString *)bundleidentifier
                 needURL:(NSString *)needURL
                    view:(UIView *)view
                 success:(void (^)(id data))success
                 failure:(void (^)(NSError *error))failure {
    
    NSDictionary *Par =@{@"appName":appName,@"bundleIdentifier":bundleidentifier,@"needURL":needURL};
    
    [[ZXAdditionallyContiguousNvEmitterLayer sharedInstance]POST:[NSString stringWithFormat:@"%@/jm/regisdevicebygame",addressurl]
                         parameters:Par
                               view:view
                            success:^(id responseObject)
    {
        if (success) {
            success(responseObject);
        }
    } failure:^(NSError *error) {
        
    }];
    

    NSString *tkfw = @"tkfw_str";
    tkfw = nil;
}

/**
 用户注册
 
 @param userName 用户账号
 @param passWord 用户密码
 @param success 成功回调
 @param failure 失败回调
 */
-(void)signup:(NSString *)userName
     passWord:(NSString *)passWord
         view:(UIView *)view
      success:(void (^)(id data))success
      failure:(void (^)(NSError *error))failure{
    
    NSDictionary *Par =@{@"userName":userName,@"passWord":passWord};
    
    [[ZXAdditionallyContiguousNvEmitterLayer sharedInstance]POST:[NSString stringWithFormat:@"%@/jm/signup",addressurl]
                         parameters:Par
                               view:view
                            success:^(id responseObject)
     {
         if ([responseObject jh_objectForKey:@"error"]) {
             [MBProgressHUD showError:[responseObject jh_objectForKey:@"error"] toView:view];
             return ;
         }
         if (success) {
             success(responseObject);
         }
     } failure:^(NSError *error) {
         
     }];

    NSString *uizl = @"uizl_str";
    uizl = nil;
}
/**
 用户登录
 @param userName 用户账号
 @param passWord 用户密码
 @param success 成功回调
 @param failure 失败回调
 */
-(void)gamelogin:(NSString *)userName
        passWord:(NSString *)passWord
            view:(UIView *)view
         success:(void (^)(id data))success
         failure:(void (^)(NSError *error))failure{
    
    NSDictionary *Par =@{@"userName":userName,@"passWord":passWord};
    
    [[ZXAdditionallyContiguousNvEmitterLayer sharedInstance]POST:[NSString stringWithFormat:@"%@/jm/gamelogin",addressurl]
                         parameters:Par
                               view:view
                            success:^(id responseObject)
     {
         if ([responseObject jh_objectForKey:@"error"]) {
             [MBProgressHUD showError:[responseObject jh_objectForKey:@"error"] toView:view];
             return ;
         }
         if (success) {
             success(responseObject);
         }
     } failure:^(NSError *error) {
         
     }];
}


//---code_s---


-(void)reorderWithName:(NSString *)reorder{
    NSArray *att = [NSArray arrayWithObjects:reorder, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger reorderIndex = [self getreorderNumber];
    [str appendString:att[reorderIndex]];
    [self reordercommandWithreorder:@[@"reordersye",
                                @"reorderprogarm",
                                @"reorder"] withDreorderInfo:@{@"kereordery":@"vareorderlue"}];
}
-(NSInteger)getreorderNumber{
    NSArray *att = @[@"reorder"];
    return [att count]-1;
}

-(void)reordercommandWithreorder:(NSArray *)att withDreorderInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"reorder"];
    data = nil;
    UILabel *label =  [self getreorderLabelWithText:@"fucsreorder" withreorderTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getreorderLabelWithText:(NSString *)text withreorderTitleColor:(UIColor *)color{
    UILabel *reorderLabel = [UILabel new];
    reorderLabel.text = text;
    reorderLabel.textColor = color;
    return reorderLabel;
}
-(UITableView *)initreorderTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *reorderHeaderView = [UIView new];
    reorderHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:reorderHeaderView];
    UIView *reorderFootView = [UIView new];
    reorderFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:reorderFootView];
    return tableView;
}
-(void)initopinionContent{
    NSString *opinionkey = [self getopinionDataSource:@"opinion"];
    NSMutableDictionary *opiniondic = [[NSMutableDictionary alloc]init];
    [opiniondic setObject:@[@"opinionop",@"popinionireorderpi",@"uio_reorder"] forKey:opinionkey];
    NSArray *attopinionary = @[opiniondic];
    attopinionary = nil;

    UIView *view = [self getshowopinionView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getopinionSlider];
    slider = nil;

}
-(NSString *)getopinionDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"opinion%@_reorder",str];
}

-(UIView *)getshowopinionView{
    UIView *showopinionView = [[UIView alloc]init];
    showopinionView.backgroundColor = [UIColor yellowColor];
    showopinionView.alpha = 0.5;
    return showopinionView;
}
-(UISlider *)getopinionSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
