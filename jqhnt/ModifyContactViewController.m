//
//  ModifyContactViewController.m
//  jqhnt
//
//  Created by asd on 2018/6/1.
//  Copyright © 2018年 asd. All rights reserved.
//

#import "ModifyContactViewController.h"

@interface ModifyContactViewController ()

@end

@implementation ModifyContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initView];
}

-(void)initView{
    UIView *navview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    navview.backgroundColor=[UIColor colorWithRed:129/255.0 green:160/255.0 blue:194/255.0 alpha:1];
    [self.view addSubview:navview];

    UIView *nav_topview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 20)];
    //nav_topview.backgroundColor=[UIColor redColor];
    [navview addSubview:nav_topview];
    UIView *nav_bottomview=[[UIView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 44)];
    //  nav_bottomview.backgroundColor=[UIColor redColor];
    [navview addSubview:nav_bottomview];


    UIImageView *backimgview=[[UIImageView alloc] initWithFrame:CGRectMake(10, 15, 10, 15)];
    backimgview.image=[UIImage imageNamed:@"icon_navigation_return"];
    [nav_bottomview addSubview:backimgview];


    UILabel *titlelab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    titlelab.center=CGPointMake(nav_bottomview.frame.size.width/2, nav_bottomview.frame.size.height/2);
    titlelab.textAlignment=NSTextAlignmentCenter;
    titlelab.text=@"修改联系人";
    titlelab.textColor=[UIColor colorWithRed:255.0/255 green:255.0/255 blue:255.0/255 alpha:1];
    titlelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:17];
    [nav_bottomview addSubview:titlelab];

    UIView *bottomview=[[UIView alloc] initWithFrame:CGRectMake(0, 60, self.view.frame.size.width, self.view.frame.size.height-64)];
    bottomview.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:bottomview];

    UIView *bottom_topview=[[UIView alloc] initWithFrame:CGRectMake(0, 10, bottomview.frame.size.width-20, 40)];
    bottom_topview.center=CGPointMake(bottomview.frame.size.width/2, 30);
    //   bottom_topview.backgroundColor=[UIColor yellowColor];
    [bottomview addSubview:bottom_topview];

    UILabel *lxrLab=[[UILabel alloc] initWithFrame:CGRectMake(10, 0, 60, 40)];
    lxrLab.text=@"联系人：";
    lxrLab.textColor=[UIColor colorWithRed:62.0/255 green:62.0/255 blue:62.0/255 alpha:1];
    //lxrLab.backgroundColor=[UIColor redColor];
    lxrLab.font=[UIFont fontWithName:@"AmericanTypewriter" size:12];
    [bottom_topview addSubview:lxrLab];

     UIView *lxrTextFiledView=[[UIView alloc] initWithFrame:CGRectMake(60, 2.5, bottom_topview.frame.size.width-60, 35)];
    lxrTextFiledView.layer.cornerRadius=3;
    lxrTextFiledView.layer.masksToBounds=YES;
     lxrTextFiledView.backgroundColor=[UIColor colorWithRed:240.0/255 green:240.0/255 blue:240.0/255 alpha:1];
    [bottom_topview addSubview:lxrTextFiledView];

    UITextField *lxrTextFiled=[[UITextField alloc] initWithFrame:CGRectMake(10, 0, bottom_topview.frame.size.width-100, 35)];

    lxrTextFiled.placeholder=@"姓名";
    [lxrTextFiled setValue:[UIFont  fontWithName:@"AmericanTypewriter" size:12] forKeyPath:@"_placeholderLabel.font"];
    lxrTextFiled.backgroundColor=[UIColor colorWithRed:240.0/255 green:240.0/255 blue:240.0/255 alpha:1];
    lxrTextFiled.layer.cornerRadius=3;
    lxrTextFiled.layer.masksToBounds=YES;
    [lxrTextFiledView addSubview:lxrTextFiled];

    UIButton *qrBtn=[[UIButton alloc] initWithFrame:CGRectMake(0, 2.5, bottomview.frame.size.width-40, 35)];
    [qrBtn addTarget:self action:@selector(getVerifyingCodeas) forControlEvents:UIControlEventTouchDown];
    qrBtn.center=CGPointMake(bottomview.frame.size.width/2, bottom_topview.frame.origin.y+85);
    qrBtn.backgroundColor=[UIColor colorWithRed:129/255.0 green:160/255.0 blue:194/255.0 alpha:1];
    [qrBtn setTitle:@"确认" forState:UIControlStateNormal];
    qrBtn.titleLabel.font    = [UIFont systemFontOfSize: 12];
    qrBtn.layer.cornerRadius=3;
    qrBtn.layer.masksToBounds=YES;
    [bottomview addSubview:qrBtn];
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
