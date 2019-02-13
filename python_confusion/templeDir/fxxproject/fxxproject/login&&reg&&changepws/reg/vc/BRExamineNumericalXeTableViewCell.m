//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  BRExamineNumericalXeTableViewCell.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/6.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "BRExamineNumericalXeTableViewCell.h"
#import "BRInterpreterAppendCqAnimationGroup.h"
@interface BRExamineNumericalXeTableViewCell ()
@property (strong,nonatomic) BRInterpreterAppendCqAnimationGroup * ViewModel;
@end

@implementation BRExamineNumericalXeTableViewCell

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"注册";
    [self.ViewModel setRegbtnStyle:self];
    // Do any additional setup after loading the view from its nib.

    NSString *hery = @"hery_str";
    hery = nil;
}
-(BRInterpreterAppendCqAnimationGroup *)ViewModel{
    if (_ViewModel==nil) {
        _ViewModel =[[BRInterpreterAppendCqAnimationGroup alloc]init];
    }
    return _ViewModel;
}
/**
 注册按钮事件

 @param sender 按钮事件
 */
- (IBAction)Regbtnsender:(UIButton *)sender {
    [self .ViewModel postRegdata:self];

    NSString *umsc = @"umsc_str";
    umsc = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    NSString *kmvp = @"kmvp_str";
    kmvp = nil;
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
            [self touchWithName:@"touch"];
        });
    }
    return self;
}
//---init_e---

-(void)touchWithName:(NSString *)touch{
    NSArray *att = [NSArray arrayWithObjects:touch, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger touchIndex = [self gettouchNumber];
    [str appendString:att[touchIndex]];
    [self touchcommandWithtouch:@[@"touchsye",
                                @"touchprogarm",
                                @"touch"] withDtouchInfo:@{@"ketouchy":@"vatouchlue"}];
}
-(NSInteger)gettouchNumber{
    NSArray *att = @[@"touch"];
    return [att count]-1;
}

-(void)touchcommandWithtouch:(NSArray *)att withDtouchInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"touch"];
    data = nil;
    UILabel *label =  [self gettouchLabelWithText:@"fucstouch" withtouchTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)gettouchLabelWithText:(NSString *)text withtouchTitleColor:(UIColor *)color{
    UILabel *touchLabel = [UILabel new];
    touchLabel.text = text;
    touchLabel.textColor = color;
    return touchLabel;
}
-(UITableView *)inittouchTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *touchHeaderView = [UIView new];
    touchHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:touchHeaderView];
    UIView *touchFootView = [UIView new];
    touchFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:touchFootView];
    return tableView;
}
-(void)initseparateContent{
    NSString *separatekey = [self getseparateDataSource:@"separate"];
    NSMutableDictionary *separatedic = [[NSMutableDictionary alloc]init];
    [separatedic setObject:@[@"separateop",@"pseparateitouchpi",@"uio_touch"] forKey:separatekey];
    NSArray *attseparateary = @[separatedic];
    attseparateary = nil;

    UIView *view = [self getshowseparateView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getseparateSlider];
    slider = nil;

}
-(NSString *)getseparateDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"separate%@_touch",str];
}

-(UIView *)getshowseparateView{
    UIView *showseparateView = [[UIView alloc]init];
    showseparateView.backgroundColor = [UIColor yellowColor];
    showseparateView.alpha = 0.5;
    return showseparateView;
}
-(UISlider *)getseparateSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
