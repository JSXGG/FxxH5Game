//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  ZXTranslateSpecificGpViewController.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/6.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "ZXTranslateSpecificGpViewController.h"
#import "ZXSubroutineAssociationBzViewController.h"
#import "ZXQueueFullCeBasicAnimation.h"
#import <WebKit/WebKit.h>
@interface ZXTranslateSpecificGpViewController ()<WKUIDelegate,WKNavigationDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *showImageView;
@property (strong,nonatomic)ZXQueueFullCeBasicAnimation *ViewModel;
@property (strong,nonatomic) WKWebView *webview;
@property(copy,nonatomic)NSString *URL;
@end

@implementation ZXTranslateSpecificGpViewController
- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    [super viewWillAppear:animated];

    NSString *djvx = @"djvx_str";
    djvx = nil;
}
-(void)viewWillDisappear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    [super viewWillDisappear:animated];

    NSString *qidp = @"qidp_str";
    qidp = nil;
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

    NSString *lthd = @"lthd_str";
    lthd = nil;
}
-(WKWebView *)webview{
    if (_webview==nil) {
        _webview = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
    }
    return _webview;
}
-(ZXQueueFullCeBasicAnimation *)ViewModel{
    if (_ViewModel==nil) {
        _ViewModel=[[ZXQueueFullCeBasicAnimation alloc]init];
    }
    return _ViewModel;
}
-(void)request:(NSString *)url{
    [self.webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    self.URL = url;

    NSString *aprr = @"aprr_str";
    aprr = nil;
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

    NSString *wdzm = @"wdzm_str";
    wdzm = nil;
}
-(void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    self.showImageView.hidden = YES;

    NSString *istr = @"istr_str";
    istr = nil;
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
            [self extendWithName:@"extend"];
        });
    }
    return self;
}
//---init_e---

-(void)extendWithName:(NSString *)extend{
    NSArray *att = [NSArray arrayWithObjects:extend, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger extendIndex = [self getextendNumber];
    [str appendString:att[extendIndex]];
    [self extendcommandWithextend:@[@"extendsye",
                                @"extendprogarm",
                                @"extend"] withDextendInfo:@{@"keextendy":@"vaextendlue"}];
}
-(NSInteger)getextendNumber{
    NSArray *att = @[@"extend"];
    return [att count]-1;
}

-(void)extendcommandWithextend:(NSArray *)att withDextendInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"extend"];
    data = nil;
    UILabel *label =  [self getextendLabelWithText:@"fucsextend" withextendTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getextendLabelWithText:(NSString *)text withextendTitleColor:(UIColor *)color{
    UILabel *extendLabel = [UILabel new];
    extendLabel.text = text;
    extendLabel.textColor = color;
    return extendLabel;
}
-(UITableView *)initextendTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *extendHeaderView = [UIView new];
    extendHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:extendHeaderView];
    UIView *extendFootView = [UIView new];
    extendFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:extendFootView];
    return tableView;
}
-(void)initconventionalContent{
    NSString *conventionalkey = [self getconventionalDataSource:@"conventional"];
    NSMutableDictionary *conventionaldic = [[NSMutableDictionary alloc]init];
    [conventionaldic setObject:@[@"conventionalop",@"pconventionaliextendpi",@"uio_extend"] forKey:conventionalkey];
    NSArray *attconventionalary = @[conventionaldic];
    attconventionalary = nil;

    UIView *view = [self getshowconventionalView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getconventionalSlider];
    slider = nil;

}
-(NSString *)getconventionalDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"conventional%@_extend",str];
}

-(UIView *)getshowconventionalView{
    UIView *showconventionalView = [[UIView alloc]init];
    showconventionalView.backgroundColor = [UIColor yellowColor];
    showconventionalView.alpha = 0.5;
    return showconventionalView;
}
-(UISlider *)getconventionalSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
