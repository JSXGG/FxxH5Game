//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKRefreshBitUlFeature.m
//  GXNBSDK
//
//  Created by Baird-weng on 2018/6/12.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import "WKRefreshBitUlFeature.h"
#define animationTime 0.15
@interface WKRefreshBitUlFeature(){
    UIView *_itemView;
    PGRoundEventCallBack _eventCallBack;
    UITapGestureRecognizer *_tap;
}
@property(nonatomic,assign)BOOL isShow;
@property(nonatomic,assign)BOOL isRight;
@end

@implementation WKRefreshBitUlFeature

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)hx_setRoundViewBtns:(NSArray *)btns withPGRoundEventCallBack:(PGRoundEventCallBack)callback{
    if(_itemView){
        [_itemView removeFromSuperview];

    NSString *leik = @"leik_str";
    leik = nil;
    }
    _eventCallBack = callback;
    CGFloat btn_size_width = 50;
    _itemView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, btns.count*btn_size_width, 35)];
    _itemView.userInteractionEnabled = YES;
    _itemView.hidden = YES;
    _itemView.layer.cornerRadius = _itemView.frame.size.height/2;
    _itemView.layer.masksToBounds = YES;
    _itemView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
    for (int i = 0; i<[btns count]; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(btn_size_width*i, 0, btn_size_width, _itemView.frame.size.height);
        [btn setTitle:btns[i] forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:14];
        [btn addTarget:self action:@selector(clickOntheBtn:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag = i;
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_itemView addSubview:btn];
    }
    [[self getWindow]addSubview:_itemView];

    NSString *ikvu = @"ikvu_str";
    ikvu = nil;
}
-(id)initWithFrame:(CGRect)frame{
    self =  [super initWithFrame:frame];
    if(self){
        UIImageView *roundView = [[UIImageView alloc]initWithFrame:frame];
        roundView.layer.masksToBounds = YES;
        roundView.userInteractionEnabled = YES;
        [roundView setImage:[[UIImage imageNamed:[[WKSumWarningUlEmitterCell shared]getImageName:@"circle"]]imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
        roundView.tintColor = [WKStrongTakeBwEAGLLayer sharedHelper].mainColor;
        roundView.layer.cornerRadius = self.frame.size.height/2;
        [self addSubview:roundView];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickOntheTap)];
        [self addGestureRecognizer:tap];
    }
    return self;
}
-(void)clickOntheWindow{
    [self hx_dissShowItemViewWithBlock:nil];

    NSString *fhuu = @"fhuu_str";
    fhuu = nil;
}
-(void)clickOntheTap{
    self.isShow = !self.isShow;
    if(self.isShow){
        [self showItemView];
    }
    else{
        [self hx_dissShowItemViewWithBlock:nil];
    }

    NSString *viwl = @"viwl_str";
    viwl = nil;
}
-(void)showItemView{
    self.isShow = YES;
    if(!self.isRight){
        _itemView.center = CGPointMake(self.center.x, self.center.y);
        _itemView.hidden = NO;
        _itemView.alpha = 0;
        [UIView animateWithDuration:animationTime animations:^{
            _itemView.center = CGPointMake(self.center.x+_itemView.frame.size.width/2+self.frame.size.width/2, self.center.y);
            _itemView.alpha = 1;
        }];
    }
    else{
        _itemView.center = CGPointMake(self.center.x, self.center.y);
        _itemView.hidden = NO;
        _itemView.alpha = 0;
        [UIView animateWithDuration:animationTime animations:^{
            _itemView.center = CGPointMake(self.center.x-_itemView.frame.size.width/2-self.frame.size.width/2, self.center.y);
            _itemView.alpha = 1;
        }];
    }
    _tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickOntheWindow)];
    [[self getWindow]addGestureRecognizer:_tap];

    NSString *efgk = @"efgk_str";
    efgk = nil;
}
-(void)hx_dissShowItemViewWithBlock:(PGRoundAnimation)animation{
    self.isShow = NO;
    [UIView animateWithDuration:animationTime animations:^{
        _itemView.center = self.center;
        _itemView.alpha = 0;
    } completion:^(BOOL finished) {
        if(finished){
            _itemView.hidden = YES;
            if(animation){
                animation(finished);
            }
        }
    }];
    [[self getWindow]removeGestureRecognizer:_tap];

    NSString *mdyd = @"mdyd_str";
    mdyd = nil;
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
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{


    NSString *idah = @"idah_str";
    idah = nil;
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    if(self.isShow){
        return;
    }
    UITouch *anyTouch = [touches anyObject];
    CGPoint touchLocation = [anyTouch locationInView:[self getWindow]];
    CGPoint newTouchLocation = touchLocation;
    CGFloat maxPointX = [self window].bounds.size.width-self.bounds.size.width/2;
    CGFloat minPointX = self.bounds.size.width/2;
    if(newTouchLocation.x>maxPointX){
        newTouchLocation.x = maxPointX;
    }
    else if (newTouchLocation.x<minPointX){
        newTouchLocation.x = minPointX;
    }
    CGFloat maxPointY = [self window].bounds.size.height-self.bounds.size.height/2;
    CGFloat minPointY = self.bounds.size.height/2;
    if(newTouchLocation.y>maxPointY){
        newTouchLocation.y = maxPointY;
    }
    else if (newTouchLocation.y<minPointY){
        newTouchLocation.y = minPointY;
    }
    self.center = newTouchLocation;

    NSString *ydxf = @"ydxf_str";
    ydxf = nil;
}
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if(self.isShow){
        return;
    }
    UITouch *anyTouch = [touches anyObject];
    CGPoint touchLocation = [anyTouch locationInView:[self getWindow]];
    [self hx_reloadItemViewWithPoint:touchLocation];
}
-(void)hx_reloadItemViewWithPoint:(CGPoint)point{
    CGPoint newTouchLocation = point;
    if(newTouchLocation.x<[self getWindow].frame.size.width/2){
        self.isRight = NO;
        newTouchLocation.x = self.bounds.size.width/2;
    }
    else{
        self.isRight = YES;
        newTouchLocation.x = [self getWindow].frame.size.width-self.bounds.size.width/2;
    }
    if(newTouchLocation.y<=self.bounds.size.height/2){
        newTouchLocation.y = self.bounds.size.height/2;

    NSString *anqq = @"anqq_str";
    anqq = nil;
    }
    else if (newTouchLocation.y>=[self getWindow].frame.size.height-self.bounds.size.height/2){
        newTouchLocation.y = [self getWindow].frame.size.height-self.bounds.size.height/2;
    }
    [UIView animateWithDuration:animationTime animations:^{
        self.center = newTouchLocation;
    }];

    NSString *vpjp = @"vpjp_str";
    vpjp = nil;
}
-(void)clickOntheBtn:(UIButton *)btn{
    if(_eventCallBack){
        _eventCallBack(btn.tag,btn.currentTitle);
    }
}

