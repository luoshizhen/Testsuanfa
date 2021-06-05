//
//  Producer.h
//  testsuanfa
//
//  Created by pdmi on 2021/3/9.
//  Copyright © 2021 pdmi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Producer : NSObject
@property (nonatomic, assign) BOOL shouldProduce;

@property (nonatomic, strong) NSString *itemName;

@property (nonatomic, strong) NSCondition *condition;

@property (nonatomic, strong) NSMutableArray *collector;

- (instancetype)initWithConditon:(NSCondition *)condition collector:(NSMutableArray *)collector;
- (void)produce;

@end

NS_ASSUME_NONNULL_END
