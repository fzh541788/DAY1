//
//  ViewController.m
//  UIButton事件处理
//
//  Created by young_jerry on 2020/7/13.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(void)creatBtn
{
//    创建圆角按钮
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 100, 80, 40);

    [btn setTitle:@"按钮" forState:UIControlStateNormal];
//    向按钮添加事件函数
//    p1:"谁"来实现事件函数，实现的对象就是“谁”（一般都是当前对象进行实现，就是(pressbtn);
//    p2:@selector(pressbtn):函数对象，当按钮满足p3事件类型时，调用函数
//    p3:UIControlEvent:事件处理函数
//UIControlEventTouchUpInside:当手机离开屏幕时并且手指位置在按钮范围内出发事件函数
//    UIControlEventTouchDown:指当我们的手指触碰到屏幕上时
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    //触碰时调用事件函数
    [btn addTarget:self action:@selector(touchDown) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btn];
    UIButton* btn02 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
     
     btn02.frame = CGRectMake(100, 200, 80, 40);

     [btn02 setTitle:@"按钮02" forState:UIControlStateNormal];
//    可以多个按钮使用同一个事件函数来处理不同按钮的事件
    [btn02 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn02];
     
//    设置按钮的标记值
    btn.tag = 101;
    btn02.tag = 102;
}
//先注释掉这个 最正常的 看一下同一事件如何处理不同按钮
//-(void)pressBtn02
//{
//    NSLog(@"按钮2被触发！");
//}
//按钮参数味调用此函数按钮对象本身(目的是与其他按钮进行区分)
-(void)pressBtn:(UIButton*)btn
{
    if(btn.tag == 101)
    {
        NSLog(@"按钮1被按下！");
        
    }
    if(btn.tag == 102)
    {
        NSLog(@"按钮2被按下！");
}
}
-(void)touchDown
{
    NSLog(@"按钮被触碰！");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self creatBtn];
}
@end
