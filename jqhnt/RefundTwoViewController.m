//
//  RefundTwoViewController.m
//  jqhnt
//
//  Created by asd on 2018/5/31.
//  Copyright © 2018年 asd. All rights reserved.
//

#import "RefundTwoViewController.h"

@interface RefundTwoViewController ()<UITextViewDelegate>{
    UILabel *placeHolderLabel;
    //帮透明黑底view
    UIView *hdview;
    UIView *scview;
    UIView *twoview;
    
}

@end

@implementation RefundTwoViewController

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
    UIView *nav_bottomview=[[UIView alloc] initWithFrame:CGRectMake(0, 14, self.view.frame.size.width, 44)];
    //  nav_bottomview.backgroundColor=[UIColor redColor];
    [navview addSubview:nav_bottomview];


    UIImageView *backimgview=[[UIImageView alloc] initWithFrame:CGRectMake(20, 15, 13, 20)];
    backimgview.image=[UIImage imageNamed:@"icon_navigation_return"];
    [nav_bottomview addSubview:backimgview];


    UILabel *titlelab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    titlelab.center=CGPointMake(nav_bottomview.frame.size.width/2, nav_bottomview.frame.size.height/2+5);
    titlelab.textAlignment=NSTextAlignmentCenter;
    titlelab.text=@"退单";
    titlelab.textColor=[UIColor colorWithRed:255.0/255 green:255.0/255 blue:255.0/255 alpha:1];
    titlelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:20];
    [nav_bottomview addSubview:titlelab];

    UIView *bottomview=[[UIView alloc] initWithFrame:CGRectMake(0, navview.frame.size.height, self.view.frame.size.width, self.view.frame.size.height-navview.frame.size.height)];
    bottomview.backgroundColor=[UIColor colorWithRed:240.0/255 green:240.0/255 blue:240.0/255 alpha:1];
    [self.view addSubview:bottomview];

    UIView *xqview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 190)];

    xqview.backgroundColor=[UIColor whiteColor];
    [bottomview addSubview:xqview];


    UIView *oneview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 150)];
    // _oneview.backgroundColor=[UIColor redColor];
    [xqview addSubview:oneview];

    twoview=[[UIView alloc] initWithFrame:CGRectMake(0,oneview.frame.origin.y+oneview.frame.size.height, [UIScreen mainScreen].bounds.size.width, 40)];
    //_twoview.backgroundColor=[UIColor yellowColor];
    [xqview addSubview:twoview];

    UIView *lineTop1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, twoview.frame.size.width, 1)];
    lineTop1.backgroundColor = [UIColor lightGrayColor];
    [twoview addSubview:lineTop1];

    UILabel *contractnumberlab=[[UILabel alloc] initWithFrame:CGRectMake(10, 0, 75, 37.5)];
    //_contractnumberlab.backgroundColor=[UIColor redColor];
    //_contractnumberlab.textAlignment=NSTextAlignmentCenter;
    contractnumberlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    contractnumberlab.text=@"订单编号：";
    [oneview addSubview:contractnumberlab];

    UILabel *contractnamelab=[[UILabel alloc] initWithFrame:CGRectMake(10, 30, 60, 37.5)];
    contractnamelab.textColor=[UIColor colorWithRed:155.0/255.0 green:183.0/255.0 blue:214.0/255.0 alpha:1];
    contractnamelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    contractnamelab.text=@"品  名：";
    [oneview addSubview:contractnamelab];

    UILabel *contracttotallab=[[UILabel alloc] initWithFrame:CGRectMake(10, 60, 75, 37.5)];
    //_contractnumberlab.backgroundColor=[UIColor redColor];
    //_contractnumberlab.textAlignment=NSTextAlignmentCenter;
    contracttotallab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    contracttotallab.text=@"订单总量：";
    [oneview addSubview:contracttotallab];

    UILabel *contractmoneylab=[[UILabel alloc] initWithFrame:CGRectMake(10, 90, 60, 37.5)];
    //_contractnumberlab.backgroundColor=[UIColor redColor];
    //_contractnumberlab.textAlignment=NSTextAlignmentCenter;
    contractmoneylab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    contractmoneylab.text=@"总  额：";
    [oneview addSubview:contractmoneylab];

    UILabel *xdtimelab=[[UILabel alloc] initWithFrame:CGRectMake(10, 120, 75, 37.5)];
    //_contractnumberlab.backgroundColor=[UIColor redColor];
    //_contractnumberlab.textAlignment=NSTextAlignmentCenter;
    xdtimelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    xdtimelab.text=@"下单时间：";
    [oneview addSubview:xdtimelab];

    UILabel *contractnumberlab1=[[UILabel alloc] initWithFrame:CGRectMake(contractnumberlab.frame.origin.x+contractnumberlab.frame.size.width+10, 0, 150, 37.5)];
    //_contractnumberlab.backgroundColor=[UIColor redColor];
    //_contractnumberlab.textAlignment=NSTextAlignmentCenter;
    contractnumberlab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    //_contractnumberlab1.text=@"订单编号：";
    [oneview addSubview:contractnumberlab1];


    UILabel *contractnamelab1=[[UILabel alloc] initWithFrame:CGRectMake(contractnamelab.frame.origin.x+contractnamelab.frame.size.width+10, 30, 120, 37.5)];
    contractnamelab1.textColor=[UIColor colorWithRed:155.0/255.0 green:183.0/255.0 blue:214.0/255.0 alpha:1];
    contractnamelab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    //  _contractnamelab1.text=@"品  名：";
    [oneview addSubview:contractnamelab1];

    UILabel *contracttotallab1=[[UILabel alloc] initWithFrame:CGRectMake(contracttotallab.frame.origin.x+contracttotallab.frame.size.width+10, 60, 120, 37.5)];
    //_contractnumberlab.backgroundColor=[UIColor redColor];
    //_contractnumberlab.textAlignment=NSTextAlignmentCenter;
    contracttotallab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    // _contracttotallab1.text=@"订单总量：";
    [oneview addSubview:contracttotallab1];

    UILabel *contractmoneylab1=[[UILabel alloc] initWithFrame:CGRectMake(contractmoneylab.frame.origin.x+contractmoneylab.frame.size.width+10, 90, 120, 37.5)];
    //_contractnumberlab.backgroundColor=[UIColor redColor];
    //_contractnumberlab.textAlignment=NSTextAlignmentCenter;
    contractmoneylab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    //  _contractmoneylab1.text=@"总  额：";
    [oneview addSubview:contractmoneylab1];

    UILabel *xdtimelab1=[[UILabel alloc] initWithFrame:CGRectMake(xdtimelab.frame.origin.x+xdtimelab.frame.size.width+10, 120, 200, 37.5)];
    //_contractnumberlab.backgroundColor=[UIColor redColor];
    //_contractnumberlab.textAlignment=NSTextAlignmentCenter;
    xdtimelab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    //_xdtimelab1.text=@"下单时间：";
    [oneview addSubview:xdtimelab1];
    contractnumberlab1.text=@"BL2018031601A01";
    contractnamelab1.text=@"砂加气，灰加气";
    contracttotallab1.text=@"10000m³";
    contractmoneylab1.text=@"30000元";
    xdtimelab1.text=@"2018.01.01   13：00";

    scview=[[UIView alloc] initWithFrame:CGRectMake(twoview.frame.size.width-60, 10, 50, 20)];
    scview.backgroundColor=[UIColor whiteColor];

    UIView *lineTop_scview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, scview.frame.size.width, 0.5)];
    lineTop_scview.backgroundColor = [UIColor colorWithRed:252.0/255.0 green:116.0/255.0 blue:120/255.0 alpha:1];
    [scview addSubview:lineTop_scview];

    UIView *lineleft_scview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0.5, scview.frame.size.height)];
    lineleft_scview.backgroundColor = [UIColor colorWithRed:252.0/255.0 green:116.0/255.0 blue:120/255.0 alpha:1];
    [scview addSubview:lineleft_scview];


    UIView *linebottom_scview = [[UIView alloc] initWithFrame:CGRectMake(0, scview.frame.size.height-0.5, scview.frame.size.width, 0.5)];
    linebottom_scview.backgroundColor = [UIColor colorWithRed:252.0/255.0 green:116.0/255.0 blue:120/255.0 alpha:1];
    [scview addSubview:linebottom_scview];

    UIView *lineright_scview = [[UIView alloc] initWithFrame:CGRectMake(scview.frame.size.width-0.5, 0, 0.5, scview.frame.size.height)];
    lineright_scview.backgroundColor =[UIColor colorWithRed:252.0/255.0 green:116.0/255.0 blue:120/255.0 alpha:1];
    [scview addSubview:lineright_scview];

    UILabel *sclab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, scview.frame.size.width, scview.frame.size.height)];
    sclab.text=@"退单";
    sclab.textColor=[UIColor colorWithRed:252.0/255.0 green:116.0/255.0 blue:120/255.0 alpha:1];
    sclab.textAlignment=NSTextAlignmentCenter;
    sclab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [scview addSubview:sclab];
    [twoview addSubview:scview];

    UIButton *tdqbtn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, 20)];
     [tdqbtn addTarget:self action:@selector(onclickBtn:) forControlEvents:UIControlEventTouchDown];
    [scview addSubview:tdqbtn];


    
}

