//
//  BlockEntrance.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/10.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "BlockEntrance.h"
#import "TestObject.h"
#import <objc/runtime.h>

@interface BlockEntrance ()

@end

@implementation BlockEntrance

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"block");

    
//    Class someClass = NSClassFromString(@"TestObject");
//    id obj = [[someClass alloc] init];
    
    TestObject *test = [TestObject new];
    test.string = @"sssss";
    test.integer = 123;
    test.number = @(321);
    test.array = @[@"a", @"r", @"r", @"y"];
    
    NSArray *properties = [self getAllProperties:test];
    [properties enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%@",properties[idx]);
    }];
}

- (NSArray *)getAllProperties:(id)obj {
    u_int count;
    objc_property_t *properties = class_copyPropertyList([obj class], &count);
    NSMutableArray *propertiesArray = [NSMutableArray arrayWithCapacity:count];
    for (int i = 0; i<count; i++)
    {
        const char* propertyName = property_getName(properties[i]);
        [propertiesArray addObject:[NSString stringWithUTF8String: propertyName]];
    }
    free(properties);
    return propertiesArray;
}

@end
