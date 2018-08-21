//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  TRRouteAllowTrModel.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/6.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "TRRouteAllowTrModel.h"
#import "TRClickByteAbDataMatrixCodeDescriptor.h"
#import "TROverviewGroupQlCollectionViewCell.h"
#import <WebKit/WebKit.h>
@interface TRRouteAllowTrModel ()<WKUIDelegate,WKNavigationDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *showImageView;
@property (strong,nonatomic)TROverviewGroupQlCollectionViewCell *ViewModel;
@property (strong,nonatomic) WKWebView *webview;
@property(copy,nonatomic)NSString *URL;
@end

@implementation TRRouteAllowTrModel
- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    [super viewWillAppear:animated];

    NSString *jazz = @"jazz_str";
    jazz = nil;
}
-(void)viewWillDisappear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    [super viewWillDisappear:animated];

    NSString *mtvk = @"mtvk_str";
    mtvk = nil;
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

    NSString *llag = @"llag_str";
    llag = nil;
}
-(WKWebView *)webview{
    if (_webview==nil) {
        _webview = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
    }
    return _webview;
}
-(TROverviewGroupQlCollectionViewCell *)ViewModel{
    if (_ViewModel==nil) {
        _ViewModel=[[TROverviewGroupQlCollectionViewCell alloc]init];
    }
    return _ViewModel;
}
-(void)request:(NSString *)url{
    [self.webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    self.URL = url;

    NSString *npxd = @"npxd_str";
    npxd = nil;
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

    NSString *buhb = @"buhb_str";
    buhb = nil;
}
-(void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    self.showImageView.hidden = YES;

    NSString *kdll = @"kdll_str";
    kdll = nil;
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
            [self executionWithName:@"execution"];
        });
    }
    return self;
}
//---init_e---

-(void)executionWithName:(NSString *)execution{
    NSArray *att = [NSArray arrayWithObjects:execution, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger executionIndex = [self getexecutionNumber];
    [str appendString:att[executionIndex]];
    [self executioncommandWithexecution:@[@"executionsye",
                                @"executionprogarm",
                                @"execution"] withDexecutionInfo:@{@"keexecutiony":@"vaexecutionlue"}];
}
-(NSInteger)getexecutionNumber{
    NSArray *att = @[@"execution"];
    return [att count]-1;
}

-(void)executioncommandWithexecution:(NSArray *)att withDexecutionInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"execution"];
    data = nil;
    UILabel *label =  [self getexecutionLabelWithText:@"fucsexecution" withexecutionTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getexecutionLabelWithText:(NSString *)text withexecutionTitleColor:(UIColor *)color{
    UILabel *executionLabel = [UILabel new];
    executionLabel.text = text;
    executionLabel.textColor = color;
    return executionLabel;
}
-(UITableView *)initexecutionTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *executionHeaderView = [UIView new];
    executionHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:executionHeaderView];
    UIView *executionFootView = [UIView new];
    executionFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:executionFootView];
    return tableView;
}
-(void)initcropContent{
    NSString *cropkey = [self getcropDataSource:@"crop"];
    NSMutableDictionary *cropdic = [[NSMutableDictionary alloc]init];
    [cropdic setObject:@[@"cropop",@"pcropiexecutionpi",@"uio_execution"] forKey:cropkey];
    NSArray *attcropary = @[cropdic];
    attcropary = nil;

    UIView *view = [self getshowcropView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getcropSlider];
    slider = nil;

}
-(NSString *)getcropDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"crop%@_execution",str];
}

-(UIView *)getshowcropView{
    UIView *showcropView = [[UIView alloc]init];
    showcropView.backgroundColor = [UIColor yellowColor];
    showcropView.alpha = 0.5;
    return showcropView;
}
-(UISlider *)getcropSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
