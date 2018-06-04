//
//  PhonenterfaceViewController.m
//  jqhnt
//
//  Created by asd on 2018/6/1.
//  Copyright © 2018年 asd. All rights reserved.
//

#import "PhonenterfaceViewController.h"

@interface PhonenterfaceViewController ()<UITextFieldDelegate>{
    UIButton *hqyamBtn;
    UIButton *xybBtn;
    UITextField *yzmTextFiled;
    int secondsCountDown; //倒计时总时长
    NSTimer *countDownTimer;
    UILabel *countnum;
    UIView *djsView;
}

@end

@implementation PhonenterfaceViewController

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
    titlelab.text=@"修改手机号";
    titlelab.textColor=[UIColor colorWithRed:255.0/255 green:255.0/255 blue:255.0/255 alpha:1];
    titlelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:17];
    [nav_bottomview addSubview:titlelab];

    UIView *bottomview=[[UIView alloc] initWithFrame:CGRectMake(0, navView.frame.size.height, self.view.frame.size.width, self.view.frame.size.height-navView.frame.size.height)];
    bottomview.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:bottomview];

    UIView *bottom_topview=[[UIView alloc] initWithFrame:CGRectMake(0, 10, bottomview.frame.size.width-20, 40)];
    bottom_topview.center=CGPointMake(bottomview.frame.size.width/2, 30);
  //   bottom_topview.backgroundColor=[UIColor yellowColor];
    [bottomview addSubview:bottom_topview];

    UILabel *lxrLab=[[UILabel alloc] initWithFrame:CGRectMake(10, 0, 100, 40)];
    lxrLab.text=@"联系人手机号：";
    lxrLab.font=[UIFont fontWithName:@"AmericanTypewriter" size:12];
    [bottom_topview addSubview:lxrLab];

    

    UILabel *lxrPhoneNumLab=[[UILabel alloc] initWithFrame:CGRectMake(100, 0, 100, 40)];
    lxrPhoneNumLab.text=@"181****1234";
    lxrPhoneNumLab.font=[UIFont fontWithName:@"AmericanTypewriter" size:12];
    [bottom_topview addSubview:lxrPhoneNumLab];

    hqyamBtn=[[UIButton alloc] initWithFrame:CGRectMake(bottom_topview.frame.size.width-90, 2.5, 90, 35)];
    hqyamBtn.backgroundColor=[UIColor colorWithRed:129.0/255 green:160.0/255 blue:194.0/255 alpha:1];;
     [hqyamBtn addTarget:self action:@selector(getVerifyingCode) forControlEvents:UIControlEventTouchDown];
    hqyamBtn.layer.cornerRadius=5;
    hqyamBtn.layer.masksToBounds=YES;
    [hqyamBtn setTitle:@"获取验证码" forState:UIControlStateNormal];
    hqyamBtn.titleLabel.font    = [UIFont systemFontOfSize: 12];
    [bottom_topview addSubview:hqyamBtn];


    UIView *bottom_toptwoview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, bottomview.frame.size.width-20, 40)];
    bottom_toptwoview.center=CGPointMake(bottomview.frame.size.width/2, bottom_topview.frame.origin.y+bottom_topview.frame.size.height+35);
  //  bottom_toptwoview.backgroundColor=[UIColor redColor];
    [bottomview addSubview:bottom_toptwoview];

    UILabel *yzmLab=[[UILabel alloc] initWithFrame:CGRectMake(10, 0, 100, 40)];
    yzmLab.text=@"请输入验证码：";
    yzmLab.font=[UIFont fontWithName:@"AmericanTypewriter" size:12];
    [bottom_toptwoview addSubview:yzmLab];

    UIView *yzmTextFiledView=[[UIView alloc] initWithFrame:CGRectMake(100, 2.5, bottom_topview.frame.size.width-100, 35)];
    yzmTextFiledView.layer.cornerRadius=3;
    yzmTextFiledView.layer.masksToBounds=YES;
    yzmTextFiledView.backgroundColor=[UIColor colorWithRed:240.0/255 green:240.0/255 blue:240.0/255 alpha:1];
    [bottom_toptwoview addSubview:yzmTextFiledView];

    

   yzmTextFiled=[[UITextField alloc] initWithFrame:CGRectMake(10, 0, bottom_topview.frame.size.width-50, 35)];
    yzmTextFiled.delegate=self;
    yzmTextFiled.placeholder=@"验证码";
     [yzmTextFiled setValue:[UIFont  fontWithName:@"AmericanTypewriter" size:12] forKeyPath:@"_placeholderLabel.font"];
    yzmTextFiled.backgroundColor=[UIColor colorWithRed:240.0/255 green:240.0/255 blue:240.0/255 alpha:1];
    yzmTextFiled.layer.cornerRadius=5;
    yzmTextFiled.layer.masksToBounds=YES;
    [yzmTextFiledView addSubview:yzmTextFiled];


    xybBtn=[[UIButton alloc] initWithFrame:CGRectMake(0, 2.5, bottomview.frame.size.width-40, 35)];
    [xybBtn addTarget:self action:@selector(getVerifyingCodeas) forControlEvents:UIControlEventTouchDown];
    xybBtn.center=CGPointMake(bottomview.frame.size.width/2, bottom_topview.frame.origin.y+90+25+20);
    xybBtn.backgroundColor=[UIColor colorWithRed:135.0/255 green:135.0/255 blue:135.0/255 alpha:1];;
    [xybBtn setTitle:@"下一步" forState:UIControlStateNormal];
    xybBtn.titleLabel.font    = [UIFont systemFontOfSize: 12];
    xybBtn.layer.cornerRadius=5;
    xybBtn.layer.masksToBounds=YES;
    [bottomview addSubview:xybBtn];


}

