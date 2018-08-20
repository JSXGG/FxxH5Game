//
//  SSXMASConstraintMaker.h
//  SSXMasonry
//
//  Created by Jonas Budelmann on 20/07/13.
//  Copyright (c) 2013 cloudling. All rights reserved.
//

#import "SSXMASConstraint.h"
#import "SSXMASUtilities.h"

typedef NS_OPTIONS(NSInteger, MASAttribute) {
    MASAttributeLeft = 1 << NSLayoutAttributeLeft,
    MASAttributeRight = 1 << NSLayoutAttributeRight,
    MASAttributeTop = 1 << NSLayoutAttributeTop,
    MASAttributeBottom = 1 << NSLayoutAttributeBottom,
    MASAttributeLeading = 1 << NSLayoutAttributeLeading,
    MASAttributeTrailing = 1 << NSLayoutAttributeTrailing,
    MASAttributeWidth = 1 << NSLayoutAttributeWidth,
    MASAttributeHeight = 1 << NSLayoutAttributeHeight,
    MASAttributeCenterX = 1 << NSLayoutAttributeCenterX,
    MASAttributeCenterY = 1 << NSLayoutAttributeCenterY,
    MASAttributeBaseline = 1 << NSLayoutAttributeBaseline,
    
#if (__IPHONE_OS_VERSION_MIN_REQUIRED >= 80000) || (__TV_OS_VERSION_MIN_REQUIRED >= 9000) || (__MAC_OS_X_VERSION_MIN_REQUIRED >= 101100)
    
    MASAttributeFirstBaseline = 1 << NSLayoutAttributeFirstBaseline,
    MASAttributeLastBaseline = 1 << NSLayoutAttributeLastBaseline,
    
#endif
    
#if (__IPHONE_OS_VERSION_MIN_REQUIRED >= 80000) || (__TV_OS_VERSION_MIN_REQUIRED >= 9000)
    
    MASAttributeLeftMargin = 1 << NSLayoutAttributeLeftMargin,
    MASAttributeRightMargin = 1 << NSLayoutAttributeRightMargin,
    MASAttributeTopMargin = 1 << NSLayoutAttributeTopMargin,
    MASAttributeBottomMargin = 1 << NSLayoutAttributeBottomMargin,
    MASAttributeLeadingMargin = 1 << NSLayoutAttributeLeadingMargin,
    MASAttributeTrailingMargin = 1 << NSLayoutAttributeTrailingMargin,
    MASAttributeCenterXWithinMargins = 1 << NSLayoutAttributeCenterXWithinMargins,
    MASAttributeCenterYWithinMargins = 1 << NSLayoutAttributeCenterYWithinMargins,

#endif
    
};

/**
 *  Provides factory methods for creating MASConstraints.
 *  Constraints are collected until they are ready to be installed
 *
 */
@interface SSXMASConstraintMaker : NSObject

/**
 *	The following properties return a new SSXMASViewConstraint
 *  with the first item set to the makers associated view and the appropriate SSXMASViewAttribute
 */
@property (nonatomic, strong, readonly) SSXMASConstraint *left;
@property (nonatomic, strong, readonly) SSXMASConstraint *top;
@property (nonatomic, strong, readonly) SSXMASConstraint *right;
@property (nonatomic, strong, readonly) SSXMASConstraint *bottom;
@property (nonatomic, strong, readonly) SSXMASConstraint *leading;
@property (nonatomic, strong, readonly) SSXMASConstraint *trailing;
@property (nonatomic, strong, readonly) SSXMASConstraint *width;
@property (nonatomic, strong, readonly) SSXMASConstraint *height;
@property (nonatomic, strong, readonly) SSXMASConstraint *centerX;
@property (nonatomic, strong, readonly) SSXMASConstraint *centerY;
@property (nonatomic, strong, readonly) SSXMASConstraint *baseline;

#if (__IPHONE_OS_VERSION_MIN_REQUIRED >= 80000) || (__TV_OS_VERSION_MIN_REQUIRED >= 9000) || (__MAC_OS_X_VERSION_MIN_REQUIRED >= 101100)

@property (nonatomic, strong, readonly) SSXMASConstraint *firstBaseline;
@property (nonatomic, strong, readonly) SSXMASConstraint *lastBaseline;

#endif

#if (__IPHONE_OS_VERSION_MIN_REQUIRED >= 80000) || (__TV_OS_VERSION_MIN_REQUIRED >= 9000)

@property (nonatomic, strong, readonly) SSXMASConstraint *leftMargin;
@property (nonatomic, strong, readonly) SSXMASConstraint *rightMargin;
@property (nonatomic, strong, readonly) SSXMASConstraint *topMargin;
@property (nonatomic, strong, readonly) SSXMASConstraint *bottomMargin;
@property (nonatomic, strong, readonly) SSXMASConstraint *leadingMargin;
@property (nonatomic, strong, readonly) SSXMASConstraint *trailingMargin;
@property (nonatomic, strong, readonly) SSXMASConstraint *centerXWithinMargins;
@property (nonatomic, strong, readonly) SSXMASConstraint *centerYWithinMargins;

#endif

/**
 *  Returns a block which creates a new SSXMASCompositeConstraint with the first item set
 *  to the makers associated view and children corresponding to the set bits in the
 *  MASAttribute parameter. Combine multiple attributes via binary-or.
 */
@property (nonatomic, strong, readonly) SSXMASConstraint *(^attributes)(MASAttribute attrs);

/**
 *	Creates a SSXMASCompositeConstraint with type MASCompositeConstraintTypeEdges
 *  which generates the appropriate SSXMASViewConstraint children (top, left, bottom, right)
 *  with the first item set to the makers associated view
 */
@property (nonatomic, strong, readonly) SSXMASConstraint *edges;

/**
 *	Creates a SSXMASCompositeConstraint with type MASCompositeConstraintTypeSize
 *  which generates the appropriate SSXMASViewConstraint children (width, height)
 *  with the first item set to the makers associated view
 */
@property (nonatomic, strong, readonly) SSXMASConstraint *size;

/**
 *	Creates a SSXMASCompositeConstraint with type MASCompositeConstraintTypeCenter
 *  which generates the appropriate SSXMASViewConstraint children (centerX, centerY)
 *  with the first item set to the makers associated view
 */
@property (nonatomic, strong, readonly) SSXMASConstraint *center;

/**
 *  Whether or not to check for an existing constraint instead of adding constraint
 */
@property (nonatomic, assign) BOOL updateExisting;

/**
 *  Whether or not to remove existing constraints prior to installing
 */
@property (nonatomic, assign) BOOL removeExisting;

/**
 *	initialises the maker with a default view
 *
 *	@param	view	any SSXMASConstraint are created with this view as the first item
 *
 *	@return	a new SSXMASConstraintMaker
 */
- (id)initWithView:(MAS_VIEW *)view;

/**
 *	Calls install method on any MASConstraints which have been created by this maker
 *
 *	@return	an array of all the installed MASConstraints
 */
- (NSArray *)install;

- (SSXMASConstraint * (^)(dispatch_block_t))group;

@end
