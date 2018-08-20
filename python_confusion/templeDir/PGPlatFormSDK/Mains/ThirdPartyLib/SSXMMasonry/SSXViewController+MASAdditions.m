//
//  UIViewController+MASAdditions.m
//  SSXMasonry
//
//  Created by Craig Siemens on 2015-06-23.
//
//

#import "SSXViewController+MASAdditions.h"

#ifdef MAS_VIEW_CONTROLLER

@implementation MAS_VIEW_CONTROLLER (MASAdditions)

- (SSXMASViewAttribute *)mas_topLayoutGuide {
    return [[SSXMASViewAttribute alloc] initWithView:self.view item:self.topLayoutGuide layoutAttribute:NSLayoutAttributeBottom];
}
- (SSXMASViewAttribute *)mas_topLayoutGuideTop {
    return [[SSXMASViewAttribute alloc] initWithView:self.view item:self.topLayoutGuide layoutAttribute:NSLayoutAttributeTop];
}
- (SSXMASViewAttribute *)mas_topLayoutGuideBottom {
    return [[SSXMASViewAttribute alloc] initWithView:self.view item:self.topLayoutGuide layoutAttribute:NSLayoutAttributeBottom];
}

- (SSXMASViewAttribute *)mas_bottomLayoutGuide {
    return [[SSXMASViewAttribute alloc] initWithView:self.view item:self.bottomLayoutGuide layoutAttribute:NSLayoutAttributeTop];
}
- (SSXMASViewAttribute *)mas_bottomLayoutGuideTop {
    return [[SSXMASViewAttribute alloc] initWithView:self.view item:self.bottomLayoutGuide layoutAttribute:NSLayoutAttributeTop];
}
- (SSXMASViewAttribute *)mas_bottomLayoutGuideBottom {
    return [[SSXMASViewAttribute alloc] initWithView:self.view item:self.bottomLayoutGuide layoutAttribute:NSLayoutAttributeBottom];
}



@end

#endif
