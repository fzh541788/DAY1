//
//  ViewController.m
//  6.UIView层级关系
//
//  Created by young_jerry on 2020/7/13.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView* view01 = [[UIView alloc]init];
    view01.frame = CGRectMake(100, 100, 150, 150);
    view01.backgroundColor = [UIColor blueColor];
    
    UIView* view02 = [[UIView alloc]init];
    view02.frame = CGRectMake(125, 125, 150, 150);
    view02.backgroundColor = [UIColor orangeColor];
    
    UIView* view03 = [[UIView alloc]init];
    view03.frame = CGRectMake(150, 150, 150, 150);
    view03.backgroundColor = [UIColor greenColor];
    
        [self.view addSubview:view01];
        [self.view addSubview:view02];
        [self.view addSubview:view03];

    // subviews管理所有的self.view的子视图的数组
    UIView* viewBack = self.view.subviews[0];
    
        if(viewBack == view01)
        {
            NSLog(@"相等！");
        }
    
//    将某一个视图调整到最前面显示
    [self.view bringSubviewToFront:view01];

//    清除掉 如果前面清除掉，那么这个subvies数组的a[0]也被清除掉，那么在调控就调控不出来了
    [view01 removeFromSuperview];
}
@end
