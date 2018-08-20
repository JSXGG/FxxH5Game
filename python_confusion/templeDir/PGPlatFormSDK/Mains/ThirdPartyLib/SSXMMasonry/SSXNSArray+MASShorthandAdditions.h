//
//  SSXNSArray+MASShorthandAdditions.h
//  SSXMasonry
//
//  Created by Jonas Budelmann on 22/07/13.
//  Copyright (c) 2013 Jonas Budelmann. All rights reserved.
//

#import "SSXNSArray+MASAdditions.h"

#ifdef MAS_SHORTHAND

/**
 *	Shorthand array additions without the 'mas_' prefixes,
 *  only enabled if MAS_SHORTHAND is defined
 */
@interface NSArray (MASShorthandAdditions)

- (NSArray *)makeConstraints:(void(^)(SSXMASConstraintMaker *make))block;
- (NSArray *)updateConstraints:(void(^)(SSXMASConstraintMaker *make))block;
- (NSArray *)remakeConstraints:(void(^)(SSXMASConstraintMaker *make))block;

@end

@implementation NSArray (MASShorthandAdditions)

- (NSArray *)makeConstraints:(void(^)(SSXMASConstraintMaker *))block {
    return [self mas_makeConstraints:block];
}

- (NSArray *)updateConstraints:(void(^)(SSXMASConstraintMaker *))block {
    return [self mas_updateConstraints:block];
}

- (NSArray *)remakeConstraints:(void(^)(SSXMASConstraintMaker *))block {
    return [self mas_remakeConstraints:block];
}

@end

#endif
