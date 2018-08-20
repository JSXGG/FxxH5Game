//
//  WKTeamNavigationOuScrollLayer.h
//  GXNBSDK
//
//  Created by Baird-weng on 2018/3/23.
//  Copyright © 2018年 Baird-weng. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^showTableSelect)(NSString* account);

@interface WKTeamNavigationOuScrollLayer : UITableView
@property (nonatomic, strong) NSArray* dataArray;
@property (nonatomic, strong) showTableSelect selectBlock;
@property (nonatomic, strong) showTableSelect deleteBlock;

@end
