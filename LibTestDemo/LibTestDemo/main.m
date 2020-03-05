//
//  main.m
//  LibTestDemo
//
//  Created by Guo Longxiang, (Longxiang.Guo@partner.bmw.com) on 2020/3/5.
//  Copyright © 2020 Guo Longxiang, (Longxiang.Guo@partner.bmw.com). All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
