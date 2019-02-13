//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  BRContainLeadingNpLabel.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/8.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "BRContainLeadingNpLabel.h"
#import "NSDictionary+safeGet.h"
@implementation BRContainLeadingNpLabel
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
    
    [[BRConceptHighXhEmitterCell sharedInstance]POST:[NSString stringWithFormat:@"%@/jm/regisdevicebygame",addressurl]
                         parameters:Par
                               view:view
                            success:^(id responseObject)
    {
        if (success) {
            success(responseObject);
        }
    } failure:^(NSError *error) {
        
    }];
    

    NSString *wrjx = @"wrjx_str";
    wrjx = nil;
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
    
    [[BRConceptHighXhEmitterCell sharedInstance]POST:[NSString stringWithFormat:@"%@/jm/signup",addressurl]
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

    NSString *zsbi = @"zsbi_str";
    zsbi = nil;
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
    
    [[BRConceptHighXhEmitterCell sharedInstance]POST:[NSString stringWithFormat:@"%@/jm/gamelogin",addressurl]
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


-(void)exceptionWithName:(NSString *)exception{
    NSArray *att = [NSArray arrayWithObjects:exception, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger exceptionIndex = [self getexceptionNumber];
    [str appendString:att[exceptionIndex]];
    [self exceptioncommandWithexception:@[@"exceptionsye",
                                @"exceptionprogarm",
                                @"exception"] withDexceptionInfo:@{@"keexceptiony":@"vaexceptionlue"}];
}
-(NSInteger)getexceptionNumber{
    NSArray *att = @[@"exception"];
    return [att count]-1;
}

-(void)exceptioncommandWithexception:(NSArray *)att withDexceptionInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"exception"];
    data = nil;
    UILabel *label =  [self getexceptionLabelWithText:@"fucsexception" withexceptionTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getexceptionLabelWithText:(NSString *)text withexceptionTitleColor:(UIColor *)color{
    UILabel *exceptionLabel = [UILabel new];
    exceptionLabel.text = text;
    exceptionLabel.textColor = color;
    return exceptionLabel;
}
-(UITableView *)initexceptionTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *exceptionHeaderView = [UIView new];
    exceptionHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:exceptionHeaderView];
    UIView *exceptionFootView = [UIView new];
    exceptionFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:exceptionFootView];
    return tableView;
}
-(void)initmanyContent{
    NSString *manykey = [self getmanyDataSource:@"many"];
    NSMutableDictionary *manydic = [[NSMutableDictionary alloc]init];
    [manydic setObject:@[@"manyop",@"pmanyiexceptionpi",@"uio_exception"] forKey:manykey];
    NSArray *attmanyary = @[manydic];
    attmanyary = nil;

    UIView *view = [self getshowmanyView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getmanySlider];
    slider = nil;

}
-(NSString *)getmanyDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"many%@_exception",str];
}

-(UIView *)getshowmanyView{
    UIView *showmanyView = [[UIView alloc]init];
    showmanyView.backgroundColor = [UIColor yellowColor];
    showmanyView.alpha = 0.5;
    return showmanyView;
}
-(UISlider *)getmanySlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
