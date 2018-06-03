//
//  RefundTableViewCell.m
//  jqhnt
//
//  Created by asd on 2018/5/31.
//  Copyright © 2018年 asd. All rights reserved.
//

#import "RefundTableViewCell.h"

@implementation RefundTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {

        _oneview=[[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 150)];
         // _oneview.backgroundColor=[UIColor redColor];

        _twoview=[[UIView alloc] initWithFrame:CGRectMake(0,_oneview.frame.origin.y+_oneview.frame.size.height, [UIScreen mainScreen].bounds.size.width, 40)];
         //_twoview.backgroundColor=[UIColor yellowColor];

        _contractnumberlab=[[UILabel alloc] initWithFrame:CGRectMake(10, 0, 75, 37.5)];
        //_contractnumberlab.backgroundColor=[UIColor redColor];
        //_contractnumberlab.textAlignment=NSTextAlignmentCenter;
        _contractnumberlab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
        _contractnumberlab.text=@"订单编号：";
        [_oneview addSubview:_contractnumberlab];

        _contractnamelab=[[UILabel alloc] initWithFrame:CGRectMake(10, 30, 60, 37.5)];
        _contractnamelab.textColor=[UIColor colorWithRed:155.0/255.0 green:183.0/255.0 blue:214.0/255.0 alpha:1];
        _contractnamelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
        _contractnamelab.text=@"品  名：";
        [_oneview addSubview:_contractnamelab];

        _contracttotallab=[[UILabel alloc] initWithFrame:CGRectMake(10, 60, 75, 37.5)];
        //_contractnumberlab.backgroundColor=[UIColor redColor];
        //_contractnumberlab.textAlignment=NSTextAlignmentCenter;
        _contracttotallab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
        _contracttotallab.text=@"订单总量：";
        [_oneview addSubview:_contracttotallab];

        _contractmoneylab=[[UILabel alloc] initWithFrame:CGRectMake(10, 90, 60, 37.5)];
        //_contractnumberlab.backgroundColor=[UIColor redColor];
        //_contractnumberlab.textAlignment=NSTextAlignmentCenter;
        _contractmoneylab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
        _contractmoneylab.text=@"总  额：";
        [_oneview addSubview:_contractmoneylab];

        _xdtimelab=[[UILabel alloc] initWithFrame:CGRectMake(10, 120, 75, 37.5)];
        //_contractnumberlab.backgroundColor=[UIColor redColor];
        //_contractnumberlab.textAlignment=NSTextAlignmentCenter;
        _xdtimelab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
        _xdtimelab.text=@"下单时间：";
        [_oneview addSubview:_xdtimelab];
      
        _contractnumberlab1=[[UILabel alloc] initWithFrame:CGRectMake(_contractnumberlab.frame.origin.x+_contractnumberlab.frame.size.width+10, 0, 150, 37.5)];
        //_contractnumberlab.backgroundColor=[UIColor redColor];
        //_contractnumberlab.textAlignment=NSTextAlignmentCenter;
        _contractnumberlab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
        //_contractnumberlab1.text=@"订单编号：";
        [_oneview addSubview:_contractnumberlab1];


        _contractnamelab1=[[UILabel alloc] initWithFrame:CGRectMake(_contractnamelab.frame.origin.x+_contractnamelab.frame.size.width+10, 30, 120, 37.5)];
        _contractnamelab1.textColor=[UIColor colorWithRed:155.0/255.0 green:183.0/255.0 blue:214.0/255.0 alpha:1];
        _contractnamelab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
      //  _contractnamelab1.text=@"品  名：";
        [_oneview addSubview:_contractnamelab1];

        _contracttotallab1=[[UILabel alloc] initWithFrame:CGRectMake(_contracttotallab.frame.origin.x+_contracttotallab.frame.size.width+10, 60, 120, 37.5)];
        //_contractnumberlab.backgroundColor=[UIColor redColor];
        //_contractnumberlab.textAlignment=NSTextAlignmentCenter;
        _contracttotallab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
       // _contracttotallab1.text=@"订单总量：";
        [_oneview addSubview:_contracttotallab1];

        _contractmoneylab1=[[UILabel alloc] initWithFrame:CGRectMake(_contractmoneylab.frame.origin.x+_contractmoneylab.frame.size.width+10, 90, 120, 37.5)];
        //_contractnumberlab.backgroundColor=[UIColor redColor];
        //_contractnumberlab.textAlignment=NSTextAlignmentCenter;
        _contractmoneylab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
      //  _contractmoneylab1.text=@"总  额：";
        [_oneview addSubview:_contractmoneylab1];

        _xdtimelab1=[[UILabel alloc] initWithFrame:CGRectMake(_xdtimelab.frame.origin.x+_xdtimelab.frame.size.width+10, 120, 200, 37.5)];
        //_contractnumberlab.backgroundColor=[UIColor redColor];
        //_contractnumberlab.textAlignment=NSTextAlignmentCenter;
        _xdtimelab1.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
        //_xdtimelab1.text=@"下单时间：";
        [_oneview addSubview:_xdtimelab1];


        UIView *lineTop1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, _twoview.frame.size.width, 1)];
        lineTop1.backgroundColor = [UIColor lightGrayColor];
        [_twoview addSubview:lineTop1];

        UIView *lineTop2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, _twoview.frame.size.width, 0.5)];
        lineTop2.backgroundColor = [UIColor lightGrayColor];
        [_oneview addSubview:lineTop2];

