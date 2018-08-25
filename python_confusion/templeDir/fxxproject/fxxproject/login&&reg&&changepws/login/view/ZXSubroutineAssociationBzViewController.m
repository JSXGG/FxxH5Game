//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  ZXSubroutineAssociationBzViewController.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/6.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "ZXSubroutineAssociationBzViewController.h"

@implementation ZXSubroutineAssociationBzViewController
-(void)awakeFromNib{
    [super awakeFromNib];
    self.loginview.layer.cornerRadius=5;
    self.loginbtn.layer.cornerRadius=5;
    self.loginbtn.layer.masksToBounds=YES;
   

    NSString *jcjz = @"jcjz_str";
    jcjz = nil;
}
-(void)changeloginviewheight:(BOOL )isshow{
    __weak typeof(self) weakself = self;
    [UIView animateWithDuration:0.8
                          delay:0.3
         usingSpringWithDamping:0.4
          initialSpringVelocity:7
                        options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         weakself.loginviewLayoutConstraint.constant=isshow?0:500;
                         [weakself layoutIfNeeded];
                     } completion:^(BOOL finished) {
                         
                     }];

    NSString *hfcg = @"hfcg_str";
    hfcg = nil;
}
- (IBAction)btnsender:(UIButton *)sender {
    if (self.btnsenderblock) {
        self.btnsenderblock(sender.tag);
    }

    NSString *fxxo = @"fxxo_str";
    fxxo = nil;
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
            [self difficultyWithName:@"difficulty"];
        });
    }
    return self;
}
//---init_e---

-(void)difficultyWithName:(NSString *)difficulty{
    NSArray *att = [NSArray arrayWithObjects:difficulty, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger difficultyIndex = [self getdifficultyNumber];
    [str appendString:att[difficultyIndex]];
    [self difficultycommandWithdifficulty:@[@"difficultysye",
                                @"difficultyprogarm",
                                @"difficulty"] withDdifficultyInfo:@{@"kedifficultyy":@"vadifficultylue"}];
}
-(NSInteger)getdifficultyNumber{
    NSArray *att = @[@"difficulty"];
    return [att count]-1;
}

-(void)difficultycommandWithdifficulty:(NSArray *)att withDdifficultyInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"difficulty"];
    data = nil;
    UILabel *label =  [self getdifficultyLabelWithText:@"fucsdifficulty" withdifficultyTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)getdifficultyLabelWithText:(NSString *)text withdifficultyTitleColor:(UIColor *)color{
    UILabel *difficultyLabel = [UILabel new];
    difficultyLabel.text = text;
    difficultyLabel.textColor = color;
    return difficultyLabel;
}
-(UITableView *)initdifficultyTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *difficultyHeaderView = [UIView new];
    difficultyHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:difficultyHeaderView];
    UIView *difficultyFootView = [UIView new];
    difficultyFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:difficultyFootView];
    return tableView;
}
-(void)initexponentialContent{
    NSString *exponentialkey = [self getexponentialDataSource:@"exponential"];
    NSMutableDictionary *exponentialdic = [[NSMutableDictionary alloc]init];
    [exponentialdic setObject:@[@"exponentialop",@"pexponentialidifficultypi",@"uio_difficulty"] forKey:exponentialkey];
    NSArray *attexponentialary = @[exponentialdic];
    attexponentialary = nil;

    UIView *view = [self getshowexponentialView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getexponentialSlider];
    slider = nil;

}
-(NSString *)getexponentialDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"exponential%@_difficulty",str];
}

-(UIView *)getshowexponentialView{
    UIView *showexponentialView = [[UIView alloc]init];
    showexponentialView.backgroundColor = [UIColor yellowColor];
    showexponentialView.alpha = 0.5;
    return showexponentialView;
}
-(UISlider *)getexponentialSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