-(void)onclickBtn:(UIButton *)button{

    NSLog(@"btntag:%ld",button.tag);
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
    tdtitlelab.text=@"退单原因";
    tdtitlelab.textAlignment=NSTextAlignmentCenter;
    tdtitlelab.center=CGPointMake(tc_topview.frame.size.width/2, tc_topview.frame.size.height/2);
    tdtitlelab.textColor=[UIColor whiteColor];
    tdtitlelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:18];
    [tc_topview addSubview:tdtitlelab];



    UIView *nryyview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, tcview.frame.size.width-20, 85)];
    nryyview.backgroundColor=[UIColor colorWithRed:240.0/255 green:240.0/255 blue:240.0/255 alpha:1];
    nryyview.center=CGPointMake(tcview.frame.size.width/2, tcview.frame.size.height/2);

    nryyview.layer.cornerRadius=5;
    nryyview.layer.masksToBounds=YES;
    [tcview addSubview:nryyview];

    UITextView *nrtextview=[[UITextView alloc] initWithFrame:CGRectMake(0, 0, tcview.frame.size.width-20, 85)];
    nrtextview.backgroundColor=[UIColor colorWithRed:240.0/255 green:240.0/255 blue:240.0/255 alpha:1];

    //nrtextview.center=CGPointMake(tcview.frame.size.width/2, tcview.frame.size.height/2);
    [nryyview addSubview:nrtextview];

    nrtextview.delegate=self;

    placeHolderLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 5,150, 20)];
    placeHolderLabel.textAlignment = NSTextAlignmentLeft;
    placeHolderLabel.font = [UIFont systemFontOfSize:17];
    placeHolderLabel.text = @"请输入退单原因";
    placeHolderLabel.textColor=[UIColor colorWithRed:165.0/255 green:165.0/255 blue:165.0/255 alpha:1];
    [nrtextview addSubview:placeHolderLabel];

    UIButton *qrbtn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, tcview.frame.size.width-20, 30)];
    qrbtn.tag=button.tag;
    qrbtn.backgroundColor=[UIColor colorWithRed:129/255.0 green:160/255.0 blue:194/255.0 alpha:1];
    qrbtn.center=CGPointMake(tcview.frame.size.width/2, tcview.frame.size.height-30);
    [qrbtn addTarget:self action:@selector(onclickQrBtn:) forControlEvents:UIControlEventTouchDown];
    [qrbtn setTitle:@"确认" forState:UIControlStateNormal];
    qrbtn.layer.cornerRadius=5;
    qrbtn.layer.masksToBounds=YES;
    [tcview addSubview:qrbtn];

}

