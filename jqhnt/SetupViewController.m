//
//  SetupViewController.m
//  jqhnt
//
//  Created by asd on 2018/6/1.
//  Copyright © 2018年 asd. All rights reserved.
//

#import "SetupViewController.h"

@interface SetupViewController ()

@end

@implementation SetupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initView];
}

-(void)initView{
    UIView *navView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    navView.backgroundColor=[UIColor colorWithRed:129/255.0 green:160/255.0 blue:194/255.0 alpha:1];
    [self.view addSubview:navView];

    UIView *nav_topview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 20)];
    //nav_topview.backgroundColor=[UIColor redColor];
    [navView addSubview:nav_topview];
    UIView *nav_bottomview=[[UIView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 44)];
    //  nav_bottomview.backgroundColor=[UIColor redColor];
    [navView addSubview:nav_bottomview];


    UIImageView *backimgview=[[UIImageView alloc] initWithFrame:CGRectMake(10, 15, 10, 15)];
    backimgview.image=[UIImage imageNamed:@"icon_navigation_return"];
    [nav_bottomview addSubview:backimgview];


    UILabel *titlelab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    titlelab.center=CGPointMake(nav_bottomview.frame.size.width/2, nav_bottomview.frame.size.height/2);
    titlelab.textAlignment=NSTextAlignmentCenter;
    titlelab.text=@"设置";
    titlelab.textColor=[UIColor colorWithRed:255.0/255 green:255.0/255 blue:255.0/255 alpha:1];
    titlelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:16];
    [nav_bottomview addSubview:titlelab];

    UIView *bottomview=[[UIView alloc] initWithFrame:CGRectMake(0, navView.frame.size.height, self.view.frame.size.width, self.view.frame.size.height-navView.frame.size.height)];
    bottomview.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:bottomview];

    UIView * modifyPasswordView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, bottomview.frame.size.width, 40)];

   UIView *lineBottom = [[UIView alloc] initWithFrame:CGRectMake(0, modifyPasswordView.frame.size.height-0.5, modifyPasswordView.frame.size.width, 0.5)];
    lineBottom.backgroundColor = [UIColor lightGrayColor];
    [modifyPasswordView addSubview:lineBottom];

    UIView * versionNumberView=[[UIView alloc] initWithFrame:CGRectMake(0, 40, bottomview.frame.size.width, 40)];

    UIView *lineBottom2 = [[UIView alloc] initWithFrame:CGRectMake(0, versionNumberView.frame.size.height-0.5, versionNumberView.frame.size.width, 0.5)];
    lineBottom2.backgroundColor = [UIColor lightGrayColor];
    [versionNumberView addSubview:lineBottom2];

    [bottomview addSubview:modifyPasswordView];
    [bottomview addSubview:versionNumberView];

    UILabel *modifyPasswordLab=[[UILabel alloc] initWithFrame:CGRectMake(10, 0, 80, 40)];
    modifyPasswordLab.text=@"修改密码";
    modifyPasswordLab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
    [modifyPasswordView addSubview:modifyPasswordLab];

    UILabel *versionNumberLab=[[UILabel alloc] initWithFrame:CGRectMake(10, 0, 80, 40)];
    versionNumberLab.text=@"版本号";
    versionNumberLab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
    [versionNumberView addSubview:versionNumberLab];


    UIImageView *rightImg=[[UIImageView alloc]
                           initWithFrame:CGRectMake(modifyPasswordView.frame.size.width-20, 15, 10, 15)];
    rightImg.backgroundColor=[UIColor redColor];
    rightImg.image=[UIImage imageNamed:@"icon_navigation_return"];
    [modifyPasswordView addSubview:rightImg];

    UILabel *versionNumberzLab=[[UILabel alloc] initWithFrame:CGRectMake(versionNumberView.frame.size.width-60, 0, 80, 40)];
    versionNumberzLab.text=@"v1.0.0.0";
    versionNumberzLab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
    [versionNumberView addSubview:versionNumberzLab];






    UIButton *ttdlBtn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, bottomview.frame.size.width-40, 40)];
    ttdlBtn.center=CGPointMake(bottomview.frame.size.width/2, versionNumberView.frame.origin.y+40+40+20);
    ttdlBtn.backgroundColor=[UIColor colorWithRed:251.0/255 green:31.0/255 blue:44.0/255 alpha:1];;
    [ttdlBtn setTitle:@"退出登录" forState:UIControlStateNormal];
    ttdlBtn.titleLabel.font    = [UIFont systemFontOfSize: 13];
    ttdlBtn.layer.cornerRadius=3;
    ttdlBtn.layer.masksToBounds=YES;
    [bottomview addSubview:ttdlBtn];

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
