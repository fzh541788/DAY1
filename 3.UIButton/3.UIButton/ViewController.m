//
//  ViewController.m
//  3.UIButton
//
//  Created by young_jerry on 2020/7/13.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(void) creatUIRectButton
{
//    创建一个btn对象，根据类型来创建btn;
//    圆角（普通文字按钮）类型btn:UIButtonTypeRoundedRect
//    通过类方法来创建buttonWithType:类名+方法名
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect] ;
    btn.frame = CGRectMake(100, 100, 100, 40);
//    设置按钮的文字内容
//    @parameter
//    p1:字符串类型，显示到按钮上的文字
//    p2:设置文字显示的状态类型 UIControlStateNormal，正常状态
    [btn setTitle:@"按钮01" forState:UIControlStateNormal];
//    p1:显示的文字
//    p2:显示文字的状态：UIControlStateHighlighted，按下状态
    [btn setTitle:@"按钮按下" forState:UIControlStateHighlighted];
//    灰色背景色
    btn.backgroundColor = [UIColor grayColor];
//    设置文字显示的颜色（如果只设置了一个状态，另一个状态没有设置，默认跟随那一个；
//    p1:颜色
//    p2:状态
    [btn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
//    设置按钮的风格颜色 titlecolor优先级高，并且其不分状态
    [btn setTintColor:[UIColor greenColor]];
//    字体大小 titleLabel:uilabel空间
    btn.titleLabel.font = [UIFont systemFontOfSize:24];
    [self.view addSubview:btn];
}
//创建一个可以显示图片的按钮
-(void)createImageBtn
{
//    创建一个自定义类型的btn   custom
    UIButton* btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btnImage.frame = CGRectMake(100, 200, 100, 100);
    
    UIImage* icon01 = [UIImage imageNamed:@"btn01.jpg"];
    
    UIImage* icon02 = [UIImage imageNamed:@"btn02.jpg"];
    
//    p1:显示的图片状态
//    p2:控件的状态
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];
    
    [self.view addSubview:btnImage];

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self creatUIRectButton];
    [self createImageBtn];
}


@end