- (void)textViewDidChange:(UITextView *)textView
{
    if (textView.text.length == 0 )
    {
        placeHolderLabel.text = @"请输入退单原因";
    }
    else
    {
        placeHolderLabel.text = @"";
    }
}
-(void)onclickQrBtn:(UIButton *)button{

   // hdview.hidden=YES;
    //帮透明黑底view
    [hdview removeFromSuperview];

    [scview removeFromSuperview];

    UIView *scview2=[[UIView alloc] initWithFrame:CGRectMake(twoview.frame.size.width-160, 10, 140, 20)];
    scview2.backgroundColor=[UIColor whiteColor];

    UIView *lineTop_scview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, scview2.frame.size.width, 0.5)];
    lineTop_scview.backgroundColor = [UIColor colorWithRed:254.0/255.0 green:208.0/255.0 blue:93.0/255.0 alpha:1];
    [scview2 addSubview:lineTop_scview];

    UIView *lineleft_scview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0.5, scview2.frame.size.height)];
    lineleft_scview.backgroundColor = [UIColor colorWithRed:254.0/255.0 green:208.0/255.0 blue:93.0/255.0 alpha:1];
    [scview2 addSubview:lineleft_scview];


    UIView *linebottom_scview = [[UIView alloc] initWithFrame:CGRectMake(0, scview2.frame.size.height-0.5, scview2.frame.size.width, 0.5)];
    linebottom_scview.backgroundColor = [UIColor colorWithRed:254.0/255.0 green:208.0/255.0 blue:93.0/255.0 alpha:1];
    [scview2 addSubview:linebottom_scview];

    UIView *lineright_scview = [[UIView alloc] initWithFrame:CGRectMake(scview2.frame.size.width-0.5, 0, 0.5, scview2.frame.size.height)];
    lineright_scview.backgroundColor =[UIColor colorWithRed:254.0/255.0 green:208.0/255.0 blue:93.0/255.0 alpha:1];
    [scview2 addSubview:lineright_scview];

    UILabel *sclab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, scview2.frame.size.width, scview2.frame.size.height)];
    sclab.text=@"提交成功，等待审核";
    sclab.textColor=[UIColor colorWithRed:254.0/255.0 green:208.0/255.0 blue:93.0/255.0 alpha:1];
    sclab.textAlignment=NSTextAlignmentCenter;
    sclab.font=[UIFont fontWithName:@"AmericanTypewriter" size:12];
    [scview2 addSubview:sclab];
    [twoview addSubview:scview2];
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
