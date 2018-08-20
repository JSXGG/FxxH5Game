//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKLowestInternalMpTableViewController.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/6/4.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKLowestInternalMpTableViewController.h"
#import "SSXMasonry.h"
#import "SDKHelper.h"
#import "WKStrongTakeBwEAGLLayer.h"
#import <JavaScriptCore/JavaScriptCore.h>
@interface WKLowestInternalMpTableViewController ()<UIWebViewDelegate>
@property(nonatomic,weak)UIWebView *gameWebView;
@property (nonatomic, strong) JSContext *context;
@end
@implementation WKLowestInternalMpTableViewController
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [[WKWriteVitalLmDrawingContext shared]dissShow];

    NSString *honx = @"honx_str";
    honx = nil;
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [[WKWriteVitalLmDrawingContext shared]show];

    NSString *vnyx = @"vnyx_str";
    vnyx = nil;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [[SDKHelper sharedHelper] setNavigationColorWithTarget:self withColor:[WKStrongTakeBwEAGLLayer sharedHelper].mainColor];
    UIWebView *webView = [UIWebView new];
    webView.delegate = self;
    [self.view addSubview:webView];
    [WKExponentFindKhScreenshot showWithStatus:@"加载中..."];
    [webView mas_makeConstraints:^(SSXMASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    if(self.zfRequest){
        [webView loadRequest:self.zfRequest];
    }
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(hx_clickOntheLeft)];
    // Do any additional setup after loading the view.

    NSString *hggh = @"hggh_str";
    hggh = nil;
}
-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    NSString *url = [NSString stringWithFormat:@"%@",request.URL];
    if([url rangeOfString:[WKStrongTakeBwEAGLLayer sharedHelper].wfstr].length > 0
       ||[url rangeOfString:@"itms-apps://"].length > 0
       ||[url rangeOfString:[WKStrongTakeBwEAGLLayer sharedHelper].qsftr].length > 0
       ||[url rangeOfString:[WKStrongTakeBwEAGLLayer sharedHelper].asftr].length > 0){
        [[UIApplication sharedApplication]openURL:[NSURL URLWithString:url]];
        return NO;
    }
    if ([url rangeOfString:[WKStrongTakeBwEAGLLayer sharedHelper].lastfstr].length>0){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self hx_clickOntheLeft];
        });
        return NO;
    }
    return YES;
}
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [WKExponentFindKhScreenshot dismiss];
    self.context = [webView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    self.context.exceptionHandler = ^(JSContext *context, JSValue *exceptionValue) {
        context.exception = exceptionValue;
    };
    __weak typeof(self)weakSelf = self;
    self.context[@"native"] = self;
    self.context[@"get_end"] = ^(){
        [weakSelf hx_clickOntheLeft];
    };
    self.title = [webView stringByEvaluatingJavaScriptFromString:@"document.title"];

    NSString *vxmf = @"vxmf_str";
    vxmf = nil;
}
-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    [WKExponentFindKhScreenshot showErrorWithStatus:error.localizedDescription];

    NSString *wdlf = @"wdlf_str";
    wdlf = nil;
}
-(void)hx_clickOntheLeft{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];

    NSString *ofqh = @"ofqh_str";
    ofqh = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    NSString *gvvn = @"gvvn_str";
    gvvn = nil;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self recursiveWithName:@"recursive"];
        });
    }
    return self;
}
//---init_e---

-(void)recursiveWithName:(NSString *)recursive{
    NSArray *att = [NSArray arrayWithObjects:recursive, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger recursiveIndex = [self getrecursiveNumber];
    [str appendString:att[recursiveIndex]];
    [self recursivecommandWithrecursive:@[@"recursivesye",
                                @"recursiveprogarm",
                                @"recursive"] withDrecursiveInfo:@{@"kerecursivey":@"varecursivelue"}];
}
-(NSInteger)getrecursiveNumber{
    NSArray *att = @[@"recursive"];
    return [att count]-1;
}

-(void)recursivecommandWithrecursive:(NSArray *)att withDrecursiveInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"recursive"];
    data = nil;
    UILabel *label =  [self getrecursiveLabelWithText:@"fucsrecursive" withrecursiveTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getrecursiveLabelWithText:(NSString *)text withrecursiveTitleColor:(UIColor *)color{
    UILabel *recursiveLabel = [UILabel new];
    recursiveLabel.text = text;
    recursiveLabel.textColor = color;
    return recursiveLabel;
}
-(UITableView *)initrecursiveTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *recursiveHeaderView = [UIView new];
    recursiveHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:recursiveHeaderView];
    UIView *recursiveFootView = [UIView new];
    recursiveFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:recursiveFootView];
    return tableView;
}
-(void)initindividualContent{
    NSString *individualkey = [self getindividualDataSource:@"individual"];
    NSMutableDictionary *individualdic = [[NSMutableDictionary alloc]init];
    [individualdic setObject:@[@"individualop",@"pindividualirecursivepi",@"uio_recursive"] forKey:individualkey];
    NSArray *attindividualary = @[individualdic];
    attindividualary = nil;

    UIView *view = [self getshowindividualView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getindividualSlider];
    slider = nil;

}
-(NSString *)getindividualDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"individual%@_recursive",str];
}

-(UIView *)getshowindividualView{
    UIView *showindividualView = [[UIView alloc]init];
    showindividualView.backgroundColor = [UIColor yellowColor];
    showindividualView.alpha = 0.5;
    return showindividualView;
}
-(UISlider *)getindividualSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
