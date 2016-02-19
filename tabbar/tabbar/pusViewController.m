//
//  pusViewController.m
//  tabbar
//
//  Created by linger on 16/2/19.
//  Copyright © 2016年 linger. All rights reserved.
//

#import "pusViewController.h"

@interface pusViewController ()

@end

@implementation pusViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton * push  = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    push.backgroundColor = [UIColor redColor];
    [self.view addSubview:push];
    [push addTarget:self action:@selector(on) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view.
}
-(void)on
{
    pusViewController *pvc = [[pusViewController alloc]init];
    pvc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pvc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
