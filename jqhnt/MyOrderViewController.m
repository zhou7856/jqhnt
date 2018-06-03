//
//  MyOrderViewController.m
//  jqhnt
//
//  Created by asd on 2018/5/31.
//  Copyright © 2018年 asd. All rights reserved.
//

#import "MyOrderViewController.h"
#import "ViewController.h"


@interface MyOrderViewController ()<UIScrollViewDelegate>{
    UIView *xzline;
    UIView *bottomview;
    UIView *lineTop1;
    UILabel *onelab;
     UILabel *twolab;
     UILabel *threelab;
     UILabel *fourlab;
}
@property (nonatomic, strong) UIScrollView *scrollView;
@property (retain, nonatomic) UIPageControl *pageControl;
@end

@implementation MyOrderViewController

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


    UIImageView *backimgview=[[UIImageView alloc] initWithFrame:CGRectMake(20, 15, 13, 20)];
    backimgview.image=[UIImage imageNamed:@"icon_navigation_return"];
    [nav_bottomview addSubview:backimgview];


    UILabel *titlelab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    titlelab.center=CGPointMake(nav_bottomview.frame.size.width/2, nav_bottomview.frame.size.height/2);
    titlelab.textAlignment=NSTextAlignmentCenter;
    titlelab.text=@"我的订单";
    titlelab.textColor=[UIColor colorWithRed:255.0/255 green:255.0/255 blue:255.0/255 alpha:1];
    titlelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:20];
    [nav_bottomview addSubview:titlelab];

    UILabel *qxdlab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 20)];
    qxdlab.center=CGPointMake(nav_bottomview.frame.size.width-40, nav_bottomview.frame.size.height/2);
    qxdlab.text=@"去下单";
    qxdlab.textColor=[UIColor whiteColor];
    qxdlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:18];
     [nav_bottomview addSubview:qxdlab];

    bottomview=[[UIView alloc] initWithFrame:CGRectMake(0, navview.frame.size.height, self.view.frame.size.width, self.view.frame.size.height-navview.frame.size.height)];
    bottomview.backgroundColor=[UIColor colorWithRed:240.0/255 green:240.0/255 blue:240.0/255 alpha:1];
    [self.view addSubview:bottomview];

    UIView *bottom_topview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, bottomview.frame.size.width, 40)];
    bottom_topview.backgroundColor=[UIColor whiteColor];
    [bottomview addSubview:bottom_topview];

    lineTop1 = [[UIView alloc] initWithFrame:CGRectMake(0, bottom_topview.frame.size.height-1, bottom_topview.frame.size.width, 1)];
    lineTop1.backgroundColor = [UIColor lightGrayColor];
    [bottom_topview addSubview:lineTop1];

    xzline = [[UIView alloc] init];
    xzline.frame=CGRectMake(0, 0, bottom_topview.frame.size.width/4, 2);
    xzline.backgroundColor = [UIColor redColor];
    [lineTop1 addSubview:xzline];

    onelab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, bottom_topview.frame.size.width/4, bottom_topview.frame.size.height)];
    UIButton *onebut=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, bottom_topview.frame.size.width/4, bottom_topview.frame.size.height)];
    onebut.tag=1;
    [onebut addTarget:self action:@selector(labydAnim:) forControlEvents:UIControlEventTouchDown];
    onelab.text=@"待发货";
     onelab.textColor=[UIColor colorWithRed:169.0/255 green:169.0/255 blue:169.0/255 alpha:1];
    onelab.textAlignment=NSTextAlignmentCenter;

    twolab=[[UILabel alloc] initWithFrame:CGRectMake(bottom_topview.frame.size.width/4, 0, bottom_topview.frame.size.width/4, bottom_topview.frame.size.height)];
      UIButton *twobut=[[UIButton alloc] initWithFrame:CGRectMake(bottom_topview.frame.size.width/4, 0, bottom_topview.frame.size.width/4, bottom_topview.frame.size.height)];
    twobut.tag=2;
     [twobut addTarget:self action:@selector(labydAnim:) forControlEvents:UIControlEventTouchDown];
    twolab.text=@"已发货";
    twolab.textColor=[UIColor colorWithRed:169.0/255 green:169.0/255 blue:169.0/255 alpha:1];
    twolab.textAlignment=NSTextAlignmentCenter;

    threelab=[[UILabel alloc] initWithFrame:CGRectMake(bottom_topview.frame.size.width/2, 0, bottom_topview.frame.size.width/4, bottom_topview.frame.size.height)];
      UIButton *threebut=[[UIButton alloc] initWithFrame:CGRectMake(bottom_topview.frame.size.width/2, 0, bottom_topview.frame.size.width/4, bottom_topview.frame.size.height)];
     threebut.tag=3;
    [threebut addTarget:self action:@selector(labydAnim:) forControlEvents:UIControlEventTouchDown];
    threelab.text=@"已完成";
     threelab.textColor=[UIColor colorWithRed:169.0/255 green:169.0/255 blue:169.0/255 alpha:1];
    threelab.textAlignment=NSTextAlignmentCenter;

    fourlab=[[UILabel alloc] initWithFrame:CGRectMake(bottom_topview.frame.size.width/4*3, 0, bottom_topview.frame.size.width/4, bottom_topview.frame.size.height)];
    UIButton *fourbut=[[UIButton alloc] initWithFrame:CGRectMake(bottom_topview.frame.size.width/4*3, 0, bottom_topview.frame.size.width/4, bottom_topview.frame.size.height)];
    //fourbut.backgroundColor=[UIColor redColor];
    fourbut.tag=4;
     [fourbut addTarget:self action:@selector(labydAnim:) forControlEvents:UIControlEventTouchDown];
    fourlab.text=@"退单中";
     fourlab.textColor=[UIColor colorWithRed:169.0/255 green:169.0/255 blue:169.0/255 alpha:1];
    fourlab.textAlignment=NSTextAlignmentCenter;
    
    [bottom_topview addSubview:onelab];
    [bottom_topview addSubview:twolab];
    [bottom_topview addSubview:threelab];
    [bottom_topview addSubview:fourlab];
    [bottom_topview addSubview:onebut];
    [bottom_topview addSubview:twobut];
    [bottom_topview addSubview:threebut];
    [bottom_topview addSubview:fourbut];


    UIView *bottom_bottomview=[[UIView alloc] initWithFrame:CGRectMake(0, 41, bottomview.frame.size.width, bottomview.frame.size.height-40)];
    [bottomview addSubview:bottom_bottomview];
    // 1.创建UIScrollView
    _scrollView = [[UIScrollView alloc] init];
    _scrollView.frame = CGRectMake(0, 1, bottom_bottomview.frame.size.width, bottom_bottomview.frame.size.height); // frame中的size指UIScrollView的可视范围
    // scrollView.backgroundColor = [UIColor grayColor];

    //初始化pageControl
    self.pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(0, 1, bottom_bottomview.frame.size.width, bottom_bottomview.frame.size.height)];


    _scrollView.pagingEnabled = YES;
    _scrollView.delegate = self;
    [bottom_bottomview addSubview:_scrollView];
    [bottom_bottomview addSubview: self.pageControl];


