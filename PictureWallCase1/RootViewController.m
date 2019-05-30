//
//  RootViewController.m
//  PictureWallCase1
//
//  Created by Civet on 2019/5/23.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "RootViewController.h"
#import "ImageShowViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"照片墙";
    //改变导航栏颜色
    self.navigationController.navigationBar.barTintColor = [UIColor yellowColor];
//    //隐藏导航栏
//    self.navigationController.navigationBarHidden = YES;
    //使导航栏不透明
    self.navigationController.navigationBar.translucent = NO;
    UIScrollView *sv = [[UIScrollView alloc] init];
    //设置位置大小
    sv.frame = CGRectMake(5, 5, [UIScreen mainScreen].bounds.size.width - 10, [UIScreen mainScreen].bounds.size.height - 10);
    //设置画布大小
    sv.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width - 10, ([UIScreen mainScreen].bounds.size.height)*1.5 -10);
    //设置滚动条是否显示
    sv.showsVerticalScrollIndicator = NO;
    
    //打开交互事件
    sv.userInteractionEnabled = YES;
    self.view.backgroundColor = [UIColor whiteColor];
    for (int i = 0; i < 15; i++){
        NSString *imageName = [NSString stringWithFormat:@"%d.jpg",i + 1];
        UIImage *image = [UIImage imageNamed:imageName];
        UIImageView *imageV = [[UIImageView alloc] initWithImage:image];
        imageV.frame = CGRectMake(10 + (i%3)*([UIScreen mainScreen].bounds.size.width - 10)/3, 10 + (i / 3)*130*1.5, ([UIScreen mainScreen].bounds.size.width - 10)/3, 130*1.5);
        [sv addSubview:imageV];
        //开启交互模式
        imageV.userInteractionEnabled = YES;
        //创建点击手势
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pressTap:)];
        //单次点击
        tap.numberOfTapsRequired = 1;
        //单个手指
        tap.numberOfTouchesRequired = 1;
        
        [imageV addGestureRecognizer:tap];
        //图像对象的tag值
        imageV.tag = 101 + i;
    }
    [self.view addSubview:sv];
    
}

//方法三：使用tag值传图片
- (void)pressTap:(UITapGestureRecognizer *)tap{
    UIImageView *imageV = (UIImageView *)tap.view;
    ImageShowViewController *imageShowVC = [[ImageShowViewController alloc] init];
    imageShowVC.imageTag = imageV.tag;
    [self.navigationController pushViewController:imageShowVC animated:YES];
}

////方法二：使用image传图片
//- (void)pressTap:(UITapGestureRecognizer *)tap{
//    UIImageView *imageV = (UIImageView *)tap.view;
//    ImageShowViewController *imageShowVC = [[ImageShowViewController alloc] init];
//    imageShowVC.image = imageV.image;
//    [self.navigationController pushViewController:imageShowVC animated:YES];
//}

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
