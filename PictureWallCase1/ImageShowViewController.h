//
//  ImageShowViewController.h
//  PictureWallCase1
//
//  Created by Civet on 2019/5/23.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageShowViewController : UIViewController
//图像视图的tag
@property (nonatomic,assign) NSUInteger imageTag;
//图像对象
@property (nonatomic,retain) UIImage *image;
//图像视图
@property (nonatomic,retain) UIImageView *imageView;


@end
