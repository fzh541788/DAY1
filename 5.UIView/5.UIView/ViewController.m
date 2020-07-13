//
//  ViewController.m
//  5.UIView
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
//   创建一个UIView对象
//   UIView是ios中的视图对象
//    显示在屏幕上的所有的对象的基础类
//    所有显示在屏幕上的对象一定都继承于UIView
//    屏幕上能看到的对象都是UIView的子类
//    UIView是一个矩形对象，有背景颜色，可以显示，有层级关系
    UIView* view = [[UIView alloc]init];
   //设置UIView的位置
    view.frame = CGRectMake(100, 100, 100, 200) ;
    
    view.backgroundColor = [UIColor blueColor];
//    将新建的视图添加到父亲视图（就正常的背景）上
//    1.将新建的视图显示到屏幕上
//    2.将视图作为父亲视图的子视图管理起来
    [self.view addSubview:view];
    
//    是否隐藏视图对象 yes不显示，no显示，默认值为no
    view.hidden = YES;
    
//    设置透明度 1:不透明 0:透明 0.5:半透明
    view.alpha = 0.5;
    
//    设置是否不透明
    view.opaque = NO;
    
//    将自己从父亲视图删除掉，不会显示在屏幕上
    [view removeFromSuperview];
}


@end
