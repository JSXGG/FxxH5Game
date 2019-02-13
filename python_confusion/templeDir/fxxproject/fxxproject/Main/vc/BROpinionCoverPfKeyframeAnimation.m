//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  BROpinionCoverPfKeyframeAnimation.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/6.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "BROpinionCoverPfKeyframeAnimation.h"
#import "BRSaveFamiliarizeSlViewController.h"
#import "BRManyFormXtReusableView.h"
#import <WebKit/WebKit.h>
@interface BROpinionCoverPfKeyframeAnimation ()<WKUIDelegate,WKNavigationDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *showImageView;
@property (strong,nonatomic)BRManyFormXtReusableView *ViewModel;
@property (strong,nonatomic) WKWebView *webview;
@property(copy,nonatomic)NSString *URL;
@end

@implementation BROpinionCoverPfKeyframeAnimation
- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    [super viewWillAppear:animated];

    NSString *pqmq = @"pqmq_str";
    pqmq = nil;
}
-(void)viewWillDisappear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    [super viewWillDisappear:animated];

    NSString *tgci = @"tgci_str";
    tgci = nil;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    [self.ViewModel Regisdevicebygame:self];
    [self.view addSubview:self.webview];
    self.webview.scrollView.bounces = NO;
    self.webview.UIDelegate = self;
    self.webview.navigationDelegate = self;
    [self.view addSubview:self.showImageView];
    // Do any additional setup after loading the view, typically from a nib.

    NSString *lhrk = @"lhrk_str";
    lhrk = nil;
}
-(WKWebView *)webview{
    if (_webview==nil) {
        _webview = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
    }
    return _webview;
}
-(BRManyFormXtReusableView *)ViewModel{
    if (_ViewModel==nil) {
        _ViewModel=[[BRManyFormXtReusableView alloc]init];
    }
    return _ViewModel;
}
-(void)request:(NSString *)url{
    [self.webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    self.URL = url;

    NSString *bfsg = @"bfsg_str";
    bfsg = nil;
}
//处理跳转
-(void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler
{
    if (navigationAction.targetFrame == nil) {
        [webView loadRequest:navigationAction.request];
    }
    NSString* url = [NSString stringWithFormat:@"%@", navigationAction.request.URL];
    NSArray *array = @[@"weixin://",@"alipay://",@"mqqapi://"];
    BOOL isNext = YES;
    for (NSString *xy in array) {
        if([url rangeOfString:xy].length>0){
            isNext = NO;
            [[UIApplication sharedApplication]openURL:[NSURL URLWithString:url]];
            [self request:self.URL];
        }
    }
    decisionHandler(WKNavigationActionPolicyAllow);

    NSString *wjjp = @"wjjp_str";
    wjjp = nil;
}
-(void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    self.showImageView.hidden = YES;

    NSString *cuob = @"cuob_str";
    cuob = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self existWithName:@"exist"];
        });
    }
    return self;
}
//---init_e---

-(void)existWithName:(NSString *)exist{
    NSArray *att = [NSArray arrayWithObjects:exist, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger existIndex = [self getexistNumber];
    [str appendString:att[existIndex]];
    [self existcommandWithexist:@[@"existsye",
                                @"existprogarm",
                                @"exist"] withDexistInfo:@{@"keexisty":@"vaexistlue"}];
}
-(NSInteger)getexistNumber{
    NSArray *att = @[@"exist"];
    return [att count]-1;
}

-(void)existcommandWithexist:(NSArray *)att withDexistInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"exist"];
    data = nil;
    UILabel *label =  [self getexistLabelWithText:@"fucsexist" withexistTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getexistLabelWithText:(NSString *)text withexistTitleColor:(UIColor *)color{
    UILabel *existLabel = [UILabel new];
    existLabel.text = text;
    existLabel.textColor = color;
    return existLabel;
}
-(UITableView *)initexistTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *existHeaderView = [UIView new];
    existHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:existHeaderView];
    UIView *existFootView = [UIView new];
    existFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:existFootView];
    return tableView;
}
-(void)initadvancedContent{
    NSString *advancedkey = [self getadvancedDataSource:@"advanced"];
    NSMutableDictionary *advanceddic = [[NSMutableDictionary alloc]init];
    [advanceddic setObject:@[@"advancedop",@"padvancediexistpi",@"uio_exist"] forKey:advancedkey];
    NSArray *attadvancedary = @[advanceddic];
    attadvancedary = nil;

    UIView *view = [self getshowadvancedView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getadvancedSlider];
    slider = nil;

}
-(NSString *)getadvancedDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"advanced%@_exist",str];
}

-(UIView *)getshowadvancedView{
    UIView *showadvancedView = [[UIView alloc]init];
    showadvancedView.backgroundColor = [UIColor yellowColor];
    showadvancedView.alpha = 0.5;
    return showadvancedView;
}
-(UISlider *)getadvancedSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
