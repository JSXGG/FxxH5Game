//
//  TROverviewGroupQlCollectionViewCell.h
//  fxxproject
//
//  Created by  翁献山 on 2018/8/8.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRRouteAllowTrModel.h"
#import "TRClickByteAbDataMatrixCodeDescriptor.h"
#import "TRDeclaredHighEeReusableView.h"
@interface TROverviewGroupQlCollectionViewCell : NSObject
@property (strong,nonatomic) TRDeclaredHighEeReusableView *Model;
@property (strong,nonatomic) TRClickByteAbDataMatrixCodeDescriptor *loginview;
-(void)Regisdevicebygame:(TRRouteAllowTrModel *)Vc;
-(void)Getloginview:(TRRouteAllowTrModel *)Vc;
@end
