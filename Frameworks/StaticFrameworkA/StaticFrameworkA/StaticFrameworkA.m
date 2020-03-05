//
//  StaticFrameworkA.m
//  StaticFrameworkA
//
//  Created by Guo Longxiang, (Longxiang.Guo@partner.bmw.com) on 2020/3/5.
//  Copyright © 2020 Guo Longxiang, (Longxiang.Guo@partner.bmw.com). All rights reserved.
//

#import "StaticFrameworkA.h"

@implementation StaticFrameworkA

-(instancetype)init {
    self = [super init];
    NSAssert(self!=nil, @"StaticFrameworkA call super init failed");
    return self;
}

- (void)show {
    NSLog(@"this is StaticFrameworkA");
    return;
}

@end
