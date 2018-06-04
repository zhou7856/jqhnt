//
//  MessageTableViewCell.m
//  jqhnt
//
//  Created by asd on 2018/6/1.
//  Copyright © 2018年 asd. All rights reserved.
//

#import "MessageTableViewCell.h"

@implementation MessageTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {

        UIView  *rView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64)];
         //rView.backgroundColor=[UIColor redColor];

        UIView *lineTop = [[UIView alloc] initWithFrame:CGRectMake(0, rView.frame.size.height-0.5, rView.frame.size.width, 0.5)];
        lineTop.backgroundColor = [UIColor lightGrayColor];
        [rView addSubview:lineTop];

        [self addSubview:rView];
        _headImgView=[[UIImageView alloc] initWithFrame:CGRectMake(10, 7, 50, 50)];
        _headImgView.backgroundColor=[UIColor yellowColor];
        _headImgView.layer.cornerRadius=25;
        _headImgView.layer.masksToBounds=YES;
        [rView addSubview:_headImgView];

        _messageNumLab=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 15, 15)];
        _messageNumLab.center=CGPointMake(_headImgView.frame.origin.x+_headImgView.frame.size.width-7.5, _headImgView.frame.origin.y+7.5);
//        _messageNumLab.backgroundColor=[UIColor redColor];
       // _messageNumLab.text=@"11";
        _messageNumLab.font=[UIFont systemFontOfSize:12];
        _messageNumLab.textColor=[UIColor whiteColor];
        _messageNumLab.textAlignment=NSTextAlignmentCenter;
        _messageNumLab.layer.cornerRadius=7.5;
        _messageNumLab.layer.masksToBounds=YES;
         [rView addSubview:_messageNumLab];

        _companyNameLab=[[UILabel alloc] initWithFrame:CGRectMake(_headImgView.frame.origin.x+_headImgView.frame.size.width+10, 7, 200, 20)];
        //_companyNameLab.text=@"安琥PPPPpp有限公司";
        _companyNameLab.textColor=[UIColor colorWithRed:39.0/255 green:39.0/255 blue:39.0/255 alpha:1];
        _companyNameLab.font=[UIFont systemFontOfSize:12];
        [rView addSubview:_companyNameLab];

        _messNeirongLab=[[UILabel alloc] initWithFrame:CGRectMake(_headImgView.frame.origin.x+_headImgView.frame.size.width+10, rView.frame.size.height-27, 200, 20)];
        //_messNeirongLab.text=@"您的二月对账单已送达";
        _messNeirongLab.textColor=[UIColor colorWithRed:146.0/255 green:146.0/255 blue:146.0/255 alpha:1];
        _messNeirongLab.font=[UIFont systemFontOfSize:11];
        [rView addSubview:_messNeirongLab];

        _messageTimeLab=[[UILabel alloc] initWithFrame:CGRectMake(rView.frame.size.width-110, 7, 100, 20)];
        //_messageTimeLab.text=@"2018/03/04";
        _messageTimeLab.textAlignment=NSTextAlignmentRight;
        _messageTimeLab.textColor=[UIColor colorWithRed:39.0/255 green:39.0/255 blue:39.0/255 alpha:1];
        _messageTimeLab.font=[UIFont systemFontOfSize:12];
        [rView addSubview:_messageTimeLab];

    }
    return self;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
