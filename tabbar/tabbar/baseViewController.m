//
//  baseViewController.m
//  tabbar
//
//  Created by linger on 16/2/19.
//  Copyright © 2016年 linger. All rights reserved.
//

#import "baseViewController.h"

@interface baseViewController ()<UITabBarControllerDelegate>
{
    UIImageView *_imageView1;
}
@end

@implementation baseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
 
    _imageView1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"navBar.png"]];
    _imageView1.backgroundColor =[UIColor greenColor];
    _imageView1.frame = CGRectMake(0, 0, 0, 49);
    [self.tabBar addSubview:_imageView1];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    CGFloat w = [UIScreen mainScreen].bounds.size.width;
    NSInteger a = tabBarController.selectedIndex;
    NSLog(@"a = %ld",a);
    _imageView1.frame = CGRectMake(a* w/4, 0, w/4, 49);
    
}
- (void)setViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers
{
    [super setViewControllers:viewControllers];
    _imageView1.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width/viewControllers.count, 49);

}

@end
