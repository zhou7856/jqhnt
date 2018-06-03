//
//  TabBarViewController.m
//  jqhnt
//
//  Created by asd on 2018/5/30.
//  Copyright © 2018年 asd. All rights reserved.
//

#import "TabBarViewController.h"
#import "ContractViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabBar.translucent=NO;

    //b.创建子控制器
    UIViewController *c1=[[UIViewController alloc]init];

    c1.tabBarItem.image=[UIImage imageNamed:@"icon_scan"];

    c1.tabBarItem.tag=1;
    // c1.tabBarItem.badgeValue=@"123";
    c1.tabBarItem.selectedImage =[UIImage imageNamed:@"icon_scan_select"];

    ContractViewController *c2=[[ContractViewController alloc]init];
    // c2.tabBarItem.title=@"联系人";
    c2.tabBarItem.image=[UIImage imageNamed:@"icon_contract"];
    c2.tabBarItem.tag=2;
    c2.tabBarItem.selectedImage =[UIImage imageNamed:@"icon_contract_select"];

    UIViewController *c3=[[UIViewController alloc]init];
    // c3.tabBarItem.title=@"动态";
    c3.tabBarItem.image=[UIImage imageNamed:@"icon_my"];
    c3.tabBarItem.tag=3;
    c3.tabBarItem.selectedImage =[UIImage imageNamed:@"icon_my_select"];


    //c.2第二种方式
    self.viewControllers=@[c1,c2,c3];
    self.tabBar.tintColor = [UIColor colorWithRed:129/255.0 green:160/255.0 blue:194/255.0 alpha:1];
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
