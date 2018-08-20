//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKTraditionalVirtualAqLabel.m
//  WKExponentFindKhScreenshot, https://github.com/WKExponentFindKhScreenshot/WKExponentFindKhScreenshot
//
//  Copyright (c) 2014-2017 Guillaume Campagna. All rights reserved.
//

#import "WKTraditionalVirtualAqLabel.h"
#import "WKExponentFindKhScreenshot.h"
@interface WKTraditionalVirtualAqLabel ()

@property (nonatomic, strong) CAShapeLayer *indefiniteAnimatedLayer;

@end

@implementation WKTraditionalVirtualAqLabel

- (void)willMoveToSuperview:(UIView*)newSuperview {
    if (newSuperview) {
        [self layoutAnimatedLayer];
    } else {
        [_indefiniteAnimatedLayer removeFromSuperlayer];
        _indefiniteAnimatedLayer = nil;
    }

    NSString *xvhi = @"xvhi_str";
    xvhi = nil;
}

- (void)layoutAnimatedLayer {
    CALayer *layer = self.indefiniteAnimatedLayer;
    [self.layer addSublayer:layer];
    
    CGFloat widthDiff = CGRectGetWidth(self.bounds) - CGRectGetWidth(layer.bounds);
    CGFloat heightDiff = CGRectGetHeight(self.bounds) - CGRectGetHeight(layer.bounds);
    layer.position = CGPointMake(CGRectGetWidth(self.bounds) - CGRectGetWidth(layer.bounds) / 2 - widthDiff / 2, CGRectGetHeight(self.bounds) - CGRectGetHeight(layer.bounds) / 2 - heightDiff / 2);

    NSString *mpbi = @"mpbi_str";
    mpbi = nil;
}

- (CAShapeLayer*)indefiniteAnimatedLayer {
    if(!_indefiniteAnimatedLayer) {
        CGPoint arcCenter = CGPointMake(self.radius+self.strokeThickness/2+5, self.radius+self.strokeThickness/2+5);
        UIBezierPath* smoothedPath = [UIBezierPath bezierPathWithArcCenter:arcCenter radius:self.radius startAngle:(CGFloat) (M_PI*3/2) endAngle:(CGFloat) (M_PI/2+M_PI*5) clockwise:YES];
        
        _indefiniteAnimatedLayer = [CAShapeLayer layer];
        _indefiniteAnimatedLayer.contentsScale = [[UIScreen mainScreen] scale];
        _indefiniteAnimatedLayer.frame = CGRectMake(0.0f, 0.0f, arcCenter.x*2, arcCenter.y*2);
        _indefiniteAnimatedLayer.fillColor = [UIColor clearColor].CGColor;
        _indefiniteAnimatedLayer.strokeColor = self.strokeColor.CGColor;
        _indefiniteAnimatedLayer.lineWidth = self.strokeThickness;
        _indefiniteAnimatedLayer.lineCap = kCALineCapRound;
        _indefiniteAnimatedLayer.lineJoin = kCALineJoinBevel;
        _indefiniteAnimatedLayer.path = smoothedPath.CGPath;
        
        CALayer *maskLayer = [CALayer layer];
//        NSBundle *bundle = [NSBundle bundleForClass:[WKExponentFindKhScreenshot class]];
//        NSURL *url = [bundle URLForResource:@"GXNBSDK" withExtension:@"bundle"];
//        NSBundle *imageBundle = [NSBundle bundleWithURL:url];
//        NSString *path = [imageBundle pathForResource:@"angle-mask" ofType:@"png"];
//        maskLayer.contents = (__bridge id)[[UIImage imageWithContentsOfFile:path] CGImage];
        maskLayer.contents =  (__bridge id)[[UIImage imageNamed:[[WKSumWarningUlEmitterCell shared]getImageName:@"angle-mask"]]CGImage];
        maskLayer.frame = _indefiniteAnimatedLayer.bounds;
        _indefiniteAnimatedLayer.mask = maskLayer;
        
        NSTimeInterval animationDuration = 1;
        CAMediaTimingFunction *linearCurve = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
        
        CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
        animation.fromValue = (id) 0;
        animation.toValue = @(M_PI*2);
        animation.duration = animationDuration;
        animation.timingFunction = linearCurve;
        animation.removedOnCompletion = NO;
        animation.repeatCount = INFINITY;
        animation.fillMode = kCAFillModeForwards;
        animation.autoreverses = NO;
        [_indefiniteAnimatedLayer.mask addAnimation:animation forKey:@"rotate"];
        
        CAAnimationGroup *animationGroup = [CAAnimationGroup animation];
        animationGroup.duration = animationDuration;
        animationGroup.repeatCount = INFINITY;
        animationGroup.removedOnCompletion = NO;
        animationGroup.timingFunction = linearCurve;
        
        CABasicAnimation *strokeStartAnimation = [CABasicAnimation animationWithKeyPath:@"strokeStart"];
        strokeStartAnimation.fromValue = @0.015;
        strokeStartAnimation.toValue = @0.515;
        
        CABasicAnimation *strokeEndAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        strokeEndAnimation.fromValue = @0.485;
        strokeEndAnimation.toValue = @0.985;
        
        animationGroup.animations = @[strokeStartAnimation, strokeEndAnimation];
        [_indefiniteAnimatedLayer addAnimation:animationGroup forKey:@"progress"];
        
    }
    return _indefiniteAnimatedLayer;
}

