//
//  contractTableViewCell.m
//  jqhnt
//
//  Created by asd on 2018/5/30.
//  Copyright © 2018年 asd. All rights reserved.
//

#import "contractTableViewCell.h"

@implementation contractTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];

    // Initialization code
}
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {

        _nailview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 240)];
      //  _nailview.backgroundColor=[UIColor redColor];

        _secondview=[[UIView alloc] initWithFrame:CGRectMake(0,_nailview.frame.origin.y+_nailview.frame.size.height, [UIScreen mainScreen].bounds.size.width, 120)];
       // _secondview.backgroundColor=[UIColor yellowColor];

        UIView *lineTop1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, _secondview.frame.size.width, 0.5)];
        lineTop1.backgroundColor = [UIColor lightGrayColor];
        [_secondview addSubview:lineTop1];

        _thirdview=[[UIView alloc] initWithFrame:CGRectMake(0, _secondview.frame.origin.y+_secondview.frame.size.height, [UIScreen mainScreen].bounds.size.width, 180)];
       // _thirdview.backgroundColor=[UIColor brownColor];

        UIView *lineTop2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, _thirdview.frame.size.width, 0.5)];
        lineTop1.backgroundColor = [UIColor lightGrayColor];
        [_thirdview addSubview:lineTop2];

        _contractnumberlab=[[UILabel alloc] initWithFrame:CGRectMake(10, 0, 80, 30)];
        //_contractnumberlab.backgroundColor=[UIColor redColor];
        //_contractnumberlab.textAlignment=NSTextAlignmentCenter;
         _contractnumberlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
        _contractnumberlab.text=@"合同编号：";
        [_nailview addSubview:_contractnumberlab];

        _contractnamelab=[[UILabel alloc] initWithFrame:CGRectMake(10, 30, 80, 30)];
       // _contractnamelab.backgroundColor=[UIColor redColor];
       // _contractnamelab.textAlignment=NSTextAlignmentCenter;
        _contractnamelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
         _contractnamelab.text=@"合同名称：";
        [_nailview addSubview:_contractnamelab];

        _contracttypelab=[[UILabel alloc] initWithFrame:CGRectMake(10, 60, 80, 30)];
        //_contracttypelab.backgroundColor=[UIColor redColor];
       // _contracttypelab.textAlignment=NSTextAlignmentCenter;
        _contracttypelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
          _contracttypelab.text=@"合同类型：";
        [_nailview addSubview:_contracttypelab];

        _productnaemlab=[[UILabel alloc] initWithFrame:CGRectMake(10, 90, 80, 30)];
       // _productnaemlab.backgroundColor=[UIColor redColor];
      //  _productnaemlab.textAlignment=NSTextAlignmentCenter;
        _productnaemlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
        _productnaemlab.text=@"产品名称：";
        [_nailview addSubview:_productnaemlab];

        _contracttotallab=[[UILabel alloc] initWithFrame:CGRectMake(10, 120, 80, 30)];
       // _contracttotallab.backgroundColor=[UIColor redColor];
       // _contracttotallab.textAlignment=NSTextAlignmentCenter;
        _contracttotallab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
        _contracttotallab.text=@"合同总量：";
        [_nailview addSubview:_contracttotallab];

        _contractmoneylab=[[UILabel alloc] initWithFrame:CGRectMake(10, 150, 80, 30)];
       // _contractmoneylab.backgroundColor=[UIColor redColor];
       // _contractmoneylab.textAlignment=NSTextAlignmentCenter;
        _contractmoneylab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
        _contractmoneylab.text=@"总    额：";
        [_nailview addSubview:_contractmoneylab];

        _hscontracttotallab=[[UILabel alloc] initWithFrame:CGRectMake(10, 180, 120, 30)];
        //_hscontracttotallab.backgroundColor=[UIColor redColor];
        //_hscontracttotallab.textAlignment=NSTextAlignmentCenter;
        _hscontracttotallab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
        _hscontracttotallab.text=@"历史收货总量：";
        [_nailview addSubview:_hscontracttotallab];

        _dtcontractmoneylab=[[UILabel alloc] initWithFrame:CGRectMake(10, 210, 120, 30)];
        //_dtcontractmoneylab.backgroundColor=[UIColor redColor];
        //_dtcontractmoneylab.textAlignment=NSTextAlignmentCenter;
        _dtcontractmoneylab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
        _dtcontractmoneylab.text=@"当天收货总量：";
        [_nailview addSubview:_dtcontractmoneylab];

        //甲方
        _jfmclab=[[UILabel alloc] initWithFrame:CGRectMake(10, 0, 80, 30)];
        //_jfmclab.backgroundColor=[UIColor redColor];

        _jfmclab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
        _jfmclab.text=@"甲方名称：";
        [_secondview addSubview:_jfmclab];

        _jflxrlab=[[UILabel alloc] initWithFrame:CGRectMake(10, 30, 120, 30)];
       // _jflxrlab.backgroundColor=[UIColor redColor];

        _jflxrlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
        _jflxrlab.text=@"甲方联系人：";
        [_secondview addSubview:_jflxrlab];

        _jfphonelab=[[UILabel alloc] initWithFrame:CGRectMake(10, 60, 120, 30)];
       // _jfphonelab.backgroundColor=[UIColor redColor];

        _jfphonelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
        _jfphonelab.text=@"联系人手机号：";
        [_secondview addSubview:_jfphonelab];

        _jfdzlab=[[UILabel alloc] initWithFrame:CGRectMake(10, 90, 80, 30)];
      //  _jfdzlab.backgroundColor=[UIColor redColor];

        _jfdzlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
        _jfdzlab.text=@"地址：";
        [_secondview addSubview:_jfdzlab];

        //乙方

        _yfmclab=[[UILabel alloc] initWithFrame:CGRectMake(10, 0, 80, 30)];
        //_jfmclab.backgroundColor=[UIColor redColor];

        _yfmclab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
        _yfmclab.text=@"乙方名称：";
        [_thirdview addSubview:_yfmclab];

        _yflxrlab=[[UILabel alloc] initWithFrame:CGRectMake(10, 30, 120, 30)];
        // _jflxrlab.backgroundColor=[UIColor redColor];

        _yflxrlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
        _yflxrlab.text=@"乙方联系人：";
        [_thirdview addSubview:_yflxrlab];

        _yfphonelab=[[UILabel alloc] initWithFrame:CGRectMake(10, 60, 120, 30)];
        // _jfphonelab.backgroundColor=[UIColor redColor];

        _yfphonelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
        _yfphonelab.text=@"联系人手机号：";
        [_thirdview addSubview:_yfphonelab];

        _yfdzlab=[[UILabel alloc] initWithFrame:CGRectMake(10, 90, 80, 30)];
        //  _jfdzlab.backgroundColor=[UIColor redColor];

        _yfdzlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
        _yfdzlab.text=@"地址：";
        [_thirdview addSubview:_yfdzlab];

        _ckyqbtn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, _thirdview.frame.size.width-40, 35)];
        [_ckyqbtn setTitle:@"查看详情" forState:UIControlStateNormal];
        _ckyqbtn.center=CGPointMake(_thirdview.frame.size.width/2, 150);
        _ckyqbtn.backgroundColor=[UIColor colorWithRed:129.0/255 green:160.0/255 blue:194.0/255 alpha:1];;
        _ckyqbtn.titleLabel.font=[UIFont systemFontOfSize:15];
        _ckyqbtn.layer.cornerRadius=3;
        _ckyqbtn.layer.masksToBounds=YES;
        [_thirdview addSubview:_ckyqbtn];






        //值

        _contractnumberlab1=[[UILabel alloc] initWithFrame:CGRectMake(80, 0, 200, 30)];
        //_contractnumberlab.backgroundColor=[UIColor redColor];
        //_contractnumberlab.textAlignment=NSTextAlignmentCenter;
        _contractnumberlab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
      //  _contractnumberlab1.text=@"合同编号：";
        [_nailview addSubview:_contractnumberlab1];

        _contractnamelab1=[[UILabel alloc] initWithFrame:CGRectMake(80, 30, 200, 30)];
        // _contractnamelab.backgroundColor=[UIColor redColor];
        // _contractnamelab.textAlignment=NSTextAlignmentCenter;
        _contractnamelab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
       // _contractnamelab1.text=@"合同名称：";
        [_nailview addSubview:_contractnamelab1];

        _contracttypelab1=[[UILabel alloc] initWithFrame:CGRectMake(80, 60, 200, 30)];
        //_contracttypelab.backgroundColor=[UIColor redColor];
        // _contracttypelab.textAlignment=NSTextAlignmentCenter;
        _contracttypelab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
       // _contracttypelab1.text=@"合同类型：";
        [_nailview addSubview:_contracttypelab1];

        _productnaemlab1=[[UILabel alloc] initWithFrame:CGRectMake(80, 90, 200, 30)];
        // _productnaemlab.backgroundColor=[UIColor redColor];
        //  _productnaemlab.textAlignment=NSTextAlignmentCenter;
        _productnaemlab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
       // _productnaemlab1.text=@"产品名称：";
        [_nailview addSubview:_productnaemlab1];

        _contracttotallab1=[[UILabel alloc] initWithFrame:CGRectMake(80, 120, 200, 30)];
        // _contracttotallab.backgroundColor=[UIColor redColor];
        // _contracttotallab.textAlignment=NSTextAlignmentCenter;
        _contracttotallab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
       // _contracttotallab1.text=@"合同总量：";
        [_nailview addSubview:_contracttotallab1];

        _contractmoneylab1=[[UILabel alloc] initWithFrame:CGRectMake(80, 150, 200, 30)];
        // _contractmoneylab.backgroundColor=[UIColor redColor];
        // _contractmoneylab.textAlignment=NSTextAlignmentCenter;
        _contractmoneylab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
       // _contractmoneylab1.text=@"总    额：";
        [_nailview addSubview:_contractmoneylab1];

        _hscontracttotallab1=[[UILabel alloc] initWithFrame:CGRectMake(110, 180, 200, 30)];
        //_hscontracttotallab.backgroundColor=[UIColor redColor];
        //_hscontracttotallab.textAlignment=NSTextAlignmentCenter;
        _hscontracttotallab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
      //  _hscontracttotallab1.text=@"历史收货总量：";
        [_nailview addSubview:_hscontracttotallab1];

        _dtcontractmoneylab1=[[UILabel alloc] initWithFrame:CGRectMake(110, 210, 200, 30)];
        //_dtcontractmoneylab.backgroundColor=[UIColor redColor];
        //_dtcontractmoneylab.textAlignment=NSTextAlignmentCenter;
        _dtcontractmoneylab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
       // _dtcontractmoneylab1.text=@"当天收货总量：";
        [_nailview addSubview:_dtcontractmoneylab1];


        //甲方
        _jfmclab1=[[UILabel alloc] initWithFrame:CGRectMake(80, 0, 200, 30)];
        //_jfmclab.backgroundColor=[UIColor redColor];

        _jfmclab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
       // _jfmclab1.text=@"甲方名称：";
        [_secondview addSubview:_jfmclab1];

        _jflxrlab1=[[UILabel alloc] initWithFrame:CGRectMake(90, 30, 200, 30)];
        // _jflxrlab.backgroundColor=[UIColor redColor];

        _jflxrlab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
        //_jflxrlab1.text=@"甲方联系人：";
        [_secondview addSubview:_jflxrlab1];

        _jfphonelab1=[[UILabel alloc] initWithFrame:CGRectMake(110, 60, 200, 30)];
        // _jfphonelab.backgroundColor=[UIColor redColor];

        _jfphonelab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
       // _jfphonelab1.text=@"联系人手机号：";
        [_secondview addSubview:_jfphonelab1];

        _jfdzlab1=[[UILabel alloc] initWithFrame:CGRectMake(50, 90, 200, 30)];
        //  _jfdzlab.backgroundColor=[UIColor redColor];

        _jfdzlab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
       // _jfdzlab1.text=@"地址：";
        [_secondview addSubview:_jfdzlab1];

        //乙方

        _yfmclab1=[[UILabel alloc] initWithFrame:CGRectMake(80, 0, 200, 30)];
        //_jfmclab.backgroundColor=[UIColor redColor];

        _yfmclab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
       // _yfmclab1.text=@"乙方名称：";
        [_thirdview addSubview:_yfmclab1];

        _yflxrlab1=[[UILabel alloc] initWithFrame:CGRectMake(90, 30, 200, 30)];
        // _jflxrlab.backgroundColor=[UIColor redColor];

        _yflxrlab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
       // _yflxrlab1.text=@"乙方联系人：";
        [_thirdview addSubview:_yflxrlab1];

        _yfphonelab1=[[UILabel alloc] initWithFrame:CGRectMake(110, 60, 200, 30)];
        // _jfphonelab.backgroundColor=[UIColor redColor];

        _yfphonelab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
        //_yfphonelab1.text=@"联系人手机号：";
        [_thirdview addSubview:_yfphonelab1];

        _yfdzlab1=[[UILabel alloc] initWithFrame:CGRectMake(50, 90, 200, 30)];
        //  _jfdzlab.backgroundColor=[UIColor redColor];

        _yfdzlab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:13];
       // _yfdzlab1.text=@"地址：";
        [_thirdview addSubview:_yfdzlab1];


        
        [self addSubview:_nailview];
        [self addSubview:_secondview];
        [self addSubview:_thirdview];
    }
    return self;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
