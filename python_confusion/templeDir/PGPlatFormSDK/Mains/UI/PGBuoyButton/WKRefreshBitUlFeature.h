//
//  WKRefreshBitUlFeature.h
//  GXNBSDK
//
//  Created by Baird-weng on 2018/6/12.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^PGRoundEventCallBack)(NSInteger index,NSString *btnText);
typedef void(^PGRoundAnimation)(BOOL finish);

@interface WKRefreshBitUlFeature : UIView
-(void)hx_setRoundViewBtns:(NSArray *)btns withPGRoundEventCallBack:(PGRoundEventCallBack)callback;
-(void)hx_dissShowItemViewWithBlock:(PGRoundAnimation)animation;
-(void)showItemView;
-(void)hx_reloadItemViewWithPoint:(CGPoint)point;
@end
