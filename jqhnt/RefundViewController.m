//
//  RefundViewController.m
//  jqhnt
//
//  Created by asd on 2018/5/31.
//  Copyright © 2018年 asd. All rights reserved.
//

#import "RefundViewController.h"
#import "RefundTableViewCell.h"

@interface RefundViewController ()<UITableViewDelegate,UITableViewDataSource,UITextViewDelegate>{
    UILabel *placeHolderLabel;
    //帮透明黑底view
    UIView *hdview;
    UIView *bottomview;
}
@property (strong,nonatomic)UITableView *tableView;

@end

@implementation RefundViewController

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

    bottomview=[[UIView alloc] initWithFrame:CGRectMake(0, navview.frame.size.height, self.view.frame.size.width, self.view.frame.size.height-navview.frame.size.height)];
    bottomview.backgroundColor=[UIColor colorWithRed:240.0/255 green:240.0/255 blue:240.0/255 alpha:1];
    [self.view addSubview:bottomview];

//    UIView *cellview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, bottomview.frame.size.width, 190)];
//    cellview.backgroundColor=[UIColor redColor];
//    [bottomview addSubview:cellview];

    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, bottomview.frame.size.width, bottomview.frame.size.height) style:UITableViewStylePlain];
    _tableView.backgroundColor =[UIColor colorWithRed:239/255.0 green:240/255.0 blue:241/255.0 alpha:1];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.dataSource=self;
    _tableView.delegate = self;
    [bottomview addSubview:_tableView];

}

//cell高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return 190;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    NSString *identifier = @"reuseActivityCell";
    RefundTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[RefundTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }

    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];

    cell.contractnumberlab1.text=@"BL2018031601A01";
    cell.contractnamelab1.text=@"砂加气，灰加气";
    cell.contracttotallab1.text=@"10000m³";
    cell.contractmoneylab1.text=@"30000元";
    cell.xdtimelab1.text=@"2018.01.01   13：00";

    cell.tdqbtn.tag=indexPath.row;
    [cell.tdqbtn addTarget:self action:@selector(onclickBtn:) forControlEvents:UIControlEventTouchDown];

    return cell;

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

    //UIView *contentView=[sender superview];
    RefundTableViewCell *cell=(RefundTableViewCell *)[bottomview superview];
//    NSIndexPath *indexPathAll=[self.tableView indexPathForCell:cell];
//
//    NSInteger line=indexPathAll.row;

//    mainListInfo *fruit=self.fruits[line];
//    self.fruitId=fruit.fruitId;

    [cell.scview removeFromSuperview];
    
     NSLog(@"btntag:%ld",button.tag);
    //帮透明黑底view
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
