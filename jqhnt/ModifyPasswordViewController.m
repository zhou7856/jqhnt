//
//  ModifyPasswordViewController.m
//  jqhnt
//
//  Created by asd on 2018/6/1.
//  Copyright © 2018年 asd. All rights reserved.
//

#import "ModifyPasswordViewController.h"

@interface ModifyPasswordViewController (){
      UIView *hdview;
}

@end

@implementation ModifyPasswordViewController

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


    UIImageView *backimgview=[[UIImageView alloc] initWithFrame:CGRectMake(20, 15, 10, 15)];
    backimgview.image=[UIImage imageNamed:@"icon_navigation_return"];
    [nav_bottomview addSubview:backimgview];


    UILabel *titlelab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    titlelab.center=CGPointMake(nav_bottomview.frame.size.width/2, nav_bottomview.frame.size.height/2);
    titlelab.textAlignment=NSTextAlignmentCenter;
    titlelab.text=@"修改密码";
    titlelab.textColor=[UIColor colorWithRed:255.0/255 green:255.0/255 blue:255.0/255 alpha:1];
    titlelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:16];
    [nav_bottomview addSubview:titlelab];

    UIView *bottomview=[[UIView alloc] initWithFrame:CGRectMake(0, navView.frame.size.height, self.view.frame.size.width, self.view.frame.size.height-navView.frame.size.height)];
    bottomview.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:bottomview];

    UIView *bottom_topview=[[UIView alloc] initWithFrame:CGRectMake(0, 10, bottomview.frame.size.width-20, 40)];
    bottom_topview.center=CGPointMake(bottomview.frame.size.width/2, 30);
   // bottom_topview.backgroundColor=[UIColor yellowColor];
    [bottomview addSubview:bottom_topview];


    UIView *bottom_toptwoview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, bottomview.frame.size.width-20, 40)];
    bottom_toptwoview.center=CGPointMake(bottomview.frame.size.width/2, bottom_topview.frame.origin.y+bottom_topview.frame.size.height+30);
   //   bottom_toptwoview.backgroundColor=[UIColor redColor];
    [bottomview addSubview:bottom_toptwoview];

    UIView *bottom_topthreeview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, bottomview.frame.size.width-20, 40)];
    bottom_topthreeview.center=CGPointMake(bottomview.frame.size.width/2, bottom_toptwoview.frame.origin.y+bottom_toptwoview.frame.size.height+30);
   // bottom_topthreeview.backgroundColor=[UIColor redColor];
    [bottomview addSubview:bottom_topthreeview];

    UIButton *qrBtn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, bottomview.frame.size.width-40, 40)];
    qrBtn.center=CGPointMake(bottomview.frame.size.width/2, bottom_topthreeview.frame.origin.y+bottom_topthreeview.frame.size.height+25+20);
    qrBtn.backgroundColor=[UIColor colorWithRed:129.0/255 green:160.0/255 blue:194.0/255 alpha:1];;
    [qrBtn setTitle:@"确认修改" forState:UIControlStateNormal];
    [qrBtn addTarget:self action:@selector(onclickBtn) forControlEvents:UIControlEventTouchDown];
    qrBtn.titleLabel.font = [UIFont systemFontOfSize: 13];
    qrBtn.layer.cornerRadius=3;
    qrBtn.layer.masksToBounds=YES;
    [bottomview addSubview:qrBtn];


    UILabel *oldPwdlLab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 80, 40)];
    oldPwdlLab.text=@"原密码：";
    oldPwdlLab.textColor=[UIColor colorWithRed:56.0/255.0 green:56.0/255.0 blue:56.0/255.0 alpha:1];
    oldPwdlLab.font=[UIFont fontWithName:@"AmericanTypewriter" size:12];
    [bottom_topview addSubview:oldPwdlLab];

    UIView *oldPwdTextFiledview=[[UITextField alloc] initWithFrame:CGRectMake(50, 2.5, bottom_topview.frame.size.width-50, 35)];
    oldPwdTextFiledview.layer.cornerRadius=5;
    oldPwdTextFiledview.layer.masksToBounds=YES;
    oldPwdTextFiledview.backgroundColor=[UIColor colorWithRed:240.0/255 green:240.0/255 blue:240.0/255 alpha:1];
    [bottom_topview addSubview:oldPwdTextFiledview];

    UITextField *oldPwdTextFiled=[[UITextField alloc] initWithFrame:CGRectMake(10, 0, bottom_topview.frame.size.width-80, 35)];
    oldPwdTextFiled.placeholder=@"请输入原密码";
    [oldPwdTextFiled setValue:[UIFont  fontWithName:@"AmericanTypewriter" size:12] forKeyPath:@"_placeholderLabel.font"];
    oldPwdTextFiled.backgroundColor=[UIColor colorWithRed:240.0/255 green:240.0/255 blue:240.0/255 alpha:1];
    oldPwdTextFiled.layer.cornerRadius=5;
    oldPwdTextFiled.layer.masksToBounds=YES;
    [oldPwdTextFiledview addSubview:oldPwdTextFiled];



    //
    UILabel *newPwdlLab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 80, 40)];
    newPwdlLab.text=@"新密码：";
    newPwdlLab.textColor=[UIColor colorWithRed:56.0/255.0 green:56.0/255.0 blue:56.0/255.0 alpha:1];
    newPwdlLab.font=[UIFont fontWithName:@"AmericanTypewriter" size:12];
    [bottom_toptwoview addSubview:newPwdlLab];

    UIView *newPwdTextFiledview=[[UITextField alloc] initWithFrame:CGRectMake(50, 2.5, bottom_topview.frame.size.width-50, 35)];
    newPwdTextFiledview.layer.cornerRadius=5;
    newPwdTextFiledview.layer.masksToBounds=YES;
    newPwdTextFiledview.backgroundColor=[UIColor colorWithRed:240.0/255 green:240.0/255 blue:240.0/255 alpha:1];
    [bottom_toptwoview addSubview:newPwdTextFiledview];

    UITextField *newPwdTextFiled=[[UITextField alloc] initWithFrame:CGRectMake(10, 0, bottom_topview.frame.size.width-80, 35)];
    newPwdTextFiled.placeholder=@"请输入新密码";
    [newPwdTextFiled setValue:[UIFont  fontWithName:@"AmericanTypewriter" size:12] forKeyPath:@"_placeholderLabel.font"];
    newPwdTextFiled.backgroundColor=[UIColor colorWithRed:240.0/255 green:240.0/255 blue:240.0/255 alpha:1];
    newPwdTextFiled.layer.cornerRadius=5;
    newPwdTextFiled.layer.masksToBounds=YES;
    [newPwdTextFiledview addSubview:newPwdTextFiled];



    //

    UILabel *newTwoPwdlLab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 80, 35)];
    newTwoPwdlLab.text=@"确认密码：";
    newTwoPwdlLab.textColor=[UIColor colorWithRed:56.0/255.0 green:56.0/255.0 blue:56.0/255.0 alpha:1];
    newTwoPwdlLab.font=[UIFont fontWithName:@"AmericanTypewriter" size:12];
    [bottom_topthreeview addSubview:newTwoPwdlLab];

    UIView *newTwoPwdTextFiledview=[[UITextField alloc] initWithFrame:CGRectMake(50, 2.5, bottom_topview.frame.size.width-50, 35)];
    newTwoPwdTextFiledview.layer.cornerRadius=5;
    newTwoPwdTextFiledview.layer.masksToBounds=YES;
    newTwoPwdTextFiledview.backgroundColor=[UIColor colorWithRed:240.0/255 green:240.0/255 blue:240.0/255 alpha:1];
    [bottom_topthreeview addSubview:newTwoPwdTextFiledview];

    UITextField *newtwoPwdTextFiled=[[UITextField alloc] initWithFrame:CGRectMake(10, 0, bottom_topview.frame.size.width-80, 35)];
    newtwoPwdTextFiled.placeholder=@"请再次输入新密码";
    [newtwoPwdTextFiled setValue:[UIFont  fontWithName:@"AmericanTypewriter" size:12] forKeyPath:@"_placeholderLabel.font"];
    newtwoPwdTextFiled.backgroundColor=[UIColor colorWithRed:240.0/255 green:240.0/255 blue:240.0/255 alpha:1];
    newtwoPwdTextFiled.layer.cornerRadius=5;
    newtwoPwdTextFiled.layer.masksToBounds=YES;
    [newTwoPwdTextFiledview addSubview:newtwoPwdTextFiled];

}

