//
//  ViewController.m
//  StaticContainer
//
//  Created by zhucuirong on 15/11/10.
//  Copyright © 2015年 SINOFAKE SINEP. All rights reserved.
//

#import "ViewController.h"
#import "StaticLibrary.h"
#import "Func1.h"
#import "Func2.h"
#import "UILabel+TestColor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Func1 *obj1 = [[Func1 alloc] init];
    [obj1 func1Log];
    
    Func2 *obj2 = [[Func2 alloc] init];
    [obj2 func2Log];
    
    UILabel *obj3 = [[UILabel alloc]init];
    [obj3 testMethodColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