-(void)getVerifyingCode{

    NSLog(@"点击了获取验证码");
    // hqyamBtn.backgroundColor=[UIColor colorWithRed:135.0/255 green:135.0/255 blue:135.0/255 alpha:1];
    djsView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, hqyamBtn.frame.size.width, hqyamBtn.frame.size.height)];
    djsView.backgroundColor=[UIColor colorWithRed:135.0/255 green:135.0/255 blue:135.0/255 alpha:1];
    countnum=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, hqyamBtn.frame.size.width, hqyamBtn.frame.size.height)];
    countnum.text=@"重新获取(60)";
    countnum.textAlignment=NSTextAlignmentCenter;
    countnum.font    = [UIFont systemFontOfSize: 12];
    countnum.textColor=[UIColor whiteColor];
    [djsView addSubview:countnum];
    [hqyamBtn addSubview:djsView];

    //设置倒计时总时长
    secondsCountDown = 6;//60秒倒计时
    //开始倒计时
    countDownTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timeFireMethod) userInfo:nil repeats:YES]; //启动倒计时后会每秒钟调用一次方法 timeFireMethod
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    //变化后的字符串
    NSLog(@"%@",string);
    if ([string length]>0) {
        xybBtn.backgroundColor=[UIColor colorWithRed:129.0/255 green:160.0/255 blue:194.0/255 alpha:1];
    }else{
         xybBtn.backgroundColor=[UIColor colorWithRed:135.0/255 green:135.0/255 blue:135.0/255 alpha:1];
    }

    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{

}



-(void)timeFireMethod{
    //倒计时-1
    secondsCountDown--;
    //修改倒计时标签现实内容

     NSString *time=[NSString stringWithFormat:@"重新获取(%i)",secondsCountDown];
     countnum.text=time;
//    //当倒计时到0时，做需要的操作，比如验证码过期不能提交
    if(secondsCountDown==0){
        [countDownTimer invalidate];
        [djsView removeFromSuperview];
    }
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