//     UIView *r4view=[[UIView alloc] initWithFrame:CGRectMake(0, 0, bottom_bottomview.frame.size.width*4, bottom_bottomview.frame.size.height)];

    ViewController *vc = [[ViewController alloc] init];
//    [self addChildViewController:vc];
    vc.view.frame = CGRectMake(0, 0, bottom_bottomview.frame.size.width, bottom_bottomview.frame.size.height);
//    [self.view addSubview:vc.view];
//    [vc didMoveToParentViewController:self];

//    UIView *vc1=[[UIView alloc] initWithFrame:CGRectMake(0, 0, bottom_bottomview.frame.size.width, bottom_bottomview.frame.size.height)];
//    vc1.backgroundColor=[UIColor redColor];
//
//    UIViewController *vc2=[[UIViewController alloc] init];
//       vc2.view.backgroundColor=[UIColor yellowColor];
//
//    UIViewController *vc3=[[UIViewController alloc] init];
//       vc3.view.backgroundColor=[UIColor blackColor];
//
//    UIViewController *vc4=[[UIViewController alloc] init];
//       vc4.view.backgroundColor=[UIColor blueColor];

//
//    [self addChildViewController:vc];
//    [self addChildViewController:vc2];
//     [self addChildViewController:vc3];
//     [self addChildViewController:vc4];
//
//    [self.scrollView addSubview:vc.view];
//       [self.scrollView addSubview:vc2.view];
//       [self.scrollView addSubview:vc3.view];
//       [self.scrollView addSubview:vc4.view];



