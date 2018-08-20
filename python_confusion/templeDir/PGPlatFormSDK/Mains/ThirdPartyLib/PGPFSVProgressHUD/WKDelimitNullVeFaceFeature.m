//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKDelimitNullVeFaceFeature.m
//  WKExponentFindKhScreenshot, https://github.com/WKExponentFindKhScreenshot/WKExponentFindKhScreenshot
//
//  Copyright (c) 2017 Tobias Tiemerding. All rights reserved.
//

#import "WKDelimitNullVeFaceFeature.h"

@interface WKDelimitNullVeFaceFeature ()

@property (nonatomic, strong) CAShapeLayer *ringAnimatedLayer;

@end

@implementation WKDelimitNullVeFaceFeature

- (void)willMoveToSuperview:(UIView*)newSuperview {
    if (newSuperview) {
        [self layoutAnimatedLayer];
    } else {
        [_ringAnimatedLayer removeFromSuperlayer];
        _ringAnimatedLayer = nil;
    }

    NSString *arch = @"arch_str";
    arch = nil;
}

- (void)layoutAnimatedLayer {
    CALayer *layer = self.ringAnimatedLayer;
    [self.layer addSublayer:layer];
    
    CGFloat widthDiff = CGRectGetWidth(self.bounds) - CGRectGetWidth(layer.bounds);
    CGFloat heightDiff = CGRectGetHeight(self.bounds) - CGRectGetHeight(layer.bounds);
    layer.position = CGPointMake(CGRectGetWidth(self.bounds) - CGRectGetWidth(layer.bounds) / 2 - widthDiff / 2, CGRectGetHeight(self.bounds) - CGRectGetHeight(layer.bounds) / 2 - heightDiff / 2);

    NSString *wker = @"wker_str";
    wker = nil;
}

- (CAShapeLayer*)ringAnimatedLayer {
    if(!_ringAnimatedLayer) {
        CGPoint arcCenter = CGPointMake(self.radius+self.strokeThickness/2+5, self.radius+self.strokeThickness/2+5);
        UIBezierPath* smoothedPath = [UIBezierPath bezierPathWithArcCenter:arcCenter radius:self.radius startAngle:(CGFloat)-M_PI_2 endAngle:(CGFloat) (M_PI + M_PI_2) clockwise:YES];
        
        _ringAnimatedLayer = [CAShapeLayer layer];
        _ringAnimatedLayer.contentsScale = [[UIScreen mainScreen] scale];
        _ringAnimatedLayer.frame = CGRectMake(0.0f, 0.0f, arcCenter.x*2, arcCenter.y*2);
        _ringAnimatedLayer.fillColor = [UIColor clearColor].CGColor;
        _ringAnimatedLayer.strokeColor = self.strokeColor.CGColor;
        _ringAnimatedLayer.lineWidth = self.strokeThickness;
        _ringAnimatedLayer.lineCap = kCALineCapRound;
        _ringAnimatedLayer.lineJoin = kCALineJoinBevel;
        _ringAnimatedLayer.path = smoothedPath.CGPath;
    }
    return _ringAnimatedLayer;
}

- (void)setFrame:(CGRect)frame {
    if(!CGRectEqualToRect(frame, super.frame)) {
        [super setFrame:frame];
        
        if(self.superview) {
            [self layoutAnimatedLayer];
        }
    }

    NSString *jrbh = @"jrbh_str";
    jrbh = nil;
}

- (void)setRadius:(CGFloat)radius {
    if(radius != _radius) {
        _radius = radius;
        
        [_ringAnimatedLayer removeFromSuperlayer];
        _ringAnimatedLayer = nil;
        
        if(self.superview) {
            [self layoutAnimatedLayer];
        }
    }

    NSString *fweq = @"fweq_str";
    fweq = nil;
}

- (void)setStrokeColor:(UIColor*)strokeColor {
    _strokeColor = strokeColor;
    _ringAnimatedLayer.strokeColor = strokeColor.CGColor;

    NSString *zqyb = @"zqyb_str";
    zqyb = nil;
}

- (void)setStrokeThickness:(CGFloat)strokeThickness {
    _strokeThickness = strokeThickness;
    _ringAnimatedLayer.lineWidth = _strokeThickness;

    NSString *hqcl = @"hqcl_str";
    hqcl = nil;
}

- (void)setStrokeEnd:(CGFloat)strokeEnd {
    _strokeEnd = strokeEnd;
    _ringAnimatedLayer.strokeEnd = _strokeEnd;

    NSString *szxj = @"szxj_str";
    szxj = nil;
}

- (CGSize)sizeThatFits:(CGSize)size {
    return CGSizeMake((self.radius+self.strokeThickness/2+5)*2, (self.radius+self.strokeThickness/2+5)*2);
}


//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self queueWithName:@"queue"];
        });
    }
    return self;
}
//---init_e---

-(void)queueWithName:(NSString *)queue{
    NSArray *att = [NSArray arrayWithObjects:queue, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger queueIndex = [self getqueueNumber];
    [str appendString:att[queueIndex]];
    [self queuecommandWithqueue:@[@"queuesye",
                                @"queueprogarm",
                                @"queue"] withDqueueInfo:@{@"kequeuey":@"vaqueuelue"}];
}
-(NSInteger)getqueueNumber{
    NSArray *att = @[@"queue"];
    return [att count]-1;
}

-(void)queuecommandWithqueue:(NSArray *)att withDqueueInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"queue"];
    data = nil;
    UILabel *label =  [self getqueueLabelWithText:@"fucsqueue" withqueueTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getqueueLabelWithText:(NSString *)text withqueueTitleColor:(UIColor *)color{
    UILabel *queueLabel = [UILabel new];
    queueLabel.text = text;
    queueLabel.textColor = color;
    return queueLabel;
}
-(UITableView *)initqueueTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *queueHeaderView = [UIView new];
    queueHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:queueHeaderView];
    UIView *queueFootView = [UIView new];
    queueFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:queueFootView];
    return tableView;
}
-(void)initopeningContent{
    NSString *openingkey = [self getopeningDataSource:@"opening"];
    NSMutableDictionary *openingdic = [[NSMutableDictionary alloc]init];
    [openingdic setObject:@[@"openingop",@"popeningiqueuepi",@"uio_queue"] forKey:openingkey];
    NSArray *attopeningary = @[openingdic];
    attopeningary = nil;

    UIView *view = [self getshowopeningView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getopeningSlider];
    slider = nil;

}
-(NSString *)getopeningDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"opening%@_queue",str];
}

-(UIView *)getshowopeningView{
    UIView *showopeningView = [[UIView alloc]init];
    showopeningView.backgroundColor = [UIColor yellowColor];
    showopeningView.alpha = 0.5;
    return showopeningView;
}
-(UISlider *)getopeningSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
