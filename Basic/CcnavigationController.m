//
//  CcnavigationController.m
//  Qyou
//
//  Created by 中软mini029 on 15/10/30.
//  Copyright (c) 2015年 中软mini029. All rights reserved.
//

#import "CcnavigationController.h"

@interface CcnavigationController ()

@end

@implementation CcnavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
-(void)initNavigation:(UIViewController*)controller
{   if(self.viewControllers.count>0)
{
    controller.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"user.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStyleDone target:self action:@selector(leftButClicked:)];
    
        controller.hidesBottomBarWhenPushed=YES;
        controller.navigationItem.hidesBackButton=YES;
    
    
}
}
-(void)leftButClicked:(id)sender
{
    if (sender&&[sender isKindOfClass:[UIBarButtonItem class]]) {
        [self popViewControllerAnimated:YES];
    }
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    [self initNavigation:viewController];
    [super pushViewController:viewController animated:animated];
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
