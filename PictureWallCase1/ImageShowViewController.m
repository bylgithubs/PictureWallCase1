//
//  ImageShowViewController.m
//  PictureWallCase1
//
//  Created by Civet on 2019/5/23.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "ImageShowViewController.h"

@interface ImageShowViewController ()

@end

@implementation ImageShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"图片展示";
    _imageView = [[UIImageView alloc] init];
    _imageView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    //方法二取图片
    //_imageView.image = _image;
    //方法三取图片
    _imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%lu.jpg",_imageTag-100]];
    //一个视图对象只能有一个根视图
    //当我们把视图添加到新的父视图上时，原来的父视图将会删掉该视图
    [self.view addSubview:_imageView];
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