-(void)onclickBtn{


    //帮透明黑底view
    hdview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    hdview.backgroundColor=[UIColor colorWithRed:102.0/255.0 green:102.0/255.0 blue:102/255.0 alpha:0.6];
    [self.view addSubview:hdview];

    //弹出框
    UIView *tcview=[[UIView alloc] initWithFrame:CGRectMake(0, 0,self.view.frame.size.width-60, 200)];
    tcview.backgroundColor=[UIColor whiteColor];
    tcview.center=CGPointMake(hdview.frame.size.width/2, hdview.frame.size.height/2);
    [hdview addSubview:tcview];

    UIView *tc_topview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, tcview.frame.size.width, 30)];
    tc_topview.backgroundColor=[UIColor colorWithRed:129/255.0 green:160/255.0 blue:194/255.0 alpha:1];

    [tcview addSubview:tc_topview];

    UILabel *tdtitlelab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    tdtitlelab.text=@"修改成功";
    tdtitlelab.textAlignment=NSTextAlignmentCenter;
    tdtitlelab.center=CGPointMake(tc_topview.frame.size.width/2, tc_topview.frame.size.height/2);
    tdtitlelab.textColor=[UIColor whiteColor];
    tdtitlelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:17];
    [tc_topview addSubview:tdtitlelab];

    UILabel *centlab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, tcview.frame.size.width, tcview.frame.size.width)];
    centlab.text=@"登录信息已过期请重新登录";
    centlab.textAlignment=NSTextAlignmentCenter;
    centlab.font=[UIFont systemFontOfSize:13];
    centlab.center=CGPointMake(tcview.frame.size.width/2, tcview.frame.size.height/2);
    [tcview addSubview:centlab];



    UIButton *qrbtn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, tcview.frame.size.width-20, 30)];
    qrbtn.backgroundColor=[UIColor colorWithRed:129/255.0 green:160/255.0 blue:194/255.0 alpha:1];
    qrbtn.center=CGPointMake(tcview.frame.size.width/2, tcview.frame.size.height-30);
    [qrbtn addTarget:self action:@selector(onclickBtn) forControlEvents:UIControlEventTouchDown];
    [qrbtn setTitle:@"确认" forState:UIControlStateNormal];
    qrbtn.titleLabel.font=[UIFont systemFontOfSize:17];
    qrbtn.layer.cornerRadius=5;
    qrbtn.layer.masksToBounds=YES;
    [tcview addSubview:qrbtn];

}

-(void)onclickQrBtn{
    [hdview removeFromSuperview];
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
