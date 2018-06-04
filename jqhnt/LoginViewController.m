//
//  LoginViewController.m
//  jqhnt
//
//  Created by asd on 2018/5/30.
//  Copyright © 2018年 asd. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController (){
   
}

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initView];
}

-(void)initView{

    UIImageView *viewbackimg=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    viewbackimg.image=[UIImage imageNamed:@"images_login_background"];
    [self.view addSubview:viewbackimg];

    UIView *navview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    navview.backgroundColor=[UIColor colorWithRed:50.0/255 green:50.0/255 blue:50.0/255 alpha:0.5];
    [self.view addSubview:navview];

    UIView *nav_topview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 20)];
    //nav_topview.backgroundColor=[UIColor redColor];
    [navview addSubview:nav_topview];
    UIView *nav_bottomview=[[UIView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 44)];
    //  nav_bottomview.backgroundColor=[UIColor redColor];
    [navview addSubview:nav_bottomview];



    UILabel *titlelab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    titlelab.center=CGPointMake(nav_bottomview.frame.size.width/2, nav_bottomview.frame.size.height/2);
    titlelab.textAlignment=NSTextAlignmentCenter;
    titlelab.text=@"登录";
    titlelab.textColor=[UIColor colorWithRed:255.0/255 green:255.0/255 blue:255.0/255 alpha:1];
    titlelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:17];
    [nav_bottomview addSubview:titlelab];

    UIView *logoview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width/3*2, 200)];
    //logoview.backgroundColor=[UIColor redColor];
    logoview.center=CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/4+40);
    [self.view addSubview:logoview];

    UIImageView *logoimg=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 180, 100)];
    logoimg.backgroundColor=[UIColor blueColor];
    logoimg.center=CGPointMake(logoview.frame.size.width/2, logoview.frame.size.height/2-40);
    [logoview addSubview:logoimg];

    UILabel *titletwolab=[[UILabel alloc] initWithFrame:CGRectMake(0, logoview.frame.size.height-70, logoview.frame.size.width, 30)];
    //titletwolab.backgroundColor=[UIColor yellowColor];
    titletwolab.text=@"加气混凝土砌砖块管理平台";
    titletwolab.textAlignment=NSTextAlignmentCenter;
   titletwolab.textColor=[UIColor colorWithRed:255.0/255 green:255.0/255 blue:255.0/255 alpha:1];
    titletwolab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [logoview addSubview:titletwolab];

    UILabel *englishlab=[[UILabel alloc] initWithFrame:CGRectMake(0, logoview.frame.size.height-40, logoview.frame.size.width, 20)];
   // englishlab.backgroundColor=[UIColor brownColor];
    englishlab.text=@"Aerated Concrete Block Management Platform";
    englishlab.textAlignment=NSTextAlignmentCenter;
     englishlab.textColor=[UIColor colorWithRed:255.0/255 green:255.0/255 blue:255.0/255 alpha:1];
    englishlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:9];
    [logoview addSubview:englishlab];





    UIView *bottomview=[[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height/2, self.view.frame.size.width, self.view.frame.size.height/2)];
   // bottomview.backgroundColor=[UIColor blueColor];
    [self.view addSubview:bottomview];




    UIView *phoneview =[[UIView alloc] initWithFrame:CGRectMake(0, 0, bottomview.frame.size.width-40, 50)];
   // phoneview.backgroundColor=[UIColor redColor];
    phoneview.center=CGPointMake(bottomview.frame.size.width/2, phoneview.frame.size.height/2);
    [bottomview addSubview:phoneview];



    UILabel *phonelab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 80, 40)];
    phonelab.text=@"手机号";
    phonelab.textColor=[UIColor colorWithRed:255.0/255 green:255.0/255 blue:255.0/255 alpha:1];
    phonelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [phoneview addSubview:phonelab];

    UIView *phonetextview=[[UIView alloc] initWithFrame:CGRectMake(60, 0, phoneview.frame.size.width-60, 40)];
    phonetextview.backgroundColor=[UIColor colorWithRed:50.0/255 green:50.0/255 blue:50.0/255 alpha:0.5];
    phonetextview.layer.cornerRadius=5;
    phonetextview.layer.masksToBounds=YES;
    [phoneview addSubview:phonetextview];

    UITextField *phonetextfiled=[[UITextField alloc] initWithFrame:CGRectMake(10, 0, phonetextview.frame.size.width, phonetextview.frame.size.height)];
    phonetextfiled.placeholder=@"请输入手机号码";
    [phonetextfiled setValue:[UIFont  fontWithName:@"AmericanTypewriter" size:13] forKeyPath:@"_placeholderLabel.font"];
    [phonetextfiled setValue:[UIColor colorWithRed:200.0/255 green:200.0/255 blue:200.0/255 alpha:1] forKeyPath:@"_placeholderLabel.textColor"];
    [phonetextview addSubview:phonetextfiled];

    //密码


    UIView *passwordview =[[UIView alloc] initWithFrame:CGRectMake(0, 0, bottomview.frame.size.width-40, 40)];
     //passwordview.backgroundColor=[UIColor redColor];
    passwordview.center=CGPointMake(bottomview.frame.size.width/2, passwordview.frame.size.height/2+60);
    [bottomview addSubview:passwordview];



    UILabel *passwordlab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 80, 40)];
    passwordlab.text=@"密  码";
    passwordlab.textColor=[UIColor colorWithRed:255.0/255 green:255.0/255 blue:255.0/255 alpha:1];
    passwordlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [passwordview addSubview:passwordlab];

    UIView *passwordtextview=[[UIView alloc] initWithFrame:CGRectMake(60, 0, passwordview.frame.size.width-60, 40)];
    passwordtextview.backgroundColor=[UIColor colorWithRed:50.0/255 green:50.0/255 blue:50.0/255 alpha:0.5];
    passwordtextview.layer.cornerRadius=3;
    passwordtextview.layer.masksToBounds=YES;
    [passwordview addSubview:passwordtextview];

    UITextField *passwordextfiled=[[UITextField alloc] initWithFrame:CGRectMake(10, 0, passwordview.frame.size.width, passwordview.frame.size.height)];
    passwordextfiled.placeholder=@"请输入密码";
     [passwordextfiled setValue:[UIFont  fontWithName:@"AmericanTypewriter" size:13] forKeyPath:@"_placeholderLabel.font"];
    [passwordextfiled setValue:[UIColor colorWithRed:200.0/255 green:200.0/255 blue:200.0/255 alpha:1] forKeyPath:@"_placeholderLabel.textColor"];
    [passwordtextview addSubview:passwordextfiled];

    UILabel *forgetlab=[[UILabel alloc] initWithFrame:CGRectMake(bottomview.frame.size.width-130, passwordview.frame.origin.x+100, 110, 25)];
 //   forgetlab.backgroundColor=[UIColor redColor];
    forgetlab.text=@"忘记密码? 去找回";
    forgetlab.textColor=[UIColor colorWithRed:255.0/255 green:255.0/255 blue:255.0/255 alpha:1];
    forgetlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
    [bottomview addSubview:forgetlab];

    UIButton *forgetbtn=[[UIButton alloc] initWithFrame:CGRectMake(bottomview.frame.size.width-100, passwordview.frame.origin.x+100, 80, 25)];

   // forgetbtn.backgroundColor=[UIColor redColor];
    [bottomview addSubview:forgetbtn];


    UIButton *loginbtn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, bottomview.frame.size.width-40, 35)];
    loginbtn.center=CGPointMake(bottomview.frame.size.width/2, bottomview.frame.size.height/2);
    loginbtn.backgroundColor=[UIColor colorWithRed:129.0/255 green:160.0/255 blue:194.0/255 alpha:1];;
    [loginbtn setTitle:@"登  录" forState:UIControlStateNormal];
    loginbtn.layer.cornerRadius=3;
    loginbtn.layer.masksToBounds=YES;
    [bottomview addSubview:loginbtn];




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
