//
//  StaticFrameworkCA.m
//  StaticFrameworkCA
//
//  Created by Guo Longxiang, (Longxiang.Guo@partner.bmw.com) on 2020/3/5.
//  Copyright © 2020 Guo Longxiang, (Longxiang.Guo@partner.bmw.com). All rights reserved.
//

#import "StaticFrameworkCA.h"
#import "StaticFrameworkA.h"
@implementation StaticFrameworkCA

- (instancetype)init {
    self = [super init];
    NSAssert(self != nil, @"StaticFrameworkBA call super error");
    return self;
}

- (void)show {
    StaticFrameworkA* a = [[StaticFrameworkA alloc]init];
    NSLog(@"enter StaticFrameworkCA");
    [a show];
}

@end