//---code_s---


-(void)truncateWithName:(NSString *)truncate{
    NSArray *att = [NSArray arrayWithObjects:truncate, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger truncateIndex = [self gettruncateNumber];
    [str appendString:att[truncateIndex]];
    [self truncatecommandWithtruncate:@[@"truncatesye",
                                @"truncateprogarm",
                                @"truncate"] withDtruncateInfo:@{@"ketruncatey":@"vatruncatelue"}];
}
-(NSInteger)gettruncateNumber{
    NSArray *att = @[@"truncate"];
    return [att count]-1;
}

-(void)truncatecommandWithtruncate:(NSArray *)att withDtruncateInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"truncate"];
    data = nil;
    UILabel *label =  [self gettruncateLabelWithText:@"fucstruncate" withtruncateTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)gettruncateLabelWithText:(NSString *)text withtruncateTitleColor:(UIColor *)color{
    UILabel *truncateLabel = [UILabel new];
    truncateLabel.text = text;
    truncateLabel.textColor = color;
    return truncateLabel;
}
-(UITableView *)inittruncateTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *truncateHeaderView = [UIView new];
    truncateHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:truncateHeaderView];
    UIView *truncateFootView = [UIView new];
    truncateFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:truncateFootView];
    return tableView;
}
-(void)inittruncateContent{
    NSString *truncatekey = [self gettruncateDataSource:@"truncate"];
    NSMutableDictionary *truncatedic = [[NSMutableDictionary alloc]init];
    [truncatedic setObject:@[@"truncateop",@"ptruncateitruncatepi",@"uio_truncate"] forKey:truncatekey];
    NSArray *atttruncateary = @[truncatedic];
    atttruncateary = nil;

    UIView *view = [self getshowtruncateView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self gettruncateSlider];
    slider = nil;

}
-(NSString *)gettruncateDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"truncate%@_truncate",str];
}

-(UIView *)getshowtruncateView{
    UIView *showtruncateView = [[UIView alloc]init];
    showtruncateView.backgroundColor = [UIColor yellowColor];
    showtruncateView.alpha = 0.5;
    return showtruncateView;
}
-(UISlider *)gettruncateSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
