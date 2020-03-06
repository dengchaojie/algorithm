//
//  SomeClass.m
//  有序矩阵中第K小的元素
//
//  Created by chao jie deng on 2020/3/6.
//  Copyright © 2020 chao jie deng. All rights reserved.
//

#import "SomeClass.h"

@implementation SomeClass

+ (void)doSomething:(NSArray<NSArray *> *)matrix {
    NSMutableArray *mut = NSMutableArray.new;
    for (NSArray *arr in matrix) {
        [mut addObjectsFromArray:arr];
    }
    
    
}


@end
