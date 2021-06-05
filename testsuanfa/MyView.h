//
//  MyView.h
//  testsuanfa
//
//  Created by pdmi on 2020/8/13.
//  Copyright © 2020 pdmi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyView : UIView
{
    NSString *_sex;
}
@property(nonatomic,strong)NSString *name;
-(void)setSex:(NSString *)sexx;
-(NSString*)sex;
@end

NS_ASSUME_NONNULL_END
