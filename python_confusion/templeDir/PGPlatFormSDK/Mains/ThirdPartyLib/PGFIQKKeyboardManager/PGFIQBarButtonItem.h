//
// PGFIQBarButtonItem.h
// https://github.com/hackiftekhar/PGFIQKeyboardManager
// Copyright (c) 2013-16 Iftekhar Qurashi.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.


#import <UIKit/UIBarButtonItem.h>

@class NSInvocation;

/**
 PGFIQBarButtonItem used for PGFIQToolbar.
 */
@interface PGFIQBarButtonItem : UIBarButtonItem

/**
 Boolean to know if it's a system item or custom item
 */
@property (nonatomic, readonly) BOOL isSystemItem;

/**
 Additional target & action to do get callBack action. Note that setting custom target & selector doesn't affect native functionality, this is just an additional target to get a callBack.
 
 @param target Target object.
 @param action Target Selector.
 */
-(void)setTarget:(nullable id)target action:(nullable SEL)action;

/**
 Customized Invocation to be called when button is pressed. invocation is internally created using setTarget:action: method.
 */
@property (nullable, strong, nonatomic) NSInvocation *invocation;

@end