//
//  RefundTableViewCell.h
//  jqhnt
//
//  Created by asd on 2018/5/31.
//  Copyright © 2018年 asd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RefundTableViewCell : UITableViewCell


@property (nonatomic, strong) UIView *oneview;
@property (nonatomic, strong) UIView *twoview;


@property (nonatomic, strong) UIView *scview;
@property (nonatomic, strong) UIView *shzview;
@property (strong, nonatomic)  UIButton *tdqbtn;//退单
@property (strong, nonatomic)  UILabel *contractnumberlab;//订单编号
@property (strong, nonatomic)  UILabel *contractnamelab;//品名
@property (strong, nonatomic)  UILabel *contracttotallab;//合同总量
@property (strong, nonatomic)  UILabel *contractmoneylab;//总额
@property (strong, nonatomic)  UILabel *xdtimelab;//下单时间

//值

@property (strong, nonatomic)  UILabel *contractnumberlab1;//订单编号
@property (strong, nonatomic)  UILabel *contractnamelab1;//品名
@property (strong, nonatomic)  UILabel *contracttotallab1;//合同总量
@property (strong, nonatomic)  UILabel *contractmoneylab1;//总额
@property (strong, nonatomic)  UILabel *xdtimelab1;//下单时间

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;


@end
