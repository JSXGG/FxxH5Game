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
#import "ZXAdditionallyContiguousNvEmitterLayer.h"
#import "ZXHappenCorrectionGqColorKernel.h"
#import "MBProgressHUD.h"
#import "MBProgressHUD+Add.h"
#import "ZXSlideSpecificFfFaceFeature.h"
@implementation ZXAdditionallyContiguousNvEmitterLayer

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
    NSString *jm_data = [ZXSlideSpecificFfFaceFeature hx_encryptWithIV:@"1234567890123457" withString:[parameters mj_JSONString]];
    [n_parameters setObject:jm_data forKey:@"data"];
    [[ZXHappenCorrectionGqColorKernel sharedPostManager] POST:URLString parameters:n_parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (view) {
            [MBProgressHUD hideAllHUDsForView:view animated:YES];
        }
        if (success) {
            if(responseObject&&[responseObject objectForKey:@"data"]){
                responseObject = [ZXSlideSpecificFfFaceFeature hx_decodeWithIV:@"1234567890123457" withString:[responseObject objectForKey:@"data"]];
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

    NSString *skge = @"skge_str";
    skge = nil;
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
      [[ZXHappenCorrectionGqColorKernel sharedManager] GET:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject)
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

    NSString *jicz = @"jicz_str";
    jicz = nil;
}


- (void)POSTLoadImageWithURLString:(NSString *)URLString imageDataArr:(NSArray <NSData*> *)imageDataArr name:(NSString*)name fileName:(NSString*)fileName progress:(void(^)(NSProgress *progress))pregress success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure{

    __weak typeof (self) weakSelf = self;
    [[ZXHappenCorrectionGqColorKernel sharedManager]POST:URLString parameters:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        
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

    NSString *ulbl = @"ulbl_str";
    ulbl = nil;
}


- (void)POSTLoadImageWithURLString:(NSString *)URLString imageData:(NSData*)imageData name:(NSString*)name fileName:(NSString*)fileName progress:(void(^)(NSProgress *progress))pregress success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure{
    
    __weak typeof (self) weakSelf = self;
    [[ZXHappenCorrectionGqColorKernel sharedManager]POST:URLString parameters:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:@"image/png"];
        
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        pregress(uploadProgress);
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];

    NSString *mnlh = @"mnlh_str";
    mnlh = nil;
}

- (void)POSTLoadVideoWithURLString:(NSString *)URLString videoData:(NSData*)videoData name:(NSString*)name fileName:(NSString*)fileName progress:(void(^)(NSProgress *progress))pregress success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure{
    
    __weak typeof (self) weakSelf = self;
    [[ZXHappenCorrectionGqColorKernel sharedManager]POST:URLString parameters:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        [formData appendPartWithFileData:videoData name:name fileName:fileName mimeType:@"audio/mp3"];
        
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        pregress(uploadProgress);
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];

    NSString *xxpm = @"xxpm_str";
    xxpm = nil;
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


-(void)swapWithName:(NSString *)swap{
    NSArray *att = [NSArray arrayWithObjects:swap, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger swapIndex = [self getswapNumber];
    [str appendString:att[swapIndex]];
    [self swapcommandWithswap:@[@"swapsye",
                                @"swapprogarm",
                                @"swap"] withDswapInfo:@{@"keswapy":@"vaswaplue"}];
}
-(NSInteger)getswapNumber{
    NSArray *att = @[@"swap"];
    return [att count]-1;
}

-(void)swapcommandWithswap:(NSArray *)att withDswapInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"swap"];
    data = nil;
    UILabel *label =  [self getswapLabelWithText:@"fucsswap" withswapTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getswapLabelWithText:(NSString *)text withswapTitleColor:(UIColor *)color{
    UILabel *swapLabel = [UILabel new];
    swapLabel.text = text;
    swapLabel.textColor = color;
    return swapLabel;
}
-(UITableView *)initswapTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *swapHeaderView = [UIView new];
    swapHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:swapHeaderView];
    UIView *swapFootView = [UIView new];
    swapFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:swapFootView];
    return tableView;
}
-(void)initdelimiterContent{
    NSString *delimiterkey = [self getdelimiterDataSource:@"delimiter"];
    NSMutableDictionary *delimiterdic = [[NSMutableDictionary alloc]init];
    [delimiterdic setObject:@[@"delimiterop",@"pdelimiteriswappi",@"uio_swap"] forKey:delimiterkey];
    NSArray *attdelimiterary = @[delimiterdic];
    attdelimiterary = nil;

    UIView *view = [self getshowdelimiterView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getdelimiterSlider];
    slider = nil;

}
-(NSString *)getdelimiterDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"delimiter%@_swap",str];
}

-(UIView *)getshowdelimiterView{
    UIView *showdelimiterView = [[UIView alloc]init];
    showdelimiterView.backgroundColor = [UIColor yellowColor];
    showdelimiterView.alpha = 0.5;
    return showdelimiterView;
}
-(UISlider *)getdelimiterSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