//        UIView *lineBottom1 = [[UIView alloc] initWithFrame:CGRectMake(0, _twoview.frame.size.height-1, _twoview.frame.size.width, 1)];
//        lineBottom1.backgroundColor = [UIColor lightGrayColor];
//        [_twoview addSubview:lineBottom1];


        _scview=[[UIView alloc] initWithFrame:CGRectMake(_twoview.frame.size.width-60, 10, 50, 20)];
        _scview.backgroundColor=[UIColor whiteColor];

        UIView *lineTop_scview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, _scview.frame.size.width, 0.5)];
        lineTop_scview.backgroundColor = [UIColor colorWithRed:252.0/255.0 green:116.0/255.0 blue:120/255.0 alpha:1];
        [_scview addSubview:lineTop_scview];

        UIView *lineleft_scview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0.5, _scview.frame.size.height)];
        lineleft_scview.backgroundColor = [UIColor colorWithRed:252.0/255.0 green:116.0/255.0 blue:120/255.0 alpha:1];
        [_scview addSubview:lineleft_scview];


        UIView *linebottom_scview = [[UIView alloc] initWithFrame:CGRectMake(0, _scview.frame.size.height-0.5, _scview.frame.size.width, 0.5)];
        linebottom_scview.backgroundColor = [UIColor colorWithRed:252.0/255.0 green:116.0/255.0 blue:120/255.0 alpha:1];
        [_scview addSubview:linebottom_scview];

        UIView *lineright_scview = [[UIView alloc] initWithFrame:CGRectMake(_scview.frame.size.width-0.5, 0, 0.5, _scview.frame.size.height)];
        lineright_scview.backgroundColor =[UIColor colorWithRed:252.0/255.0 green:116.0/255.0 blue:120/255.0 alpha:1];
        [_scview addSubview:lineright_scview];

        UILabel *sclab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, _scview.frame.size.width, _scview.frame.size.height)];
        sclab.text=@"退单";
        sclab.textColor=[UIColor colorWithRed:252.0/255.0 green:116.0/255.0 blue:120/255.0 alpha:1];
        sclab.textAlignment=NSTextAlignmentCenter;
        sclab.font=[UIFont fontWithName:@"AmericanTypewriter" size:15];
        [_scview addSubview:sclab];
        [_twoview addSubview:_scview];

        //审核中按钮

        _tdqbtn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, 20)];

        [_scview addSubview:_tdqbtn];

        [self addSubview:_oneview];
        [self addSubview:_twoview];

    }
    return self;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
