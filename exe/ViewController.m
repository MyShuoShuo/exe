//
//  ViewController.m
//  exe
//
//  Created by 依萌匠心网络部 on 2018/4/9.
//  Copyright © 2018年 张洋硕. All rights reserved.
//

#import "ViewController.h"
#import "UIApplication+CurrentViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btton;
@property (nonatomic,weak) NSArray *array;
@property (nonatomic,strong) NSArray *array2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Do any additional setup after loading the view, typically from a nib.
    [self.btton removeFromSuperview];
    self.array = @[@"1",@"2"];//这里已经有警告，Assigning array literal to a weak property; object will be released after assignment
    self.array2 = @[@"1",@"2"];
    NSLog(@"viewDidLoad----%@",self.array);
    NSLog(@"viewDidLoad----%@",self.array2);
    NSLog(@"viewDidLoad----%@",self.btton);


    NSString *str = @"jack";
    NSString *str2 = [str copy];//不创建出新对象，指针与源对象相同
    
    NSMutableString *str3 = [str mutableCopy];//创建出新对象，指针与源对象不同
    NSLog(@"---%@---%@---%@",str,str2,str3);
//  [self printfObject];

    NSZone *one;



}
- (void)printfObject
{
    NSLog(@"printfObject----%@",self.array);
    NSLog(@"printfObject----%@",self.btton);
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touchesBegan----%@",self.array);
    NSLog(@"touchesBegan----%@",self.btton);
}

- (IBAction)btn:(id)sender {
}
- (void)viewWillAppear:(BOOL)animated{
//    [UIApplication sharedApplication].currentViewController = self;

}
- (void)viewDidDisappear:(BOOL)animated{
//    UIViewController *viewVc = [UIApplication sharedApplication].currentViewController;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
