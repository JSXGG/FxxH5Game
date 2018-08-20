//
//  UIView+MASAdditions.m
//  SSXMasonry
//
//  Created by Jonas Budelmann on 20/07/13.
//  Copyright (c) 2013 cloudling. All rights reserved.
//

#import "SSXView+MASAdditions.h"
#import <objc/runtime.h>

@implementation MAS_VIEW (MASAdditions)

- (NSArray *)mas_makeConstraints:(void(^)(SSXMASConstraintMaker *))block {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    SSXMASConstraintMaker *constraintMaker = [[SSXMASConstraintMaker alloc] initWithView:self];
    block(constraintMaker);
    return [constraintMaker install];
}

- (NSArray *)mas_updateConstraints:(void(^)(SSXMASConstraintMaker *))block {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    SSXMASConstraintMaker *constraintMaker = [[SSXMASConstraintMaker alloc] initWithView:self];
    constraintMaker.updateExisting = YES;
    block(constraintMaker);
    return [constraintMaker install];
}

- (NSArray *)mas_remakeConstraints:(void(^)(SSXMASConstraintMaker *make))block {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    SSXMASConstraintMaker *constraintMaker = [[SSXMASConstraintMaker alloc] initWithView:self];
    constraintMaker.removeExisting = YES;
    block(constraintMaker);
    return [constraintMaker install];
}

#pragma mark - NSLayoutAttribute properties

- (SSXMASViewAttribute *)mas_left {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeLeft];
}

- (SSXMASViewAttribute *)mas_top {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeTop];
}

- (SSXMASViewAttribute *)mas_right {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeRight];
}

- (SSXMASViewAttribute *)mas_bottom {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeBottom];
}

- (SSXMASViewAttribute *)mas_leading {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeLeading];
}

- (SSXMASViewAttribute *)mas_trailing {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeTrailing];
}

- (SSXMASViewAttribute *)mas_width {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeWidth];
}

- (SSXMASViewAttribute *)mas_height {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeHeight];
}

- (SSXMASViewAttribute *)mas_centerX {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeCenterX];
}

- (SSXMASViewAttribute *)mas_centerY {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeCenterY];
}

- (SSXMASViewAttribute *)mas_baseline {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeBaseline];
}

- (SSXMASViewAttribute *(^)(NSLayoutAttribute))mas_attribute
{
    return ^(NSLayoutAttribute attr) {
        return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:attr];
    };
}

#if (__IPHONE_OS_VERSION_MIN_REQUIRED >= 80000) || (__TV_OS_VERSION_MIN_REQUIRED >= 9000) || (__MAC_OS_X_VERSION_MIN_REQUIRED >= 101100)

- (SSXMASViewAttribute *)mas_firstBaseline {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeFirstBaseline];
}
- (SSXMASViewAttribute *)mas_lastBaseline {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeLastBaseline];
}

#endif

#if (__IPHONE_OS_VERSION_MIN_REQUIRED >= 80000) || (__TV_OS_VERSION_MIN_REQUIRED >= 9000)

- (SSXMASViewAttribute *)mas_leftMargin {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeLeftMargin];
}

- (SSXMASViewAttribute *)mas_rightMargin {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeRightMargin];
}

- (SSXMASViewAttribute *)mas_topMargin {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeTopMargin];
}

- (SSXMASViewAttribute *)mas_bottomMargin {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeBottomMargin];
}

- (SSXMASViewAttribute *)mas_leadingMargin {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeLeadingMargin];
}

- (SSXMASViewAttribute *)mas_trailingMargin {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeTrailingMargin];
}

- (SSXMASViewAttribute *)mas_centerXWithinMargins {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeCenterXWithinMargins];
}

- (SSXMASViewAttribute *)mas_centerYWithinMargins {
    return [[SSXMASViewAttribute alloc] initWithView:self layoutAttribute:NSLayoutAttributeCenterYWithinMargins];
}

#endif

#if (__IPHONE_OS_VERSION_MAX_ALLOWED >= 110000) || (__TV_OS_VERSION_MAX_ALLOWED >= 110000)

- (SSXMASViewAttribute *)mas_safeAreaLayoutGuide {
    return [[SSXMASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeBottom];
}
- (SSXMASViewAttribute *)mas_safeAreaLayoutGuideTop {
    return [[SSXMASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeTop];
}
- (SSXMASViewAttribute *)mas_safeAreaLayoutGuideBottom {
    return [[SSXMASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeBottom];
}
- (SSXMASViewAttribute *)mas_safeAreaLayoutGuideLeft {
    return [[SSXMASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeLeft];
}
- (SSXMASViewAttribute *)mas_safeAreaLayoutGuideRight {
    return [[SSXMASViewAttribute alloc] initWithView:self item:self.safeAreaLayoutGuide layoutAttribute:NSLayoutAttributeRight];
}

#endif

#pragma mark - associated properties

- (id)mas_key {
    return objc_getAssociatedObject(self, @selector(mas_key));
}

- (void)setMas_key:(id)key {
    objc_setAssociatedObject(self, @selector(mas_key), key, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - heirachy

- (instancetype)mas_closestCommonSuperview:(MAS_VIEW *)view {
    MAS_VIEW *closestCommonSuperview = nil;

    MAS_VIEW *secondViewSuperview = view;
    while (!closestCommonSuperview && secondViewSuperview) {
        MAS_VIEW *firstViewSuperview = self;
        while (!closestCommonSuperview && firstViewSuperview) {
            if (secondViewSuperview == firstViewSuperview) {
                closestCommonSuperview = secondViewSuperview;
            }
            firstViewSuperview = firstViewSuperview.superview;
        }
        secondViewSuperview = secondViewSuperview.superview;
    }
    return closestCommonSuperview;
}

@end
