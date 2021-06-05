//
//  MyView.m
//  testsuanfa
//
//  Created by pdmi on 2020/8/13.
//  Copyright © 2020 pdmi. All rights reserved.
//

#import "MyView.h"
#import "SecondObj.h"
@implementation MyView
- (instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
       // [self performSelector:<#(nonnull SEL)#> withObject:<#(nullable id)#> afterDelay:<#(NSTimeInterval)#> inModes:<#(nonnull NSArray<NSRunLoopMode> *)#>]
//        UIButton *btn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
//        btn.backgroundColor=[UIColor redColor];
//        [self addSubview:btn];
//        [btn addTarget:self action:@selector(btnPressed) forControlEvents:UIControlEventTouchUpInside];
        self.backgroundColor=[UIColor redColor];
        SecondObj *secondView=[[SecondObj alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        secondView.backgroundColor=[UIColor greenColor];
        [self addSubview:secondView];
    }
    return self;
}
-(void)btnPressed{
    
    //_sex=@"male";
    self.sex=@"male";
   
    self.name=@"123";
    
}
-(void)setSex:(NSString *)sexx{
//    [self willChangeValueForKey:@"sex"];
    _sex=sexx;
}
-(NSString*)sex{
    return _sex;
}
+(BOOL)automaticallyNotifiesObserversForKey:(NSString *)key
{
    return [super automaticallyNotifiesObserversForKey:key];
}
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    return YES;
}
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    
    return [super hitTest:point withEvent:event];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
