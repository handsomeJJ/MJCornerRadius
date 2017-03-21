//
//  UIView+MJCornerRadius.h
//  MJCornerRadius
//
//  Created by none on 17/3/21.
//  Copyright © 2017年 mj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MJCornerRadius)

-(void)mj_setCornerRadius:(CGFloat)radius;

-(void)mj_setCornerRadius:(CGFloat)radius borderColor:(UIColor *)borderColor AndBorderWidth:(CGFloat)borderWidth;

@end
