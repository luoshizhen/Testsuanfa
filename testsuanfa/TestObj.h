//
//  TestObj.h
//  testsuanfa
//
//  Created by pdmi on 2020/8/13.
//  Copyright © 2020 pdmi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestObj : NSObject
{
    NSString *sex;
}
@property(nonatomic,strong)NSString *name;

-(void)testObject;
@end

NS_ASSUME_NONNULL_END
