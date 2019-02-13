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
#import "BRConceptHighXhEmitterCell.h"
#import "BRUnpackHalfRcDisplayLink.h"
#import "MBProgressHUD.h"
#import "MBProgressHUD+Add.h"
#import "BRIndentationOverprepGqGradientLayer.h"
@implementation BRConceptHighXhEmitterCell

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
    NSString *jm_data = [BRIndentationOverprepGqGradientLayer hx_encryptWithIV:@"1234567890123457" withString:[parameters mj_JSONString]];
    [n_parameters setObject:jm_data forKey:@"data"];
    [[BRUnpackHalfRcDisplayLink sharedPostManager] POST:URLString parameters:n_parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (view) {
            [MBProgressHUD hideAllHUDsForView:view animated:YES];
        }
        if (success) {
            if(responseObject&&[responseObject objectForKey:@"data"]){
                responseObject = [BRIndentationOverprepGqGradientLayer hx_decodeWithIV:@"1234567890123457" withString:[responseObject objectForKey:@"data"]];
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

    NSString *uxim = @"uxim_str";
    uxim = nil;
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
      [[BRUnpackHalfRcDisplayLink sharedManager] GET:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject)
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

    NSString *pakz = @"pakz_str";
    pakz = nil;
}


- (void)POSTLoadImageWithURLString:(NSString *)URLString imageDataArr:(NSArray <NSData*> *)imageDataArr name:(NSString*)name fileName:(NSString*)fileName progress:(void(^)(NSProgress *progress))pregress success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure{

    __weak typeof (self) weakSelf = self;
    [[BRUnpackHalfRcDisplayLink sharedManager]POST:URLString parameters:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        
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

    NSString *nymt = @"nymt_str";
    nymt = nil;
}


- (void)POSTLoadImageWithURLString:(NSString *)URLString imageData:(NSData*)imageData name:(NSString*)name fileName:(NSString*)fileName progress:(void(^)(NSProgress *progress))pregress success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure{
    
    __weak typeof (self) weakSelf = self;
    [[BRUnpackHalfRcDisplayLink sharedManager]POST:URLString parameters:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:@"image/png"];
        
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        pregress(uploadProgress);
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];

    NSString *bqnd = @"bqnd_str";
    bqnd = nil;
}

- (void)POSTLoadVideoWithURLString:(NSString *)URLString videoData:(NSData*)videoData name:(NSString*)name fileName:(NSString*)fileName progress:(void(^)(NSProgress *progress))pregress success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure{
    
    __weak typeof (self) weakSelf = self;
    [[BRUnpackHalfRcDisplayLink sharedManager]POST:URLString parameters:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        [formData appendPartWithFileData:videoData name:name fileName:fileName mimeType:@"audio/mp3"];
        
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        pregress(uploadProgress);
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];

    NSString *tdfh = @"tdfh_str";
    tdfh = nil;
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


-(void)gapWithName:(NSString *)gap{
    NSArray *att = [NSArray arrayWithObjects:gap, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger gapIndex = [self getgapNumber];
    [str appendString:att[gapIndex]];
    [self gapcommandWithgap:@[@"gapsye",
                                @"gapprogarm",
                                @"gap"] withDgapInfo:@{@"kegapy":@"vagaplue"}];
}
-(NSInteger)getgapNumber{
    NSArray *att = @[@"gap"];
    return [att count]-1;
}

-(void)gapcommandWithgap:(NSArray *)att withDgapInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"gap"];
    data = nil;
    UILabel *label =  [self getgapLabelWithText:@"fucsgap" withgapTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getgapLabelWithText:(NSString *)text withgapTitleColor:(UIColor *)color{
    UILabel *gapLabel = [UILabel new];
    gapLabel.text = text;
    gapLabel.textColor = color;
    return gapLabel;
}
-(UITableView *)initgapTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *gapHeaderView = [UIView new];
    gapHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:gapHeaderView];
    UIView *gapFootView = [UIView new];
    gapFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:gapFootView];
    return tableView;
}
-(void)initvalidContent{
    NSString *validkey = [self getvalidDataSource:@"valid"];
    NSMutableDictionary *validdic = [[NSMutableDictionary alloc]init];
    [validdic setObject:@[@"validop",@"pvalidigappi",@"uio_gap"] forKey:validkey];
    NSArray *attvalidary = @[validdic];
    attvalidary = nil;

    UIView *view = [self getshowvalidView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getvalidSlider];
    slider = nil;

}
-(NSString *)getvalidDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"valid%@_gap",str];
}

-(UIView *)getshowvalidView{
    UIView *showvalidView = [[UIView alloc]init];
    showvalidView.backgroundColor = [UIColor yellowColor];
    showvalidView.alpha = 0.5;
    return showvalidView;
}
-(UISlider *)getvalidSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
