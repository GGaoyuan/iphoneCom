//
//  AlgHashTable.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/8/13.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgHashTable.h"

@implementation AlgHashTable

#pragma mark - ---------- Public ----------

- (void)setKey:(NSString *)key object:(id)value {
    
}

#pragma mark - ---------- Private ----------
//做一个散列表过程就两步，1，将key散列化，做成数组的索引，2，处理索引的碰撞
//通常，索引用hash值得到，hash值的算法是算法专家去搞，也有很多种hash值的算法，如果对性能有要求，要谨慎使用散列算法，有些算法对性能影响非常大


@end
