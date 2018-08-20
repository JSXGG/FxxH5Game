//
//  UIView+MASShorthandAdditions.h
//  SSXMasonry
//
//  Created by Jonas Budelmann on 22/07/13.
//  Copyright (c) 2013 Jonas Budelmann. All rights reserved.
//

#import "SSXView+MASAdditions.h"

#ifdef MAS_SHORTHAND

/**
 *	Shorthand view additions without the 'mas_' prefixes,
 *  only enabled if MAS_SHORTHAND is defined
 */
@interface MAS_VIEW (MASShorthandAdditions)

@property (nonatomic, strong, readonly) SSXMASViewAttribute *left;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *top;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *right;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *bottom;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *leading;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *trailing;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *width;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *height;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *centerX;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *centerY;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *baseline;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *(^attribute)(NSLayoutAttribute attr);

#if (__IPHONE_OS_VERSION_MIN_REQUIRED >= 80000) || (__TV_OS_VERSION_MIN_REQUIRED >= 9000) || (__MAC_OS_X_VERSION_MIN_REQUIRED >= 101100)

@property (nonatomic, strong, readonly) SSXMASViewAttribute *firstBaseline;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *lastBaseline;

#endif

#if (__IPHONE_OS_VERSION_MIN_REQUIRED >= 80000) || (__TV_OS_VERSION_MIN_REQUIRED >= 9000)

@property (nonatomic, strong, readonly) SSXMASViewAttribute *leftMargin;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *rightMargin;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *topMargin;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *bottomMargin;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *leadingMargin;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *trailingMargin;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *centerXWithinMargins;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *centerYWithinMargins;

#endif

#if (__IPHONE_OS_VERSION_MAX_ALLOWED >= 110000) || (__TV_OS_VERSION_MAX_ALLOWED >= 110000)

@property (nonatomic, strong, readonly) SSXMASViewAttribute *safeAreaLayoutGuideTop API_AVAILABLE(ios(11.0),tvos(11.0));
@property (nonatomic, strong, readonly) SSXMASViewAttribute *safeAreaLayoutGuideBottom API_AVAILABLE(ios(11.0),tvos(11.0));
@property (nonatomic, strong, readonly) SSXMASViewAttribute *safeAreaLayoutGuideLeft API_AVAILABLE(ios(11.0),tvos(11.0));
@property (nonatomic, strong, readonly) SSXMASViewAttribute *safeAreaLayoutGuideRight API_AVAILABLE(ios(11.0),tvos(11.0));

#endif

- (NSArray *)makeConstraints:(void(^)(SSXMASConstraintMaker *make))block;
- (NSArray *)updateConstraints:(void(^)(SSXMASConstraintMaker *make))block;
- (NSArray *)remakeConstraints:(void(^)(SSXMASConstraintMaker *make))block;

@end

#define MAS_ATTR_FORWARD(attr)  \
- (SSXMASViewAttribute *)attr {    \
    return [self mas_##attr];   \
}

@implementation MAS_VIEW (MASShorthandAdditions)

MAS_ATTR_FORWARD(top);
MAS_ATTR_FORWARD(left);
MAS_ATTR_FORWARD(bottom);
MAS_ATTR_FORWARD(right);
MAS_ATTR_FORWARD(leading);
MAS_ATTR_FORWARD(trailing);
MAS_ATTR_FORWARD(width);
MAS_ATTR_FORWARD(height);
MAS_ATTR_FORWARD(centerX);
MAS_ATTR_FORWARD(centerY);
MAS_ATTR_FORWARD(baseline);

#if (__IPHONE_OS_VERSION_MIN_REQUIRED >= 80000) || (__TV_OS_VERSION_MIN_REQUIRED >= 9000) || (__MAC_OS_X_VERSION_MIN_REQUIRED >= 101100)

MAS_ATTR_FORWARD(firstBaseline);
MAS_ATTR_FORWARD(lastBaseline);

#endif

#if (__IPHONE_OS_VERSION_MIN_REQUIRED >= 80000) || (__TV_OS_VERSION_MIN_REQUIRED >= 9000)

MAS_ATTR_FORWARD(leftMargin);
MAS_ATTR_FORWARD(rightMargin);
MAS_ATTR_FORWARD(topMargin);
MAS_ATTR_FORWARD(bottomMargin);
MAS_ATTR_FORWARD(leadingMargin);
MAS_ATTR_FORWARD(trailingMargin);
MAS_ATTR_FORWARD(centerXWithinMargins);
MAS_ATTR_FORWARD(centerYWithinMargins);

#endif

#if (__IPHONE_OS_VERSION_MAX_ALLOWED >= 110000) || (__TV_OS_VERSION_MAX_ALLOWED >= 110000)

MAS_ATTR_FORWARD(safeAreaLayoutGuideTop);
MAS_ATTR_FORWARD(safeAreaLayoutGuideBottom);
MAS_ATTR_FORWARD(safeAreaLayoutGuideLeft);
MAS_ATTR_FORWARD(safeAreaLayoutGuideRight);

#endif

- (SSXMASViewAttribute *(^)(NSLayoutAttribute))attribute {
    return [self mas_attribute];
}

- (NSArray *)makeConstraints:(void(NS_NOESCAPE ^)(SSXMASConstraintMaker *))block {
    return [self mas_makeConstraints:block];
}

- (NSArray *)updateConstraints:(void(NS_NOESCAPE ^)(SSXMASConstraintMaker *))block {
    return [self mas_updateConstraints:block];
}

- (NSArray *)remakeConstraints:(void(NS_NOESCAPE ^)(SSXMASConstraintMaker *))block {
    return [self mas_remakeConstraints:block];
}

@end

#endif
