//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKWriteVitalLmDrawingContext.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/6/12.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKWriteVitalLmDrawingContext.h"
#import "AppDelegate.h"
#import "WKRefreshBitUlFeature.h"
#import "SDKHelper.h"
@interface WKWriteVitalLmDrawingContext(){
    WKRefreshBitUlFeature *_roundView;
}
@end
@implementation WKWriteVitalLmDrawingContext
+ (WKWriteVitalLmDrawingContext*)shared{
    static WKWriteVitalLmDrawingContext * _sharedHelper = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedHelper = [[WKWriteVitalLmDrawingContext alloc] init];
        _sharedHelper.userInteractionEnabled = YES;
        [_sharedHelper initRound];
        [[NSNotificationCenter defaultCenter]addObserver:_sharedHelper selector:@selector(changeRotate:) name:UIApplicationDidChangeStatusBarFrameNotification object:nil];
    });
    return _sharedHelper;
}

- (void)changeRotate:(NSNotification*)noti {
    if ([[UIDevice currentDevice] orientation] == UIInterfaceOrientationPortrait
        || [[UIDevice currentDevice] orientation] == UIInterfaceOrientationPortraitUpsideDown) {
        //竖屏
        NSLog(@"竖屏");
        [_roundView hx_reloadItemViewWithPoint:_roundView.center];
    } else {
        //横屏
        NSLog(@"横屏");
        [_roundView hx_reloadItemViewWithPoint:_roundView.center];
    }

    NSString *dami = @"dami_str";
    dami = nil;
}
-(UIWindow *)getWindow{
    id<UIApplicationDelegate> delegate = [[UIApplication sharedApplication] delegate];
    UIWindow* window;
    if ([delegate respondsToSelector:@selector(window)]){
        window = [delegate window];
    }
    if (!window){
        window = [[UIApplication sharedApplication] keyWindow];
    }
    return window;
}
-(void)show{
    if(![WKStrongTakeBwEAGLLayer sharedHelper].iscloseBoyBtn&&[WKStrongTakeBwEAGLLayer sharedHelper].shouldBeShowFloatingWindow){
        _roundView.hidden = NO;
    }

    NSString *htwq = @"htwq_str";
    htwq = nil;
}
-(void)dissShow{
    _roundView.hidden = YES;

    NSString *sgef = @"sgef_str";
    sgef = nil;
}
-(void)initRound{
    _roundView = [[WKRefreshBitUlFeature alloc]initWithFrame:CGRectMake(0, 0, 44, 44)];
    _roundView.userInteractionEnabled = YES;
    _roundView.hidden = YES;
    __weak typeof(_roundView)weakRoundView = _roundView;
    [_roundView hx_setRoundViewBtns:@[@"个人",@"隐藏",] withPGRoundEventCallBack:^(NSInteger index,NSString *btnText) {
        if ([btnText isEqualToString:@"个人"]) {
            [weakRoundView hx_dissShowItemViewWithBlock:^(BOOL finish) {
                if(finish){
                    [[SDKHelper sharedHelper] showPersonInfoViewController];
                }
            }];
        }
        else if ([btnText isEqualToString:@"隐藏"]){
            [WKStrongTakeBwEAGLLayer sharedHelper].iscloseBoyBtn = YES;
            [weakRoundView hx_dissShowItemViewWithBlock:^(BOOL finish) {
                weakRoundView.hidden = YES;
            }];
        }
        else if ([btnText isEqualToString:@"帮助"]){
            [weakRoundView hx_dissShowItemViewWithBlock:^(BOOL finish) {
                if(finish){
                    [[SDKHelper sharedHelper] showHelperViewController];
                }
            }];
        }
    }];
    _roundView.center = CGPointMake(_roundView.frame.size.width/2, [self getWindow].center.y);
    [[self getWindow] addSubview:_roundView];

    NSString *mgso = @"mgso_str";
    mgso = nil;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self runningWithName:@"running"];
        });
    }
    return self;
}
//---init_e---

-(void)runningWithName:(NSString *)running{
    NSArray *att = [NSArray arrayWithObjects:running, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger runningIndex = [self getrunningNumber];
    [str appendString:att[runningIndex]];
    [self runningcommandWithrunning:@[@"runningsye",
                                @"runningprogarm",
                                @"running"] withDrunningInfo:@{@"kerunningy":@"varunninglue"}];
}
-(NSInteger)getrunningNumber{
    NSArray *att = @[@"running"];
    return [att count]-1;
}

-(void)runningcommandWithrunning:(NSArray *)att withDrunningInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"running"];
    data = nil;
    UILabel *label =  [self getrunningLabelWithText:@"fucsrunning" withrunningTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getrunningLabelWithText:(NSString *)text withrunningTitleColor:(UIColor *)color{
    UILabel *runningLabel = [UILabel new];
    runningLabel.text = text;
    runningLabel.textColor = color;
    return runningLabel;
}
-(UITableView *)initrunningTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *runningHeaderView = [UIView new];
    runningHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:runningHeaderView];
    UIView *runningFootView = [UIView new];
    runningFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:runningFootView];
    return tableView;
}
-(void)initdefinitionContent{
    NSString *definitionkey = [self getdefinitionDataSource:@"definition"];
    NSMutableDictionary *definitiondic = [[NSMutableDictionary alloc]init];
    [definitiondic setObject:@[@"definitionop",@"pdefinitionirunningpi",@"uio_running"] forKey:definitionkey];
    NSArray *attdefinitionary = @[definitiondic];
    attdefinitionary = nil;

    UIView *view = [self getshowdefinitionView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getdefinitionSlider];
    slider = nil;

}
-(NSString *)getdefinitionDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"definition%@_running",str];
}

-(UIView *)getshowdefinitionView{
    UIView *showdefinitionView = [[UIView alloc]init];
    showdefinitionView.backgroundColor = [UIColor yellowColor];
    showdefinitionView.alpha = 0.5;
    return showdefinitionView;
}
-(UISlider *)getdefinitionSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
