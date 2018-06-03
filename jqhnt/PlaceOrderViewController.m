//
//  PlaceOrderViewController.m
//  jqhnt
//
//  Created by asd on 2018/5/30.
//  Copyright © 2018年 asd. All rights reserved.
//

#import "PlaceOrderViewController.h"

@interface PlaceOrderViewController ()<UITextViewDelegate>{
    //在私有扩展中创建一个属性
    UIScrollView *_scrollView;
    UILabel *placeHolderLabel;
}

@end

@implementation PlaceOrderViewController

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




    UIImageView *backimgview=[[UIImageView alloc] initWithFrame:CGRectMake(10, 12, 15, 20)];
    backimgview.image=[UIImage imageNamed:@"icon_navigation_return"];
    [nav_bottomview addSubview:backimgview];


    UILabel *titlelab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    titlelab.center=CGPointMake(nav_bottomview.frame.size.width/2, nav_bottomview.frame.size.height/2);
    titlelab.textAlignment=NSTextAlignmentCenter;
    titlelab.text=@"下单";
    titlelab.textColor=[UIColor colorWithRed:255.0/255 green:255.0/255 blue:255.0/255 alpha:1];
    titlelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:20];
    [nav_bottomview addSubview:titlelab];

    UIView *bottomview=[[UIView alloc] initWithFrame:CGRectMake(0, navview.frame.size.height, self.view.frame.size.width, self.view.frame.size.height-navview.frame.size.height)];
    bottomview.backgroundColor=[UIColor colorWithRed:231.0/255 green:231.0/255 blue:241.0/255 alpha:1];
    [self.view addSubview:bottomview];


    // 1.创建UIScrollView
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.frame = CGRectMake(0, 0, bottomview.frame.size.width, bottomview.frame.size.height); // frame中的size指UIScrollView的可视范围
    // scrollView.backgroundColor = [UIColor grayColor];
    [bottomview addSubview:scrollView];

    UIView *scrovbottomiew=[[UIView alloc] initWithFrame:CGRectMake(0, 0, bottomview.frame.size.width, bottomview.frame.size.height+120)];

    UIView *b_topview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, bottomview.frame.size.width, 90)];
    b_topview.backgroundColor=[UIColor whiteColor];
    [scrovbottomiew addSubview:b_topview];

    UILabel *namelab=[[UILabel alloc] initWithFrame:CGRectMake(10, 10, 50, 20)];
    namelab.text=@"姓名：";
  //  namelab.backgroundColor=[UIColor redColor];
    namelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [b_topview addSubview:namelab];

    UILabel *name1lab=[[UILabel alloc] initWithFrame:CGRectMake(60, 10, 40, 20)];
    name1lab.text=@"张三";
   // name1lab.backgroundColor=[UIColor redColor];
    name1lab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [b_topview addSubview:name1lab];

    UILabel *dzlab=[[UILabel alloc] initWithFrame:CGRectMake(10, 50, 50, 20)];
    dzlab.text=@"地址：";
   // dzlab.backgroundColor=[UIColor redColor];
    dzlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [b_topview addSubview:dzlab];

    UILabel *dz1lab=[[UILabel alloc] initWithFrame:CGRectMake(60, 50, 200, 20)];
    dz1lab.text=@"安徽省******园";
  //  dz1lab.backgroundColor=[UIColor redColor];
    dz1lab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [b_topview addSubview:dz1lab];


    UILabel *phonelab=[[UILabel alloc] initWithFrame:CGRectMake(b_topview.frame.size.width-160, 10, 50, 20)];
    phonelab.text=@"电话：";
    //  namelab.backgroundColor=[UIColor redColor];
    phonelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [b_topview addSubview:phonelab];

    UILabel *phone1lab=[[UILabel alloc] initWithFrame:CGRectMake(b_topview.frame.size.width-120, 10, 120, 20)];
    phone1lab.text=@"18000000000";
    //  namelab.backgroundColor=[UIColor redColor];
    phone1lab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [b_topview addSubview:phone1lab];

    UIImageView *pimg=[[UIImageView alloc] initWithFrame:CGRectMake(b_topview.frame.size.width-30, 50, 13, 18)];
    pimg.image=[UIImage imageNamed:@"icon_commonly_right"];
    [b_topview addSubview:pimg];




    UIView *b_twoview=[[UIView alloc] initWithFrame:CGRectMake(0, b_topview.frame.size.height+10, bottomview.frame.size.width, 440)];
    b_twoview.backgroundColor=[UIColor whiteColor];
     [scrovbottomiew addSubview:b_twoview];

    UIView *oneview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, b_twoview.frame.size.width, 50)];
    oneview.backgroundColor=[UIColor whiteColor];
     [b_twoview addSubview:oneview];

    UIView *lineTop1 = [[UIView alloc] initWithFrame:CGRectMake(0, oneview.frame.size.height-1, oneview.frame.size.width, 1)];
    lineTop1.backgroundColor = [UIColor lightGrayColor];
    [oneview addSubview:lineTop1];

    UIView *twoview=[[UIView alloc] initWithFrame:CGRectMake(0, 50, b_twoview.frame.size.width, 50)];
    twoview.backgroundColor=[UIColor whiteColor];
    [b_twoview addSubview:twoview];

    UIView *lineTop2 = [[UIView alloc] initWithFrame:CGRectMake(0, twoview.frame.size.height-1, twoview.frame.size.width, 1)];
    lineTop2.backgroundColor = [UIColor lightGrayColor];
    [twoview addSubview:lineTop2];


    UIView *threeview=[[UIView alloc] initWithFrame:CGRectMake(0, 100, b_twoview.frame.size.width, 290)];
    threeview.backgroundColor=[UIColor whiteColor];
    [b_twoview addSubview:threeview];

    UIView *lineTop3 = [[UIView alloc] initWithFrame:CGRectMake(0, threeview.frame.size.height-1, threeview.frame.size.width, 1)];
    lineTop3.backgroundColor = [UIColor lightGrayColor];
    [threeview addSubview:lineTop3];

    UIView *lineTop4 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, threeview.frame.size.width, 1)];
    lineTop4.center=CGPointMake(threeview.frame.size.width/2, threeview.frame.size.height/2);
    lineTop4.backgroundColor = [UIColor lightGrayColor];
    [threeview addSubview:lineTop4];

    UIView *fourview=[[UIView alloc] initWithFrame:CGRectMake(0, 390, b_twoview.frame.size.width, 50)];
    fourview.backgroundColor=[UIColor whiteColor];
    [b_twoview addSubview:fourview];

    UILabel *htbhlab=[[UILabel alloc] initWithFrame:CGRectMake(10, 15, 80, 20)];
    htbhlab.text=@"合同编号：";
    //  namelab.backgroundColor=[UIColor redColor];
    htbhlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [oneview addSubview:htbhlab];

    UILabel *bhlab=[[UILabel alloc] initWithFrame:CGRectMake(90, 15, 150, 20)];
    bhlab.text=@"BL2018031601A";
    //  namelab.backgroundColor=[UIColor redColor];
    bhlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [oneview addSubview:bhlab];

    UILabel *htlxlab=[[UILabel alloc] initWithFrame:CGRectMake(10, 15, 80, 20)];
    htlxlab.text=@"合同类型：";
    //  namelab.backgroundColor=[UIColor redColor];
    htlxlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [twoview addSubview:htlxlab];

    UILabel *lxlab=[[UILabel alloc] initWithFrame:CGRectMake(90, 15, 150, 20)];
    lxlab.text=@"零售合同";
    //  namelab.backgroundColor=[UIColor redColor];
    lxlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [twoview addSubview:lxlab];

    UILabel *pmlab=[[UILabel alloc] initWithFrame:CGRectMake(10, 15, 80, 20)];
    pmlab.text=@"品 名：";
    //  namelab.backgroundColor=[UIColor redColor];
    pmlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:pmlab];

    UILabel *pmnamelab=[[UILabel alloc] initWithFrame:CGRectMake(60, 15, 80, 20)];
    pmnamelab.text=@"砂加气";
    //  namelab.backgroundColor=[UIColor redColor];
    pmnamelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:pmnamelab];

    UILabel *gglab=[[UILabel alloc] initWithFrame:CGRectMake(10, 45, 80, 20)];
    gglab.text=@"规 格：";
    //  namelab.backgroundColor=[UIColor redColor];
    gglab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:gglab];

    UILabel *ggnamelab=[[UILabel alloc] initWithFrame:CGRectMake(60, 45, 120, 20)];
    ggnamelab.text=@"240*200*100";
    //  namelab.backgroundColor=[UIColor redColor];
    ggnamelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:ggnamelab];

    UILabel *fllab=[[UILabel alloc] initWithFrame:CGRectMake(10, 75, 80, 20)];
    fllab.text=@"方 量：";
    //  namelab.backgroundColor=[UIColor redColor];
    fllab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:fllab];

    UILabel *fllab1=[[UILabel alloc] initWithFrame:CGRectMake(60, 75, 80, 20)];
    fllab1.text=@"1000m³";
    //  namelab.backgroundColor=[UIColor redColor];
    fllab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:fllab1];

    UILabel *jelab=[[UILabel alloc] initWithFrame:CGRectMake(10, 105, 80, 20)];
    jelab.text=@"金 额：";
    //  namelab.backgroundColor=[UIColor redColor];
    jelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:jelab];

    UILabel *jelab1=[[UILabel alloc] initWithFrame:CGRectMake(60, 105, 80, 20)];
    jelab1.text=@"10000元";
    //  namelab.backgroundColor=[UIColor redColor];
    jelab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:jelab1];

    UILabel *numlab=[[UILabel alloc] initWithFrame:CGRectMake(threeview.frame.size.width-160, 45, 80, 20)];
    numlab.text=@"数 量：";
    //  namelab.backgroundColor=[UIColor redColor];
    numlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:numlab];

    UILabel *numlab1=[[UILabel alloc] initWithFrame:CGRectMake(threeview.frame.size.width-110, 45, 80, 20)];
    numlab1.text=@"1000托";
    //  namelab.backgroundColor=[UIColor redColor];
    numlab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:numlab1];

    UILabel *djlab=[[UILabel alloc] initWithFrame:CGRectMake(threeview.frame.size.width-160, 75, 80, 20)];
    djlab.text=@"单 价：";
    //  namelab.backgroundColor=[UIColor redColor];
    djlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:djlab];

    UILabel *djlab1=[[UILabel alloc] initWithFrame:CGRectMake(threeview.frame.size.width-110, 75, 80, 20)];
    djlab1.text=@"100元/m³";
    //  namelab.backgroundColor=[UIColor redColor];
    djlab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:djlab1];


    UIView *scview=[[UIView alloc] initWithFrame:CGRectMake(threeview.frame.size.width-110, 105, 70, 30)];
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
    sclab.text=@"删除";
    sclab.textColor=[UIColor colorWithRed:252.0/255.0 green:116.0/255.0 blue:120/255.0 alpha:1];
    sclab.textAlignment=NSTextAlignmentCenter;
    sclab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [scview addSubview:sclab];
    [threeview addSubview:scview];



    UILabel *guigelab=[[UILabel alloc] initWithFrame:CGRectMake(10, lineTop4.frame.origin.y+15, 80, 20)];
    guigelab.text=@"规 格：";
    //  namelab.backgroundColor=[UIColor redColor];
    guigelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:guigelab];

    UILabel *fanlianglab=[[UILabel alloc] initWithFrame:CGRectMake(10, lineTop4.frame.origin.y+55, 80, 20)];
    fanlianglab.text=@"方 量：";
    //  namelab.backgroundColor=[UIColor redColor];
    fanlianglab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:fanlianglab];

    UILabel *jinelab=[[UILabel alloc] initWithFrame:CGRectMake(10, lineTop4.frame.origin.y+95, 80, 20)];
    jinelab.text=@"金 额：";
    //  namelab.backgroundColor=[UIColor redColor];
    jinelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:jinelab];

    UITextField *qxztextfiled=[[UITextField alloc] initWithFrame:CGRectMake(60, lineTop4.frame.origin.y+15, 80, 20)];
    qxztextfiled.placeholder=@"请选择";
    [qxztextfiled setValue:[UIFont fontWithName:@"AmericanTypewriter" size:15] forKeyPath:@"_placeholderLabel.font"];
    [threeview addSubview:qxztextfiled];

    UIImageView *xlimg=[[UIImageView alloc] initWithFrame:CGRectMake(120, lineTop4.frame.origin.y+15, 20, 20)];
    xlimg.image=[UIImage imageNamed:@"icon_navigation_return"];
    [threeview addSubview:xlimg];

    UITextField *mtextfiled=[[UITextField alloc] initWithFrame:CGRectMake(60, lineTop4.frame.origin.y+55, 50, 20)];
    mtextfiled.placeholder=@"请输入";
    [mtextfiled setValue:[UIFont fontWithName:@"AmericanTypewriter" size:15] forKeyPath:@"_placeholderLabel.font"];
    [threeview addSubview:mtextfiled];

    UIView *lineTop5 = [[UIView alloc] initWithFrame:CGRectMake(0, mtextfiled.frame.size.height-1, mtextfiled.frame.size.width, 1)];
    lineTop5.backgroundColor = [UIColor lightGrayColor];
    [mtextfiled addSubview:lineTop5];

    UILabel *mdwlab=[[UILabel alloc] initWithFrame:CGRectMake(120,  lineTop4.frame.origin.y+55, 80, 20)];
    mdwlab.text=@"m³";
    //  namelab.backgroundColor=[UIColor redColor];
    mdwlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:mdwlab];


    UITextField *jetextfiled=[[UITextField alloc] initWithFrame:CGRectMake(60, lineTop4.frame.origin.y+95, 50, 20)];
    jetextfiled.placeholder=@"请输入";
    [jetextfiled setValue:[UIFont fontWithName:@"AmericanTypewriter" size:15] forKeyPath:@"_placeholderLabel.font"];
    [threeview addSubview:jetextfiled];

    UIView *lineTop6 = [[UIView alloc] initWithFrame:CGRectMake(0, jetextfiled.frame.size.height-1, jetextfiled.frame.size.width, 1)];
    lineTop6.backgroundColor = [UIColor lightGrayColor];
    [jetextfiled addSubview:lineTop6];

    UILabel *ydwlab=[[UILabel alloc] initWithFrame:CGRectMake(120,  lineTop4.frame.origin.y+95, 80, 20)];
    ydwlab.text=@"元";
    //  namelab.backgroundColor=[UIColor redColor];
    ydwlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:ydwlab];


    UILabel *numlab2=[[UILabel alloc] initWithFrame:CGRectMake(threeview.frame.size.width-160, lineTop4.frame.origin.y+15, 80, 20)];
    numlab2.text=@"数 量：";
    //  namelab.backgroundColor=[UIColor redColor];
    numlab2.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:numlab2];


    UITextField *tuotextfiled=[[UITextField alloc] initWithFrame:CGRectMake(threeview.frame.size.width-120, lineTop4.frame.origin.y+15, 50, 20)];
    tuotextfiled.placeholder=@"请输入";
    [tuotextfiled setValue:[UIFont fontWithName:@"AmericanTypewriter" size:15] forKeyPath:@"_placeholderLabel.font"];
    [threeview addSubview:tuotextfiled];

    UILabel *dwtlab=[[UILabel alloc] initWithFrame:CGRectMake(threeview.frame.size.width-70, lineTop4.frame.origin.y+15, 80, 20)];
    dwtlab.text=@"托";
    //  namelab.backgroundColor=[UIColor redColor];
    dwtlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:dwtlab];

    UIView *dwtlablineTop = [[UIView alloc] initWithFrame:CGRectMake(0, tuotextfiled.frame.size.height-1, tuotextfiled.frame.size.width, 1)];
    dwtlablineTop.backgroundColor = [UIColor lightGrayColor];
    [tuotextfiled addSubview:dwtlablineTop];




    UILabel *djlab2=[[UILabel alloc] initWithFrame:CGRectMake(threeview.frame.size.width-160, lineTop4.frame.origin.y+55, 80, 20)];
    djlab2.text=@"单 价：";
    //  namelab.backgroundColor=[UIColor redColor];
    djlab2.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:djlab2];

    UITextField *ymlfmtextfiled=[[UITextField alloc] initWithFrame:CGRectMake(threeview.frame.size.width-120, lineTop4.frame.origin.y+55, 50, 20)];
    ymlfmtextfiled.placeholder=@"请输入";
    [ymlfmtextfiled setValue:[UIFont fontWithName:@"AmericanTypewriter" size:15] forKeyPath:@"_placeholderLabel.font"];
    [threeview addSubview:ymlfmtextfiled];

    UIView *djlablineTop = [[UIView alloc] initWithFrame:CGRectMake(0, ymlfmtextfiled.frame.size.height-1, ymlfmtextfiled.frame.size.width, 1)];
    djlablineTop.backgroundColor = [UIColor lightGrayColor];
    [ymlfmtextfiled addSubview:djlablineTop];


    UILabel *dwymlfmlab=[[UILabel alloc] initWithFrame:CGRectMake(threeview.frame.size.width-70, lineTop4.frame.origin.y+55, 80, 20)];
    dwymlfmlab.text=@"元/m³";
    //  namelab.backgroundColor=[UIColor redColor];
    dwymlfmlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [threeview addSubview:dwymlfmlab];

    //添加产品型号

    UIView *tjcpview=[[UIView alloc] initWithFrame:CGRectMake(threeview.frame.size.width-130, lineTop4.frame.origin.y+95, 100, 30)];
    tjcpview.backgroundColor=[UIColor whiteColor];

    UIView *lineTop_tjcpview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tjcpview.frame.size.width, 0.5)];
    lineTop_tjcpview.backgroundColor = [UIColor colorWithRed:184.0/255.0 green:212.0/255.0 blue:160/255.0 alpha:1];
    [tjcpview addSubview:lineTop_tjcpview];

    UIView *lineleft_tjcpview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0.5, tjcpview.frame.size.height)];
    lineleft_tjcpview.backgroundColor = [UIColor colorWithRed:184.0/255.0 green:212.0/255.0 blue:160/255.0 alpha:1];
    [tjcpview addSubview:lineleft_tjcpview];


    UIView *linebottom_tjcpview = [[UIView alloc] initWithFrame:CGRectMake(0, tjcpview.frame.size.height-0.5, tjcpview.frame.size.width, 0.5)];
    linebottom_tjcpview.backgroundColor = [UIColor colorWithRed:184.0/255.0 green:212.0/255.0 blue:160/255.0 alpha:1];
    [tjcpview addSubview:linebottom_tjcpview];

    UIView *lineright_tjcpview = [[UIView alloc] initWithFrame:CGRectMake(tjcpview.frame.size.width-0.5, 0, 0.5, scview.frame.size.height)];
    lineright_tjcpview.backgroundColor =[UIColor colorWithRed:184.0/255.0 green:212.0/255.0 blue:160/255.0 alpha:1];
    [tjcpview addSubview:lineright_tjcpview];

    UILabel *tjcplab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, tjcpview.frame.size.width, tjcpview.frame.size.height)];
    tjcplab.text=@"添加产品型号";
    tjcplab.textColor=[UIColor colorWithRed:184.0/255.0 green:212.0/255.0 blue:160/255.0 alpha:1];
    tjcplab.textAlignment=NSTextAlignmentCenter;
    tjcplab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [tjcpview addSubview:tjcplab];
    [threeview addSubview:tjcpview];














    UILabel *tjlab=[[UILabel alloc] initWithFrame:CGRectMake(10, 15, 80, 20)];
    tjlab.text=@"添加产品";
    //  namelab.backgroundColor=[UIColor redColor];
    tjlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [fourview addSubview:tjlab];


     UIImageView *tjimg=[[UIImageView alloc] initWithFrame:CGRectMake(90, 12.5, 25, 25)];
    tjimg.image=[UIImage imageNamed:@"icon_commonly_increase"];
    [fourview addSubview:tjimg];



    UIView *b_threeview=[[UIView alloc] initWithFrame:CGRectMake(0, b_topview.frame.size.height+20+b_twoview.frame.size.height, bottomview.frame.size.width, 200)];
    b_threeview.backgroundColor=[UIColor whiteColor];
    [scrovbottomiew addSubview:b_threeview];

    UILabel *bzlab=[[UILabel alloc] initWithFrame:CGRectMake(10, 15, 80, 20)];
    bzlab.text=@"备注信息";
    //  namelab.backgroundColor=[UIColor redColor];
    bzlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [b_threeview addSubview:bzlab];

    UITextView *textview=[[UITextView alloc] initWithFrame:CGRectMake(10, 45, b_threeview.frame.size.width-20, 120)];
    textview.backgroundColor=[UIColor colorWithRed:247.0/255 green:247.0/255 blue:247.0/255 alpha:1];
    textview.delegate=self;
    textview.layer.cornerRadius=5;
    textview.layer.masksToBounds=YES;

    [b_threeview addSubview:textview];



    placeHolderLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 5,120, 20)];
    placeHolderLabel.textAlignment = NSTextAlignmentLeft;
    placeHolderLabel.font = [UIFont systemFontOfSize:17];
    placeHolderLabel.text = @"请输备注信息";
    placeHolderLabel.textColor=[UIColor colorWithRed:165.0/255 green:165.0/255 blue:165.0/255 alpha:1];
    [textview addSubview:placeHolderLabel];


    [scrollView addSubview:scrovbottomiew];

    // 3.设置scrollView的属性

    // 设置UIScrollView的滚动范围（内容大小）
    scrollView.contentSize = CGSizeMake(bottomview.frame.size.width,scrovbottomiew.frame.size.height+100);

    // 隐藏水平滚动条
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;


    _scrollView = scrollView;

    UIView *vbottomview=[[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height-60,  self.view.frame.size.width, 60)];
    vbottomview.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:vbottomview];

    UIButton *querenbtn=[[UIButton alloc] initWithFrame:CGRectMake(vbottomview.frame.size.width-130, 0, 130, 60)];
    querenbtn.backgroundColor=[UIColor colorWithRed:129/255.0 green:160/255.0 blue:194/255.0 alpha:1];
    [querenbtn setTitle:@"确认下单" forState:UIControlStateNormal];
    [vbottomview addSubview:querenbtn];

    UILabel *gjlab=[[UILabel alloc] initWithFrame:CGRectMake(10, 20, 80, 20)];
    gjlab.text=@"共计";
    //  namelab.backgroundColor=[UIColor redColor];
    gjlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [vbottomview addSubview:gjlab];

    UILabel *gjnumlab=[[UILabel alloc] initWithFrame:CGRectMake(50, 20, 80, 20)];
    gjnumlab.text=@"1000";
    gjnumlab.textColor=[UIColor redColor];
    //  namelab.backgroundColor=[UIColor redColor];
    gjnumlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:18];
    [vbottomview addSubview:gjnumlab];

    UILabel *lflab=[[UILabel alloc] initWithFrame:CGRectMake(100, 20, 80, 20)];
    lflab.text=@"立方，";
    //  namelab.backgroundColor=[UIColor redColor];
    lflab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [vbottomview addSubview:lflab];

    UILabel *ynumlab=[[UILabel alloc] initWithFrame:CGRectMake(150, 20, 80, 20)];
    ynumlab.text=@"30000";
    ynumlab.textColor=[UIColor redColor];
    //  namelab.backgroundColor=[UIColor redColor];
    ynumlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:18];
    [vbottomview addSubview:ynumlab];

    UILabel *ylab=[[UILabel alloc] initWithFrame:CGRectMake(220, 20, 80, 20)];
    ylab.text=@"元";
    //  namelab.backgroundColor=[UIColor redColor];
    ylab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
    [vbottomview addSubview:ylab];




}

- (void)textViewDidChange:(UITextView *)textView
{
    if (textView.text.length == 0 )
    {
        placeHolderLabel.text = @"请输备注信息";
    }
    else
    {
        placeHolderLabel.text = @"";
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
