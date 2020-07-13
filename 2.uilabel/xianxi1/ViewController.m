//
//  ViewController.m
//  xianxi1
//
//  Created by young_jerry on 2020/7/13.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void) createui
{
//    定义并且创建UILabel对象
//    UIlable是可以显示在屏幕上，并且可以显示文字的一种ui视图
    UILabel* label = [[UILabel alloc]init];
//    显示文字的赋值，字符串对象
    label.text = @"hello,world!";
//   设定label的现实位置
    label.frame = CGRectMake(100, 100, 160, 40);
//  字体背景颜色
    label.backgroundColor = [UIColor clearColor];
//  全部背景颜色
//    self.view.backgroundColor = [UIColor grayColor];
//    将label显示到屏幕上
    [self.view addSubview:label];
//    设置label文字的大小，使用系统默认字体，大小为12；
    label.font = [UIFont systemFontOfSize:25];
//    设置文字颜色
    label.textColor = [UIColor blackColor];
//    label的高级属性
//    阴影颜色
    label.shadowColor = [UIColor grayColor];
//    设置阴影的偏移位置
    label.shadowOffset = CGSizeMake(10, 10);
//    设置text文字的对齐模式，默认为靠左侧对齐
    label.textAlignment = NSTextAlignmentCenter;
//    设置label文字显示的行数，默认值为：1，只用一行显示(当文字显示行数超过默认行数，则还是默认，0也是默认，所以不知道多少行就填0，自动计算)；
    label.numberOfLines = 3;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self createui];
}
@end
