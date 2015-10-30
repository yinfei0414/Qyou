//
//  CctabBarController.m
//  Qyou
//
//  Created by 中软mini029 on 15/10/30.
//  Copyright (c) 2015年 中软mini029. All rights reserved.
//

#import "CctabBarController.h"

@interface CctabBarController ()

@end

@implementation CctabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initChildViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
-(void)initChildViewController{
    RecomViewController* recomConreoller=[[RecomViewController alloc] init];
    AgePlaceViewController* ageController=[[AgePlaceViewController alloc] init];
    CommunitionViewController* comController=[[CommunitionViewController alloc] init];
    MineViewController * mineController=[[MineViewController alloc] init];
    [self Addchild:recomConreoller imageName:@"home.png" slect:@"home-cur@2x.png" titleName:@"推荐"];
    [self Addchild:ageController imageName:@"search.png" slect:@"search-cur@2x.png" titleName:@"目的地"];
    [self Addchild:comController imageName:@"user@2x.png" slect:@"user-cur.png" titleName:@"社区"];
    [self Addchild:mineController imageName:@"user@2x.png" slect:@"user-cur.png" titleName:@"我的"];
}
-(void)Addchild:(UIViewController*)vc imageName:(NSString*)imagename slect:(NSString*)slectname titleName:(NSString*)title;
{
    CcnavigationController*navi1=[[CcnavigationController alloc] initWithRootViewController:vc];
    vc.tabBarItem.image=[[UIImage imageNamed:imagename]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.title=title;
    vc.tabBarItem.selectedImage =[[UIImage imageNamed:slectname]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self addChildViewController:navi1];
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
