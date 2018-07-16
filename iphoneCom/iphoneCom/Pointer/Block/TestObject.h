//
//  TestObject.h
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/11.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestProtocol.h"

@interface TestObject : NSObject<TestProtocol2>

@property (nonatomic, copy) NSString *string;

@property (nonatomic, assign) NSInteger integer;

@property (nonatomic, strong) NSNumber *number;

@property (nonatomic, strong) NSArray *array;

@end
