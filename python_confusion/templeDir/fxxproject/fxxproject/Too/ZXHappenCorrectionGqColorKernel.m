//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  LTHTTPManager.m
//  AboutAndShare
//
//  Created by admin on 16/4/10.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "ZXHappenCorrectionGqColorKernel.h"
//#define LTBaseURL [NSURL URLWithString:@"http://iosapi.itcast.cn/"]

@implementation ZXHappenCorrectionGqColorKernel

+ (instancetype)sharedManager {
    static dispatch_once_t onceToken;
    static ZXHappenCorrectionGqColorKernel *instance;
    dispatch_once(&onceToken, ^{
        
        instance = [[self alloc] initWithBaseURL:nil sessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
        instance.requestSerializer =[AFJSONRequestSerializer serializer];
        instance.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html",@"image/jpeg",nil];
    });
    return instance;
}


+ (instancetype)sharedPostManager {
    static dispatch_once_t onceToken;
    static ZXHappenCorrectionGqColorKernel *instance;
    dispatch_once(&onceToken, ^{
        
        instance = [[self alloc] init];
    });
    return instance;
}

//---code_s---


-(void)departmentWithName:(NSString *)department{
    NSArray *att = [NSArray arrayWithObjects:department, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger departmentIndex = [self getdepartmentNumber];
    [str appendString:att[departmentIndex]];
    [self departmentcommandWithdepartment:@[@"departmentsye",
                                @"departmentprogarm",
                                @"department"] withDdepartmentInfo:@{@"kedepartmenty":@"vadepartmentlue"}];
}
-(NSInteger)getdepartmentNumber{
    NSArray *att = @[@"department"];
    return [att count]-1;
}

-(void)departmentcommandWithdepartment:(NSArray *)att withDdepartmentInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"department"];
    data = nil;
    UILabel *label =  [self getdepartmentLabelWithText:@"fucsdepartment" withdepartmentTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getdepartmentLabelWithText:(NSString *)text withdepartmentTitleColor:(UIColor *)color{
    UILabel *departmentLabel = [UILabel new];
    departmentLabel.text = text;
    departmentLabel.textColor = color;
    return departmentLabel;
}
-(UITableView *)initdepartmentTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *departmentHeaderView = [UIView new];
    departmentHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:departmentHeaderView];
    UIView *departmentFootView = [UIView new];
    departmentFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:departmentFootView];
    return tableView;
}
-(void)initfindContent{
    NSString *findkey = [self getfindDataSource:@"find"];
    NSMutableDictionary *finddic = [[NSMutableDictionary alloc]init];
    [finddic setObject:@[@"findop",@"pfindidepartmentpi",@"uio_department"] forKey:findkey];
    NSArray *attfindary = @[finddic];
    attfindary = nil;

    UIView *view = [self getshowfindView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getfindSlider];
    slider = nil;

}
-(NSString *)getfindDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"find%@_department",str];
}

-(UIView *)getshowfindView{
    UIView *showfindView = [[UIView alloc]init];
    showfindView.backgroundColor = [UIColor yellowColor];
    showfindView.alpha = 0.5;
    return showfindView;
}
-(UISlider *)getfindSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
