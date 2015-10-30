//
//  RecomViewController.m
//  Qyou
//
//  Created by 中软mini029 on 15/10/30.
//  Copyright (c) 2015年 中软mini029. All rights reserved.
//

#import "RecomViewController.h"

@interface RecomViewController ()

@end

@implementation RecomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    [self initUI];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
-(void)initUI{
    UIButton* lookBut=[[UIButton alloc] initWithFrame:CGRectMake( 20, 100, 100, 100)];
    lookBut.backgroundColor=[UIColor whiteColor];
    [lookBut addTarget:self action:@selector(lookButClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:lookBut];
}
-(void)lookButClicked:(id)sender{
    LookJinViewController* lookviewController=[[LookJinViewController alloc] init];
    [self.navigationController pushViewController:lookviewController animated:YES];
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
