//
//  UIApplication+CurrentViewController.m
//  exe
//
//  Created by 依萌匠心网络部 on 2018/4/9.
//  Copyright © 2018年 张洋硕. All rights reserved.
//

#import "UIApplication+CurrentViewController.h"
#import <objc/runtime.h>
@implementation UIApplication (CurrentViewController)
///set
- (void)setCurrentViewController:(UIViewController *)currentViewController{
    objc_setAssociatedObject(self, @selector(currentViewController), currentViewController, OBJC_ASSOCIATION_ASSIGN);
}
///get
- (UIViewController *)currentViewController{
    return objc_getAssociatedObject(self, _cmd);
}
@end
