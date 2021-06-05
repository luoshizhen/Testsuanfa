//
//  SecondObj.m
//  testsuanfa
//
//  Created by pdmi on 2021/3/17.
//  Copyright © 2021 pdmi. All rights reserved.
//

#import "SecondObj.h"

@implementation SecondObj
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    return YES;
}
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    
    return nil;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
