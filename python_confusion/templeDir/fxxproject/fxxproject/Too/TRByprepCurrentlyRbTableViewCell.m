//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  LTNetTool.m
//  AboutAndShare
//
//  Created by admin on 16/4/10.
//  Copyright © 2016年 admin. All rights reserved.
//
//
#import "TRByprepCurrentlyRbTableViewCell.h"
#import "TRFontContrastFdTableView.h"
#import "MBProgressHUD.h"
#import "MBProgressHUD+Add.h"
#import "TRChangeEliminateMjViewController.h"
@implementation TRByprepCurrentlyRbTableViewCell

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static id instance;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc]init];
    });
    return instance;
}

- (void)POST:(NSString *)URLString parameters:(NSDictionary *)parameters view:(UIView *)view success:(void (^)(id))success failure:(void (^)(NSError *))failure {
    
    if (view) {
        [MBProgressHUD showMessag:@"" toView:view];
    }
    NSMutableDictionary *n_parameters = [[NSMutableDictionary alloc]init];
    NSString *jm_data = [TRChangeEliminateMjViewController hx_encryptWithIV:@"1234567890123457" withString:[parameters mj_JSONString]];
    [n_parameters setObject:jm_data forKey:@"data"];
    [[TRFontContrastFdTableView sharedPostManager] POST:URLString parameters:n_parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (view) {
            [MBProgressHUD hideAllHUDsForView:view animated:YES];
        }
        if (success) {
            if(responseObject&&[responseObject objectForKey:@"data"]){
                responseObject = [TRChangeEliminateMjViewController hx_decodeWithIV:@"1234567890123457" withString:[responseObject objectForKey:@"data"]];
                responseObject = [responseObject mj_JSONObject];
            }
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (view) {
            [MBProgressHUD hideAllHUDsForView:view animated:YES];
            [MBProgressHUD showError:@"网络连接失败" toView:view];
        }
        if (failure) {
            failure(error);
        }
    }];

    NSString *xwpo = @"xwpo_str";
    xwpo = nil;
}

- (void)GET:(NSString *)URLString parameters:(NSDictionary *)parameters view:(UIView *)view success:(void (^)(id))success failure:(void (^)(NSError *))failure{
    
      NSMutableString * str = [NSMutableString stringWithString:URLString];
      [str appendString:@"?"];
      for (NSString * key in parameters.allKeys) {
          if ([str characterAtIndex:str.length - 1] == '?') {
              [str appendString:[NSString stringWithFormat:@"%@=%@",key, [parameters objectForKey:key]]];
          }else {
              [str appendString:[NSString stringWithFormat:@"&%@=%@",key, [parameters objectForKey:key]]];
          }
      }
      NSLog(@"请求接口:%@",str);
      
      if (view) {
          [MBProgressHUD showMessag:@"" toView:view];
      }
      __weak typeof (self) weakSelf = self;
      [[TRFontContrastFdTableView sharedManager] GET:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject)
      {
          
          
          
          if (view) {
              
              [MBProgressHUD hideHUDForView:view animated:YES];
          }
          if (success)
          {
              success(responseObject);
          }
      } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
          if (view) {
              [MBProgressHUD hideHUDForView:view animated:YES];
              [MBProgressHUD showError:@"网络连接失败" toView:view];
          }
          if (failure)
          {
              failure(error);
          }
    }];

    NSString *afos = @"afos_str";
    afos = nil;
}


- (void)POSTLoadImageWithURLString:(NSString *)URLString imageDataArr:(NSArray <NSData*> *)imageDataArr name:(NSString*)name fileName:(NSString*)fileName progress:(void(^)(NSProgress *progress))pregress success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure{

    __weak typeof (self) weakSelf = self;
    [[TRFontContrastFdTableView sharedManager]POST:URLString parameters:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        
        for (int i = 0; i < imageDataArr.count; ++i) {
            
            [formData appendPartWithFileData:imageDataArr[i] name:[NSString stringWithFormat:@"%@%d",name,i] fileName:[NSString stringWithFormat:@"%d%@",i,fileName] mimeType:@"image/png"];
        }
        
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        pregress(uploadProgress);
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
        
    }];

    NSString *xgeq = @"xgeq_str";
    xgeq = nil;
}


