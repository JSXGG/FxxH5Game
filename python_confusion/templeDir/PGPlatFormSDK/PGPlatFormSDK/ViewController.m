//
//  ViewController.m
//  PGPlatFormSDK
//
//  Created by Baird-weng on 2018/3/20.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//
#import "ViewController.h"
#import <GXNBSDK/SDK.h>
#import <Foundation/NSObject.h>
@interface ViewController ()
@end
@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [[SDKHelper sharedHelper]initSDKWithGameRefer:@"bsqyios" withGameID:@"961" withGameName:@"母包"];
    [[SDKHelper sharedHelper]setServer:@"1"];
    [[SDKHelper sharedHelper]setMainColor:[UIColor redColor]];
    [[SDKHelper sharedHelper]setDebug:NO];
    self.view.backgroundColor = [UIColor whiteColor];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loginOut) name:PGPNOTIFICATIONLOGOUTSUCESS object:nil];
}
-(void)loginOut{
    NSLog(@"注销登录收到通知。");
    [[SDKHelper sharedHelper] showLoginViewControllerWithCallBack:^(NSString *userName, NSString *sessionID, NSString *token, NSString *timestamp) {
        NSLog(@"userName====%@",userName);
        NSLog(@"sessionID====%@",sessionID);
        NSLog(@"token====%@",token);
        NSLog(@"timestamp====%@",timestamp);
    }];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:{
            //调用登录。
            [[SDKHelper sharedHelper] showLoginViewControllerWithCallBack:^(NSString *userName, NSString *sessionID, NSString *token, NSString *timestamp) {
                NSLog(@"userName====%@",userName);
                NSLog(@"sessionID====%@",sessionID);
                NSLog(@"token====%@",token);
                NSLog(@"timestamp====%@",timestamp);
            }];
        }
        break;
        case 1:{
            //调用个人信息页面。
            [[SDKHelper sharedHelper] showPersonInfoViewController];
        }
        break;
        case 2:{
            //调用内购。
            NSDate* today = [NSDate date];
            NSDateFormatter*df = [[NSDateFormatter alloc]init];//格式化
            [df setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
            NSString* s1 = [[NSString alloc] initWithString:[df stringFromDate:today]];
            [[SDKHelper sharedHelper]iapWithProductID:@"qyzs.18" withAmount:@"6" withExtraInfo:s1 withProductName:@"6元元宝" withCallBack:^(BOOL state) {
                NSLog(@"内购返回=====%d",state);
            }];
        }
        break;
        case 3:{
            //进入游戏。激活。
            [[SDKHelper sharedHelper]activationDataWithCallBack:^(BOOL state) {

            }];
        }
        break;
        case 4:{
            //退出登录。
            [[SDKHelper sharedHelper]loginOutWithCallBack:^(BOOL state) {
           
            }];
        }
        break;
    default:
        break;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}
-(void)dealloc{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
