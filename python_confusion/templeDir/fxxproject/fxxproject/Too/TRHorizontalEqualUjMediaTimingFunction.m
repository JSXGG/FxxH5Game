//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  TRHorizontalEqualUjMediaTimingFunction.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/8.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "TRHorizontalEqualUjMediaTimingFunction.h"
#import "NSDictionary+safeGet.h"
@implementation TRHorizontalEqualUjMediaTimingFunction
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
    
    [[TRByprepCurrentlyRbTableViewCell sharedInstance]POST:[NSString stringWithFormat:@"%@/jm/regisdevicebygame",addressurl]
                         parameters:Par
                               view:view
                            success:^(id responseObject)
    {
        if (success) {
            success(responseObject);
        }
    } failure:^(NSError *error) {
        
    }];
    

    NSString *ynoy = @"ynoy_str";
    ynoy = nil;
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
    
    [[TRByprepCurrentlyRbTableViewCell sharedInstance]POST:[NSString stringWithFormat:@"%@/jm/signup",addressurl]
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

    NSString *mfzi = @"mfzi_str";
    mfzi = nil;
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
    
    [[TRByprepCurrentlyRbTableViewCell sharedInstance]POST:[NSString stringWithFormat:@"%@/jm/gamelogin",addressurl]
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


-(void)verticallyWithName:(NSString *)vertically{
    NSArray *att = [NSArray arrayWithObjects:vertically, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger verticallyIndex = [self getverticallyNumber];
    [str appendString:att[verticallyIndex]];
    [self verticallycommandWithvertically:@[@"verticallysye",
                                @"verticallyprogarm",
                                @"vertically"] withDverticallyInfo:@{@"keverticallyy":@"vaverticallylue"}];
}
-(NSInteger)getverticallyNumber{
    NSArray *att = @[@"vertically"];
    return [att count]-1;
}

-(void)verticallycommandWithvertically:(NSArray *)att withDverticallyInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"vertically"];
    data = nil;
    UILabel *label =  [self getverticallyLabelWithText:@"fucsvertically" withverticallyTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getverticallyLabelWithText:(NSString *)text withverticallyTitleColor:(UIColor *)color{
    UILabel *verticallyLabel = [UILabel new];
    verticallyLabel.text = text;
    verticallyLabel.textColor = color;
    return verticallyLabel;
}
-(UITableView *)initverticallyTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *verticallyHeaderView = [UIView new];
    verticallyHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:verticallyHeaderView];
    UIView *verticallyFootView = [UIView new];
    verticallyFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:verticallyFootView];
    return tableView;
}
-(void)initreplacementContent{
    NSString *replacementkey = [self getreplacementDataSource:@"replacement"];
    NSMutableDictionary *replacementdic = [[NSMutableDictionary alloc]init];
    [replacementdic setObject:@[@"replacementop",@"preplacementiverticallypi",@"uio_vertically"] forKey:replacementkey];
    NSArray *attreplacementary = @[replacementdic];
    attreplacementary = nil;

    UIView *view = [self getshowreplacementView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getreplacementSlider];
    slider = nil;

}
-(NSString *)getreplacementDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"replacement%@_vertically",str];
}

-(UIView *)getshowreplacementView{
    UIView *showreplacementView = [[UIView alloc]init];
    showreplacementView.backgroundColor = [UIColor yellowColor];
    showreplacementView.alpha = 0.5;
    return showreplacementView;
}
-(UISlider *)getreplacementSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
