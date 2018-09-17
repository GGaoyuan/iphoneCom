//
//  Stack.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/8/15.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "Stack.h"

@interface Stack()

@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation Stack

+ (Stack *)stack {
    Stack *stack = [Stack new];
    stack.array = [NSMutableArray array];
    return stack;
}

+ (Stack *)stackWithArray:(NSArray *)array {
    Stack *stack = [Stack new];
    stack.array = [NSMutableArray array];
    for (NSInteger i = array.count; i > 0; i--) {
        [stack.array addObject:array[i-1]];
    }
    return stack;
}

- (void)push:(id)obj {
    [self.array addObject:obj];
}

- (void)pop {
    if (self.array.count != 0) {
        [self.array removeLastObject];
    }
}

- (void)popFrom:(id)obj {
    if ([self.array containsObject:obj]) {
        NSInteger index = [self.array indexOfObject:obj];
        NSRange range = NSMakeRange(index, self.count - index);
        [self.array removeObjectsInRange:range];
    }
}

- (id)top {
    return self.array.lastObject;
}

- (id)bottom {
    return self.array.firstObject;
}

- (void)printLog {
    NSLog(@"栈中的元素（从顶到底）");
    for (NSInteger i = self.array.count; i > 0; i--) {
        NSLog(@"%@",self.array[i-1]);
    }
}

- (NSInteger)count {
    return self.array.count;
}

@end
