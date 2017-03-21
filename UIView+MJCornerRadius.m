//
//  UIView+MJCornerRadius.m
//  MJCornerRadius
//
//  Created by none on 17/3/21.
//  Copyright © 2017年 mj. All rights reserved.
//

#import "UIView+MJCornerRadius.h"

@implementation UIView (MJCornerRadius)

-(void)mj_setCornerRadius:(CGFloat)radius borderColor:(UIColor *)borderColor AndBorderWidth:(CGFloat)borderWidth{
    
    CGSize viewSize = self.frame.size;
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = CGRectMake(0, 0, viewSize.width, viewSize.height);
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.frame = CGRectMake(0, 0, viewSize.width, viewSize.height);
    shapeLayer.fillColor = [UIColor clearColor].CGColor;
    shapeLayer.strokeColor = borderColor.CGColor;
    shapeLayer.lineWidth = borderWidth;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, viewSize.width, viewSize.height) cornerRadius:radius];
    shapeLayer.path = path.CGPath;
    maskLayer.path = path.CGPath;
    
    [self.layer insertSublayer:shapeLayer atIndex:0];
    [self.layer setMask:maskLayer];
}
-(void)mj_setCornerRadius:(CGFloat)radius{
    [self mj_setCornerRadius:radius borderColor:nil AndBorderWidth:0];
}

@end