//    [r4view addSubview:vc.view];
//    [r4view addSubview:vc2.view];
//    [r4view addSubview:vc3.view];
//    [r4view addSubview:vc4.view];

    //[_scrollView addSubview:r4view];



    UIView *vc2=[[UIView alloc] init];
    vc2.frame=CGRectMake(0, 0, bottom_bottomview.frame.size.width, bottom_bottomview.frame.size.height);
    vc2.backgroundColor=[UIColor yellowColor];

    UIView *vc3=[[UIView alloc] init];
     vc3.frame=CGRectMake( bottom_bottomview.frame.size.width, 0, bottom_bottomview.frame.size.width, bottom_bottomview.frame.size.height);
    vc3.backgroundColor=[UIColor blackColor];

    UIView *vc4=[[UIView alloc] init];
     vc4.frame=CGRectMake( bottom_bottomview.frame.size.width*2, 0, bottom_bottomview.frame.size.width, bottom_bottomview.frame.size.height);
    vc4.backgroundColor=[UIColor blueColor];

           [self.scrollView addSubview:vc2];
           [self.scrollView addSubview:vc3];
           [self.scrollView addSubview:vc4];

    // 3.设置scrollView的属性

    // 设置UIScrollView的滚动范围（内容大小）
     self.scrollView.contentSize = CGSizeMake(bottom_bottomview.frame.size.width * 3, bottom_bottomview.frame.size.height);

    // 隐藏水平滚动条
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.showsVerticalScrollIndicator = NO;








}

- (void)itemClickTap:(UIGestureRecognizer *)sender{
    NSInteger index = sender.view.tag;
    NSLog(@"index:%ld",index);




}

-(void)labydAnim:(UIButton *)button{
    NSLog(@"%ld",button.tag);

    if (button.tag==1) {
         onelab.textColor=[UIColor colorWithRed:0.0/255 green:0.0/255 blue:0.0/255 alpha:1];
         twolab.textColor=[UIColor colorWithRed:169.0/255 green:169.0/255 blue:169.0/255 alpha:1];
         threelab.textColor=[UIColor colorWithRed:169.0/255 green:169.0/255 blue:169.0/255 alpha:1];
         fourlab.textColor=[UIColor colorWithRed:169.0/255 green:169.0/255 blue:169.0/255 alpha:1];
    } else  if (button.tag==2){
        onelab.textColor=[UIColor colorWithRed:169.0/255 green:169.0/255 blue:169.0/255 alpha:1];
        twolab.textColor=[UIColor colorWithRed:120.0/255 green:120.0/255 blue:120.0/255 alpha:1];
        threelab.textColor=[UIColor colorWithRed:169.0/255 green:169.0/255 blue:169.0/255 alpha:1];
        fourlab.textColor=[UIColor colorWithRed:169.0/255 green:169.0/255 blue:169.0/255 alpha:1];
    }else  if (button.tag==3){
        onelab.textColor=[UIColor colorWithRed:169.0/255 green:169.0/255 blue:169.0/255 alpha:1];
        twolab.textColor=[UIColor colorWithRed:169.0/255 green:169.0/255 blue:169.0/255 alpha:1];
        threelab.textColor=[UIColor colorWithRed:120.0/255 green:120.0/255 blue:120.0/255 alpha:1];
        fourlab.textColor=[UIColor colorWithRed:169.0/255 green:169.0/255 blue:169.0/255 alpha:1];
    }else  if (button.tag==4){
        onelab.textColor=[UIColor colorWithRed:169.0/255 green:169.0/255 blue:169.0/255 alpha:1];
        twolab.textColor=[UIColor colorWithRed:169.0/255 green:169.0/255 blue:169.0/255 alpha:1];
        threelab.textColor=[UIColor colorWithRed:169.0/255 green:169.0/255 blue:169.0/255 alpha:1];
        fourlab.textColor=[UIColor colorWithRed:120.0/255 green:120.0/255 blue:120.0/255 alpha:1];
    }



    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{


        xzline.center=CGPointMake(bottomview.frame.size.width/8+bottomview.frame.size.width/4*(button.tag-1), xzline.frame.size.height/2);
        [lineTop1 addSubview:xzline];

    } completion:^(BOOL finished) {
        // [self moveComplete];
    }];


}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSInteger offIndex = (scrollView.contentOffset.x + self.view.bounds.size.width * 0.5) / self.view.bounds.size.width ;

    NSLog(@"%ld",offIndex);
    //获取contentOffset
    CGPoint currentOffset = scrollView.contentOffset;
    NSInteger page = currentOffset.x / self.view.bounds.size.width;
    //取出对应控制器
    UIViewController *viewController = self.childViewControllers[offIndex];
    //添加到scrollView容器
    if (![viewController isViewLoaded]) {

        [self.scrollView addSubview:viewController.view];

        viewController.view.frame = CGRectMake(page * self.view.bounds.size.width, 0,self.view.bounds.size.width, self.view.bounds.size.height);
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
