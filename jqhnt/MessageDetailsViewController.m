//
//  MessageDetailsViewController.m
//  jqhnt
//
//  Created by asd on 2018/6/4.
//  Copyright © 2018年 asd. All rights reserved.
//

#import "MessageDetailsViewController.h"

@interface MessageDetailsViewController (){
     UIScrollView *_scrollView;
}

@end

@implementation MessageDetailsViewController

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
    backimgview.userInteractionEnabled = YES;
    [nav_bottomview addSubview:backimgview];

    UIButton *backBtn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 10, 15)];
    [backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchDown];
    [backimgview addSubview:backBtn];


    UILabel *titlelab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    titlelab.center=CGPointMake(nav_bottomview.frame.size.width/2, nav_bottomview.frame.size.height/2);
    titlelab.textAlignment=NSTextAlignmentCenter;
    titlelab.text=@"消息";
    titlelab.textColor=[UIColor colorWithRed:255.0/255 green:255.0/255 blue:255.0/255 alpha:1];
    titlelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:16];
    [nav_bottomview addSubview:titlelab];

    UIView *bottomview=[[UIView alloc] initWithFrame:CGRectMake(0, navView.frame.size.height, self.view.frame.size.width, self.view.frame.size.height-navView.frame.size.height)];
    bottomview.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:bottomview];

    // 1.创建UIScrollView
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.frame = CGRectMake(0, 0, bottomview.frame.size.width, bottomview.frame.size.height); // frame中的size指UIScrollView的可视范围
    // scrollView.backgroundColor = [UIColor grayColor];
    [bottomview addSubview:scrollView];

    UIView *scrollVview=[[UIView alloc] initWithFrame:CGRectMake(0, 0,bottomview.frame.size.width,740)];
   // scrollVview.backgroundColor=[UIColor redColor];
    [scrollView addSubview:scrollVview];

    UIView *scrollOneView=[[UIView alloc] initWithFrame:CGRectMake(0, 0,bottomview.frame.size.width,80)];
    scrollOneView.backgroundColor=[UIColor redColor];
    [scrollVview addSubview:scrollOneView];

    UIView *scrollTwoView=[[UIView alloc] initWithFrame:CGRectMake(0, scrollOneView.frame.size.height,bottomview.frame.size.width,68)];
    scrollTwoView.backgroundColor=[UIColor yellowColor];
    [scrollVview addSubview:scrollTwoView];

    UIView *scrollThreeView=[[UIView alloc] initWithFrame:CGRectMake(0, scrollTwoView.frame.size.height+scrollTwoView.frame.origin.y,bottomview.frame.size.width,94)];
    scrollThreeView.backgroundColor=[UIColor blueColor];
    [scrollVview addSubview:scrollThreeView];

    UIView *scrollFourView=[[UIView alloc] initWithFrame:CGRectMake(0, scrollThreeView.frame.size.height+scrollThreeView.frame.origin.y,bottomview.frame.size.width,94)];
    scrollFourView.backgroundColor=[UIColor greenColor];
    [scrollVview addSubview:scrollFourView];

    UIView *scrollFiveView=[[UIView alloc] initWithFrame:CGRectMake(0, scrollFourView.frame.size.height+scrollFourView.frame.origin.y,bottomview.frame.size.width,94)];
    scrollFiveView.backgroundColor=[UIColor brownColor];
    [scrollVview addSubview:scrollFiveView];

    UIView *scrollSixView=[[UIView alloc] initWithFrame:CGRectMake(0, scrollFiveView.frame.size.height+scrollFiveView.frame.origin.y,bottomview.frame.size.width,300)];
    scrollSixView.backgroundColor=[UIColor blueColor];
    [scrollVview addSubview:scrollSixView];




    // 3.设置scrollView的属性

    // 设置UIScrollView的滚动范围（内容大小）
    scrollView.contentSize = CGSizeMake(bottomview.frame.size.width,730);

    // 隐藏水平滚动条
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;


    _scrollView = scrollView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
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
