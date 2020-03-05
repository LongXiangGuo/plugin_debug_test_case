//
//  ViewController.m
//  LibTestDemo
//
//  Created by Guo Longxiang, (Longxiang.Guo@partner.bmw.com) on 2020/3/5.
//  Copyright © 2020 Guo Longxiang, (Longxiang.Guo@partner.bmw.com). All rights reserved.
//

#import "ViewController.h"
#import "StaticFrameworkA.h"
#import "StaticFrameworkBA.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    StaticFrameworkA* a = [[StaticFrameworkA alloc]init];
    [a show];
    StaticFrameworkBA* ba  = [[StaticFrameworkBA alloc]init];
      [ba show];
}

@end
