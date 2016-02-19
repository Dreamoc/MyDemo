//
//  ViewController.m
//  tabbar
//
//  Created by linger on 16/2/19.
//  Copyright © 2016年 linger. All rights reserved.
//

#import "ViewController.h"
#import "baseViewController.h"
#import "pusViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"123");
    NSLog(@"321");
    NSLog(@"4");
    [self createView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)createView
{
    pusViewController *vccccc1 = [[pusViewController alloc]init];
    vccccc1.view.backgroundColor = [UIColor whiteColor];
    UINavigationController *vc1 = [[UINavigationController alloc]initWithRootViewController:vccccc1];
    
    
    UIViewController *vc2  =[[UIViewController alloc]init];
    vc2.view.backgroundColor = [UIColor greenColor];

    UIViewController *vc3  =[[UIViewController alloc]init];
    vc3.view.backgroundColor = [UIColor orangeColor];

    UIViewController *vc4  =[[UIViewController alloc]init];
    vc4.view.backgroundColor = [UIColor lightGrayColor];


    baseViewController *tbv = [[baseViewController alloc]init];
    tbv.viewControllers = @[vc1,vc2,vc3,vc4];
    
    vc1.tabBarItem.image = [UIImage imageNamed:@"TabBar5_Bar"];
    vc1.title =@"你好";
    
    vc2.tabBarItem.image = [UIImage imageNamed:@"TabBar5_Bar"];
    vc2.tabBarItem.imageInsets = UIEdgeInsetsMake(10, 0, -10, 0);
    
    vc3.tabBarItem.image = [UIImage imageNamed:@"TabBar5_Bar"];
    vc3.tabBarItem.imageInsets = UIEdgeInsetsMake(10, 0, -10, 0);
    vc4.tabBarItem.image = [UIImage imageNamed:@"TabBar5_Bar"];
    vc4.tabBarItem.imageInsets = UIEdgeInsetsMake(10, 0, -10, 0);
//    tbv.tabBar.selectionIndicatorImage=[UIImage imageNamed:@"tab-background"];
//    tbv.tabBar.backgroundImage = [UIImage imageNamed:@"pwd_btnconfirm_act"];
    tbv.tabBar.tintColor=[UIColor redColor];
    tbv.tabBar.barTintColor = [UIColor blackColor];

    [self addChildViewController:tbv];

    [self.view addSubview:tbv.view];

}
@end
