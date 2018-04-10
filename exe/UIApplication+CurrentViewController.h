//
//  UIApplication+CurrentViewController.h
//  exe
//
//  Created by 依萌匠心网络部 on 2018/4/9.
//  Copyright © 2018年 张洋硕. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (CurrentViewController)
///用于获取当前 UIViewController
@property (nonatomic, weak) UIViewController *currentViewController;
@end
