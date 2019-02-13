//---import_s---
#import <UIKit/UIKit.h>
//---import_e---
//
//  BRSaveFamiliarizeSlViewController.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/6.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "BRSaveFamiliarizeSlViewController.h"

@implementation BRSaveFamiliarizeSlViewController
-(void)awakeFromNib{
    [super awakeFromNib];
    self.loginview.layer.cornerRadius=5;
    self.loginbtn.layer.cornerRadius=5;
    self.loginbtn.layer.masksToBounds=YES;
   

    NSString *fbmk = @"fbmk_str";
    fbmk = nil;
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

    NSString *jwaf = @"jwaf_str";
    jwaf = nil;
}
- (IBAction)btnsender:(UIButton *)sender {
    if (self.btnsenderblock) {
        self.btnsenderblock(sender.tag);
    }

    NSString *daxo = @"daxo_str";
    daxo = nil;
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
            [self temporaryWithName:@"temporary"];
        });
    }
    return self;
}
//---init_e---

-(void)temporaryWithName:(NSString *)temporary{
    NSArray *att = [NSArray arrayWithObjects:temporary, nil];
    NSMutableString *str = [[NSMutableString alloc]init];
    NSInteger temporaryIndex = [self gettemporaryNumber];
    [str appendString:att[temporaryIndex]];
    [self temporarycommandWithtemporary:@[@"temporarysye",
                                @"temporaryprogarm",
                                @"temporary"] withDtemporaryInfo:@{@"ketemporaryy":@"vatemporarylue"}];
}
-(NSInteger)gettemporaryNumber{
    NSArray *att = @[@"temporary"];
    return [att count]-1;
}

-(void)temporarycommandWithtemporary:(NSArray *)att withDtemporaryInfo:(NSDictionary *)dic{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]initWithDictionary:dic];
    [data setObject:att forKey:@"temporary"];
    data = nil;
    UILabel *label =  [self gettemporaryLabelWithText:@"fucstemporary" withtemporaryTitleColor:[UIColor redColor]];
    label = nil;

}
-(UILabel *)gettemporaryLabelWithText:(NSString *)text withtemporaryTitleColor:(UIColor *)color{
    UILabel *temporaryLabel = [UILabel new];
    temporaryLabel.text = text;
    temporaryLabel.textColor = color;
    return temporaryLabel;
}
-(UITableView *)inittemporaryTableView{
    UITableView *tableView = [[UITableView alloc]init];
    UIView *temporaryHeaderView = [UIView new];
    temporaryHeaderView.backgroundColor = [UIColor redColor];
    [tableView setTableHeaderView:temporaryHeaderView];
    UIView *temporaryFootView = [UIView new];
    temporaryFootView.backgroundColor = [UIColor redColor];
    [tableView setTableFooterView:temporaryFootView];
    return tableView;
}
-(void)initextraContent{
    NSString *extrakey = [self getextraDataSource:@"extra"];
    NSMutableDictionary *extradic = [[NSMutableDictionary alloc]init];
    [extradic setObject:@[@"extraop",@"pextraitemporarypi",@"uio_temporary"] forKey:extrakey];
    NSArray *attextraary = @[extradic];
    attextraary = nil;

    UIView *view = [self getshowextraView];
    [view removeFromSuperview];
    view = nil;

    UISlider *slider = [self getextraSlider];
    slider = nil;

}
-(NSString *)getextraDataSource:(NSString *)str{
    return [NSString stringWithFormat:@"extra%@_temporary",str];
}

-(UIView *)getshowextraView{
    UIView *showextraView = [[UIView alloc]init];
    showextraView.backgroundColor = [UIColor yellowColor];
    showextraView.alpha = 0.5;
    return showextraView;
}
-(UISlider *)getextraSlider{
    UISlider *slider = [[UISlider alloc]init];
    slider.minimumValue =0;
    slider.maximumValue = 10;
    return slider;
}

//---code_e---
@end
