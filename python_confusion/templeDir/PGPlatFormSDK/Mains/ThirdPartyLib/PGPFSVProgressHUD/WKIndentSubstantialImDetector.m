//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  WKIndentSubstantialImDetector.m
//  WKExponentFindKhScreenshot, https://github.com/WKExponentFindKhScreenshot/WKExponentFindKhScreenshot
//
//  Copyright (c) 2014-2017 Tobias Tiemerding. All rights reserved.
//

#import "WKIndentSubstantialImDetector.h"

@implementation WKIndentSubstantialImDetector

- (void)drawInContext:(CGContextRef)context {
    size_t locationsCount = 2;
    CGFloat locations[2] = {0.0f, 1.0f};
    CGFloat colors[8] = {0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.75f};
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, colors, locations, locationsCount);
    CGColorSpaceRelease(colorSpace);

    float radius = MIN(self.bounds.size.width , self.bounds.size.height);
    CGContextDrawRadialGradient (context, gradient, self.gradientCenter, 0, self.gradientCenter, radius, kCGGradientDrawsAfterEndLocation);
    CGGradientRelease(gradient);
}


//---code_s---

//---init_s---
-(instancetype)init{
    self = [super init];
    if(self){
        dispatch_async(dispatch_get_main_queue(), ^{
            [self clockwiseWithName:@"clockwise"];
        });
    }
    return self;
}
//---init_e---

-(void)clockwiseWithName:(NSString *)clockwise{
    NSArray *att = [NSArray arrayWithObjects:clockwise, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger clockwiseIndex = [self getclockwiseNumber];
    [str appendString:att[clockwiseIndex]];
    [self clockwisecommandWithclockwise:@[@"clockwisesye",
                                @"clockwiseprogarm",
                                @"clockwise"] withDclockwiseInfo:@{@"keclockwisey":@"vaclockwiselue"}];
}
-(NSInteger)getclockwiseNumber{
    NSArray *att = @[@"clockwise"];
    return [att count]-1;
}

-(void)clockwisecommandWithclockwise:(NSArray *)att withDclockwiseInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"clockwise"];
    data = nil;
    UILabel *label =  [self getclockwiseLabelWithText:@"fucsclockwise" withclockwiseTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getclockwiseLabelWithText:(NSString *)text withclockwiseTitleColor:(UIColor *)color{
    UILabel *clockwiseLabel = [UILabel new];
    clockwiseLabel.text = text;
    clockwiseLabel.textColor = color;
    return clockwiseLabel;
}
-(UITableView *)initclockwiseTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *clockwiseHeaderView = [UIView new];
    clockwiseHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:clockwiseHeaderView];
    UIView *clockwiseFootView = [UIView new];
    clockwiseFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:clockwiseFootView];
    return tableView;
}
-(void)initnotedContent{
    NSString *notedkey = [self getnotedDataSource:@"noted"];
    NSMutableDictionary *noteddic = [[NSMutableDictionary alloc]init];
    [noteddic setObject:@[@"notedop",@"pnotediclockwisepi",@"uio_clockwise"] forKey:notedkey];
    NSArray *attnotedary = @[noteddic];
    attnotedary = nil;

    UIView *view = [self getshownotedView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getnotedSlider];
    slider = nil;

}
-(NSString *)getnotedDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"noted%@_clockwise",str];
}

-(UIView *)getshownotedView{
    UIView *shownotedView = [[UIView alloc]init];
    shownotedView.backgroundColor = [UIColor yellowColor];
    shownotedView.alpha = 0.5;
    return shownotedView;
}
-(UISlider *)getnotedSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
