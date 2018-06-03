//
//  MessageViewController.m
//  jqhnt
//
//  Created by asd on 2018/6/1.
//  Copyright © 2018年 asd. All rights reserved.
//

#import "MessageViewController.h"

@interface MessageViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong,nonatomic)UITableView *tableView;

@end

@implementation MessageViewController

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
    titlelab.text=@"消息";
    titlelab.textColor=[UIColor colorWithRed:255.0/255 green:255.0/255 blue:255.0/255 alpha:1];
    titlelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:16];
    [nav_bottomview addSubview:titlelab];

    UIView *bottomview=[[UIView alloc] initWithFrame:CGRectMake(0, navView.frame.size.height, self.view.frame.size.width, self.view.frame.size.height-navView.frame.size.height)];
    bottomview.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:bottomview];

    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, bottomview.frame.size.width, bottomview.frame.size.height) style:UITableViewStylePlain];
    _tableView.backgroundColor =[UIColor colorWithRed:239/255.0 green:240/255.0 blue:241/255.0 alpha:1];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.dataSource=self;
    _tableView.delegate = self;
    [bottomview addSubview:_tableView];
}
//cell高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return 64;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    NSString *identifier = @"reuseActivityCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }

    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];

    cell.textLabel.text=@"12234";



    return cell;

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
