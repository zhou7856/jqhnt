//
//  ContractViewController.m
//  jqhnt
//
//  Created by asd on 2018/5/30.
//  Copyright © 2018年 asd. All rights reserved.
//

#import "ContractViewController.h"
#import "contractTableViewCell.h"

@interface ContractViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong,nonatomic)UITableView *tableView;
@end

@implementation ContractViewController

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
    titlelab.text=@"我的合同";
    titlelab.textColor=[UIColor colorWithRed:255.0/255 green:255.0/255 blue:255.0/255 alpha:1];
    titlelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:18];
    [nav_bottomview addSubview:titlelab];



    UIView *bottomview=[[UIView alloc] initWithFrame:CGRectMake(0, navview.frame.size.height, self.view.frame.size.width, self.view.frame.size.height-navview.frame.size.height)];
    bottomview.backgroundColor=[UIColor colorWithRed:231.0/255 green:231.0/255 blue:241.0/255 alpha:1];
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

    return 540;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    NSString *identifier = @"reuseActivityCell";
    contractTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[contractTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }

    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];

    UIView *headview =[[UIView alloc]initWithFrame:CGRectMake(0, 535, self.view.frame.size.width, 5)];
    headview.backgroundColor =[UIColor colorWithRed:239/255.0 green:240/255.0 blue:241/255.0 alpha:1];
    [cell.contentView addSubview:headview];

    cell.contractnumberlab1.text=@"BL201803161A";
     cell.contractnamelab1.text=@"采购合同";
     cell.contracttypelab1.text=@"企业合同";
     cell.productnaemlab1.text=@"砂和气";
     cell.contracttotallab1.text=@"10000m³";
     cell.contractmoneylab1.text=@"￥5000元";
     cell.hscontracttotallab1.text=@"500m³";
     cell.dtcontractmoneylab1.text=@"200m³";

     cell.jfmclab1.text=@"安琥**有限公司";
     cell.jflxrlab1.text=@"张三";
     cell.jfphonelab1.text=@"18000000000";
     cell.jfdzlab1.text=@"安徽省***科技园";

    cell.yfmclab1.text=@"安琥**有限公司";
    cell.yflxrlab1.text=@"张三";
    cell.yfphonelab1.text=@"18000000000";
    cell.yfdzlab1.text=@"安徽省***科技园";

   

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
