//
//  StaticCB.m
//  StaticFrameworkCB
//
//  Created by Guo Longxiang, (Longxiang.Guo@partner.bmw.com) on 2020/3/6.
//  Copyright © 2020 Guo Longxiang, (Longxiang.Guo@partner.bmw.com). All rights reserved.
//

#import "StaticCB.h"
#import <StaticFrameworkB/StaticFrameworkB.h>
@implementation StaticCB

- (instancetype)init {
    self = [super init];
    NSAssert(self != nil, @"FrameworkB call super error");
    return self;
}

- (void)show {
    FrameworkB* b = [[FrameworkB alloc]init];
    NSLog(@"this is in static framework cb");
    [b show];
}

@end
