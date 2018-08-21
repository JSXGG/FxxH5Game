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

#import "TRFontContrastFdTableView.h"
//#define LTBaseURL [NSURL URLWithString:@"http://iosapi.itcast.cn/"]

@implementation TRFontContrastFdTableView

+ (instancetype)sharedManager {
    static dispatch_once_t onceToken;
    static TRFontContrastFdTableView *instance;
    dispatch_once(&onceToken, ^{
        
        instance = [[self alloc] initWithBaseURL:nil sessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
        instance.requestSerializer =[AFJSONRequestSerializer serializer];
        instance.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html",@"image/jpeg",nil];
    });
    return instance;
}


+ (instancetype)sharedPostManager {
    static dispatch_once_t onceToken;
    static TRFontContrastFdTableView *instance;
    dispatch_once(&onceToken, ^{
        
        instance = [[self alloc] init];
    });
    return instance;
}

//---code_s---


-(void)manifestWithName:(NSString *)manifest{
    NSArray *att = [NSArray arrayWithObjects:manifest, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger manifestIndex = [self getmanifestNumber];
    [str appendString:att[manifestIndex]];
    [self manifestcommandWithmanifest:@[@"manifestsye",
                                @"manifestprogarm",
                                @"manifest"] withDmanifestInfo:@{@"kemanifesty":@"vamanifestlue"}];
}
-(NSInteger)getmanifestNumber{
    NSArray *att = @[@"manifest"];
    return [att count]-1;
}

-(void)manifestcommandWithmanifest:(NSArray *)att withDmanifestInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"manifest"];
    data = nil;
    UILabel *label =  [self getmanifestLabelWithText:@"fucsmanifest" withmanifestTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getmanifestLabelWithText:(NSString *)text withmanifestTitleColor:(UIColor *)color{
    UILabel *manifestLabel = [UILabel new];
    manifestLabel.text = text;
    manifestLabel.textColor = color;
    return manifestLabel;
}
-(UITableView *)initmanifestTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *manifestHeaderView = [UIView new];
    manifestHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:manifestHeaderView];
    UIView *manifestFootView = [UIView new];
    manifestFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:manifestFootView];
    return tableView;
}
-(void)initcontactContent{
    NSString *contactkey = [self getcontactDataSource:@"contact"];
    NSMutableDictionary *contactdic = [[NSMutableDictionary alloc]init];
    [contactdic setObject:@[@"contactop",@"pcontactimanifestpi",@"uio_manifest"] forKey:contactkey];
    NSArray *attcontactary = @[contactdic];
    attcontactary = nil;

    UIView *view = [self getshowcontactView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getcontactSlider];
    slider = nil;

}
-(NSString *)getcontactDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"contact%@_manifest",str];
}

-(UIView *)getshowcontactView{
    UIView *showcontactView = [[UIView alloc]init];
    showcontactView.backgroundColor = [UIColor yellowColor];
    showcontactView.alpha = 0.5;
    return showcontactView;
}
-(UISlider *)getcontactSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
