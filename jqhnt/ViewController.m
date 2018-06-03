//
//  ViewController.m
//  jqhnt
//
//  Created by asd on 2018/5/30.
//  Copyright © 2018年 asd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPickerViewDataSource,UIPickerViewDelegate>{
    UIView *hdview;
    NSInteger selectRow;

}
@property (nonatomic, strong) UIPickerView *pickerView;

@property (nonatomic,retain) NSArray *provinceArray;//存储所有的省的名称
@property (nonatomic,retain) NSArray *cityArray;//存储对应省份下的所有城市名
@property (nonatomic,retain) NSArray *countyArray;//存储所有的县区名

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor whiteColor];


    // 加载数据
    //[self loadData];


    UIButton *qrbtn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width-20, 35)];

    qrbtn.backgroundColor=[UIColor colorWithRed:129.0/255.0 green:160.0/255.0 blue:194.0/255.0 alpha:1];
    qrbtn.center=CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height-30);
    [qrbtn addTarget:self action:@selector(onclickBtn) forControlEvents:UIControlEventTouchDown];
    qrbtn.titleLabel.font = [UIFont systemFontOfSize: 15];
    [qrbtn setTitle:@"确认" forState:UIControlStateNormal];
    qrbtn.layer.cornerRadius=3;
    qrbtn.layer.masksToBounds=YES;

    [self.view addSubview:qrbtn];
}

-(void)onclickBtn{
    //帮透明黑底view
    hdview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    hdview.backgroundColor=[UIColor colorWithRed:102.0/255.0 green:102.0/255.0 blue:102/255.0 alpha:0.6];
    [self.view addSubview:hdview];

    UIView *h_topview=[[UIView alloc] initWithFrame:CGRectMake(0, hdview.frame.size.height/2, hdview.frame.size.width, 40)];
    h_topview.backgroundColor=[UIColor whiteColor];
    UIView  *lineTop1 = [[UIView alloc] initWithFrame:CGRectMake(0, h_topview.frame.size.height-0.5, h_topview.frame.size.width, 0.5)];
    lineTop1.backgroundColor = [UIColor lightGrayColor];
    [h_topview addSubview:lineTop1];
    [hdview addSubview: h_topview];

    self.pickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0,hdview.frame.size.height/2+40,hdview.frame.size.width,hdview.frame.size.height/2-40)];
    self.pickerView.backgroundColor=[UIColor whiteColor];
    self.pickerView.delegate=self;
    self.pickerView.dataSource=self;
    [hdview addSubview: self.pickerView];

    
}

#pragma mark - UIPickerViewDataSource和UIPickerViewDelegate
// 设置列的返回数量
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 3;
}


//设置列里边组件的个数 component:组件
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    //如果是第一列
    if (component == 0)
    {
        //返回省的个数
        return self.provinceArray.count;
    }
    //如果是第二列
    else if (component == 1)
    {
        //返回市的个数
        return self.cityArray.count;
    }
    else
    {
        //返回县区的个数
        return self.countyArray.count;
    }
}

//返回组件的标题
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {

    NSLog(@"component:%ld",component);
    if (component == 0) {
        // 设置第0列的标题信息
        NSDictionary *provinceDict = [self.provinceArray objectAtIndex:row];
        NSString *name = provinceDict[@"n"];
        return name;
    } else if (component == 1) {
        // 设置第1列的标题信息
        NSDictionary *cityDict = [self.cityArray objectAtIndex:row];
        NSString *name = cityDict[@"n"];
        return name;
    } else {
        // 设置第2列的标题信息
        NSDictionary *countryDict = [self.countyArray objectAtIndex:row];
        NSString *name = countryDict[@"n"];
        return name;
    }
}

//选择器选择的方法  row：被选中的行
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {


    //选择第0列执行的方法
    if (component == 0) {
        [pickerView selectedRowInComponent:0];

        /**
         *  选中第0列时需要刷新第1列和第二列的数据
         */
        NSDictionary *provinceDict = [self.provinceArray objectAtIndex:row];
        self.cityArray = provinceDict[@"l"];
        [pickerView reloadComponent:1];

        NSDictionary *cityDict = [self.cityArray firstObject];
        self.countyArray = cityDict[@"l"];
        [pickerView reloadComponent:2];

    } else if (component == 1) {
        [pickerView selectedRowInComponent:1];

        /**
         *  选中第一列时需要刷新第二列的数据信息
         */
        NSDictionary *cityDict = [self.cityArray objectAtIndex:row];
        self.countyArray = cityDict[@"l"];
        [pickerView reloadComponent:2];

    } else if (component == 2) {
        [pickerView selectedRowInComponent:2];

    }

    selectRow = row;

    [self.pickerView reloadAllComponents];   //一定要写这句

}

- (NSDictionary *)getCurrentSelectedInfo
{
    // 获取当前选中的信息
    NSInteger proviceIndex = [self.pickerView selectedRowInComponent:0];
    NSInteger cityIndex = [self.pickerView selectedRowInComponent:1];
    NSInteger countryIndex = [self.pickerView selectedRowInComponent:2];

    NSString *provice = self.provinceArray[proviceIndex][@"n"];

    NSString *city = self.cityArray.count != 0 ? self.cityArray[cityIndex][@"n"] : @"";

    NSString *country = self.countyArray.count != 0 ? self.countyArray[countryIndex][@"n"] : @"";

    NSLog(@"%@,%@,%@",provice,city,country);

    NSDictionary *info = @{@"province":provice,@"city":city,@"country":country};
    return info;
}

#pragma mark - 加载数据
- (void)loadData
{
    // 从MainBundle中加载文件
    NSString *path = [[NSBundle mainBundle] pathForResource:@"citylist" ofType:@"data"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSArray  *jsonArray = [NSJSONSerialization
                           JSONObjectWithData:data options:NSJSONReadingAllowFragments
                           error:nil];
    // 取出默认的省市信息
    self.provinceArray = jsonArray;

    // 取出默认的城市信息
    NSDictionary *provinceDict = [self.provinceArray firstObject];
    self.cityArray = provinceDict[@"l"];

    // 取出默认的区信息
    NSDictionary *cityDict = [self.cityArray firstObject];
    self.countyArray = cityDict[@"l"];
}
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 40.0;

}
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row
          forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UILabel *lbl = (UILabel *)view;
    if (lbl == nil) {

        lbl = [[UILabel alloc]init];
        //在这里设置字体相关属性
        lbl.font = [UIFont systemFontOfSize:15];

        //lbl.textColor = [UIColor redColor];

        lbl.textAlignment=NSTextAlignmentCenter;

        [lbl setBackgroundColor:[UIColor clearColor]];
    }
    //重新加载lbl的文字内容
    lbl.text = [self pickerView:pickerView titleForRow:row forComponent:component];


    if (row == selectRow)
    {
        lbl.textColor = [UIColor blueColor];
    }
    else
    {
        lbl.textColor = [UIColor blackColor];
    }




    return lbl;

}






@end
