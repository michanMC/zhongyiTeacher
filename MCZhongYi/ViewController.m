//
//  ViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/5.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "ViewController.h"
#import "HomeViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HomeViewController * root = [[HomeViewController alloc]init];
    
    MCNavViewController * nv = [[MCNavViewController alloc]initWithRootViewController:root];
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    appDelegate.window.rootViewController = nv;

    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
