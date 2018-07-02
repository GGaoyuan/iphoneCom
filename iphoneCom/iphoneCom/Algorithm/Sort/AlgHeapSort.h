//
//  AlgHeapSort.h
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/29.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "BaseSort.h"
#import "AlgorithmTool.h"

/**
 堆排序分为两个步骤：
 1：构造堆
 2：移位排序
 
 堆排序最大的优势是他的复杂度不会因为排序元素内容而受影响，而是很稳定的Nlogn，因此缺点也是对应的就是缓存命中率低下
 */
@interface AlgHeapSort : BaseSort

+ (void)sort:(NSMutableArray *)array;

@end