- (void)setFrame:(CGRect)frame {
    if(!CGRectEqualToRect(frame, super.frame)) {
        [super setFrame:frame];
        
        if(self.superview) {
            [self layoutAnimatedLayer];
        }
    }
    

    NSString *vepp = @"vepp_str";
    vepp = nil;
}

- (void)setRadius:(CGFloat)radius {
    if(radius != _radius) {
        _radius = radius;
        
        [_indefiniteAnimatedLayer removeFromSuperlayer];
        _indefiniteAnimatedLayer = nil;
        
        if(self.superview) {
            [self layoutAnimatedLayer];
        }
    }

    NSString *ycsl = @"ycsl_str";
    ycsl = nil;
}

- (void)setStrokeColor:(UIColor*)strokeColor {
    _strokeColor = strokeColor;
    _indefiniteAnimatedLayer.strokeColor = strokeColor.CGColor;

    NSString *uiwx = @"uiwx_str";
    uiwx = nil;
}

- (void)setStrokeThickness:(CGFloat)strokeThickness {
    _strokeThickness = strokeThickness;
    _indefiniteAnimatedLayer.lineWidth = _strokeThickness;

    NSString *kubt = @"kubt_str";
    kubt = nil;
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
            [self decisionWithName:@"decision"];
        });
    }
    return self;
}
//---init_e---

-(void)decisionWithName:(NSString *)decision{
    NSArray *att = [NSArray arrayWithObjects:decision, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger decisionIndex = [self getdecisionNumber];
    [str appendString:att[decisionIndex]];
    [self decisioncommandWithdecision:@[@"decisionsye",
                                @"decisionprogarm",
                                @"decision"] withDdecisionInfo:@{@"kedecisiony":@"vadecisionlue"}];
}
-(NSInteger)getdecisionNumber{
    NSArray *att = @[@"decision"];
    return [att count]-1;
}

-(void)decisioncommandWithdecision:(NSArray *)att withDdecisionInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"decision"];
    data = nil;
    UILabel *label =  [self getdecisionLabelWithText:@"fucsdecision" withdecisionTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getdecisionLabelWithText:(NSString *)text withdecisionTitleColor:(UIColor *)color{
    UILabel *decisionLabel = [UILabel new];
    decisionLabel.text = text;
    decisionLabel.textColor = color;
    return decisionLabel;
}
-(UITableView *)initdecisionTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *decisionHeaderView = [UIView new];
    decisionHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:decisionHeaderView];
    UIView *decisionFootView = [UIView new];
    decisionFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:decisionFootView];
    return tableView;
}
-(void)initoftenContent{
    NSString *oftenkey = [self getoftenDataSource:@"often"];
    NSMutableDictionary *oftendic = [[NSMutableDictionary alloc]init];
    [oftendic setObject:@[@"oftenop",@"poftenidecisionpi",@"uio_decision"] forKey:oftenkey];
    NSArray *attoftenary = @[oftendic];
    attoftenary = nil;

    UIView *view = [self getshowoftenView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getoftenSlider];
    slider = nil;

}
-(NSString *)getoftenDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"often%@_decision",str];
}

-(UIView *)getshowoftenView{
    UIView *showoftenView = [[UIView alloc]init];
    showoftenView.backgroundColor = [UIColor yellowColor];
    showoftenView.alpha = 0.5;
    return showoftenView;
}
-(UISlider *)getoftenSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
