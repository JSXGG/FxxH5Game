//
//  UIViewController+MASAdditions.h
//  SSXMasonry
//
//  Created by Craig Siemens on 2015-06-23.
//
//

#import "SSXMASUtilities.h"
#import "SSXMASConstraintMaker.h"
#import "SSXMASViewAttribute.h"

#ifdef MAS_VIEW_CONTROLLER

@interface MAS_VIEW_CONTROLLER (MASAdditions)

/**
 *	following properties return a new SSXMASViewAttribute with appropriate UILayoutGuide and NSLayoutAttribute
 */
@property (nonatomic, strong, readonly) SSXMASViewAttribute *mas_topLayoutGuide;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *mas_bottomLayoutGuide;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *mas_topLayoutGuideTop;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *mas_topLayoutGuideBottom;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *mas_bottomLayoutGuideTop;
@property (nonatomic, strong, readonly) SSXMASViewAttribute *mas_bottomLayoutGuideBottom;


@end

#endif