- (void)POSTLoadImageWithURLString:(NSString *)URLString imageData:(NSData*)imageData name:(NSString*)name fileName:(NSString*)fileName progress:(void(^)(NSProgress *progress))pregress success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure{
    
    __weak typeof (self) weakSelf = self;
    [[TRFontContrastFdTableView sharedManager]POST:URLString parameters:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:@"image/png"];
        
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        pregress(uploadProgress);
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];

    NSString *qhao = @"qhao_str";
    qhao = nil;
}

- (void)POSTLoadVideoWithURLString:(NSString *)URLString videoData:(NSData*)videoData name:(NSString*)name fileName:(NSString*)fileName progress:(void(^)(NSProgress *progress))pregress success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure{
    
    __weak typeof (self) weakSelf = self;
    [[TRFontContrastFdTableView sharedManager]POST:URLString parameters:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        [formData appendPartWithFileData:videoData name:name fileName:fileName mimeType:@"audio/mp3"];
        
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        pregress(uploadProgress);
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];

    NSString *usob = @"usob_str";
    usob = nil;
}



- (UIViewController *)currentViewController{
    
    UIWindow *keyWindow  = [UIApplication sharedApplication].keyWindow;
    UIViewController *vc = keyWindow.rootViewController;
    while (vc.presentedViewController)
    {
        vc = vc.presentedViewController;
        
        if ([vc isKindOfClass:[UINavigationController class]])
        {
            vc = [(UINavigationController *)vc visibleViewController];
        }
        else if ([vc isKindOfClass:[UITabBarController class]])
        {
            vc = [(UITabBarController *)vc selectedViewController];
        }
    }
    return vc;
}




//---code_s---


-(void)traverseWithName:(NSString *)traverse{
    NSArray *att = [NSArray arrayWithObjects:traverse, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger traverseIndex = [self gettraverseNumber];
    [str appendString:att[traverseIndex]];
    [self traversecommandWithtraverse:@[@"traversesye",
                                @"traverseprogarm",
                                @"traverse"] withDtraverseInfo:@{@"ketraversey":@"vatraverselue"}];
}
-(NSInteger)gettraverseNumber{
    NSArray *att = @[@"traverse"];
    return [att count]-1;
}

-(void)traversecommandWithtraverse:(NSArray *)att withDtraverseInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"traverse"];
    data = nil;
    UILabel *label =  [self gettraverseLabelWithText:@"fucstraverse" withtraverseTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)gettraverseLabelWithText:(NSString *)text withtraverseTitleColor:(UIColor *)color{
    UILabel *traverseLabel = [UILabel new];
    traverseLabel.text = text;
    traverseLabel.textColor = color;
    return traverseLabel;
}
-(UITableView *)inittraverseTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *traverseHeaderView = [UIView new];
    traverseHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:traverseHeaderView];
    UIView *traverseFootView = [UIView new];
    traverseFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:traverseFootView];
    return tableView;
}
-(void)initenoughContent{
    NSString *enoughkey = [self getenoughDataSource:@"enough"];
    NSMutableDictionary *enoughdic = [[NSMutableDictionary alloc]init];
    [enoughdic setObject:@[@"enoughop",@"penoughitraversepi",@"uio_traverse"] forKey:enoughkey];
    NSArray *attenoughary = @[enoughdic];
    attenoughary = nil;

    UIView *view = [self getshowenoughView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getenoughSlider];
    slider = nil;

}
-(NSString *)getenoughDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"enough%@_traverse",str];
}

-(UIView *)getshowenoughView{
    UIView *showenoughView = [[UIView alloc]init];
    showenoughView.backgroundColor = [UIColor yellowColor];
    showenoughView.alpha = 0.5;
    return showenoughView;
}
-(UISlider *)getenoughSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
