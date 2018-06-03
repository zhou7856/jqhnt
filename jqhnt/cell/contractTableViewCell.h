//
//  contractTableViewCell.h
//  jqhnt
//
//  Created by asd on 2018/5/30.
//  Copyright © 2018年 asd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface contractTableViewCell : UITableViewCell

@property (nonatomic, strong) UIView *nailview;
@property (nonatomic, strong) UIView *secondview;
@property (nonatomic, strong) UIView *thirdview;

@property (strong, nonatomic)  UIButton *ckyqbtn;//查看详情

@property (strong, nonatomic)  UILabel *contractnumberlab;//合同编号
@property (strong, nonatomic)  UILabel *contractnamelab;//合同名
@property (strong, nonatomic)  UILabel *contracttypelab;//合同类型
@property (strong, nonatomic)  UILabel *productnaemlab;//产品名称
@property (strong, nonatomic)  UILabel *contracttotallab;//合同总量
@property (strong, nonatomic)  UILabel *contractmoneylab;//总额
@property (strong, nonatomic)  UILabel *hscontracttotallab;//历史收货总量
@property (strong, nonatomic)  UILabel *dtcontractmoneylab;//单天收货总量
//甲
@property (strong, nonatomic)  UILabel *jfmclab;//甲方名称
@property (strong, nonatomic)  UILabel *jflxrlab;//甲方联系人
@property (strong, nonatomic)  UILabel *jfphonelab;//联系人手机号
@property (strong, nonatomic)  UILabel *jfdzlab;//地址
//乙
@property (strong, nonatomic)  UILabel *yfmclab;//乙方名称
@property (strong, nonatomic)  UILabel *yflxrlab;//乙方联系人
@property (strong, nonatomic)  UILabel *yfphonelab;//联系人手机号
@property (strong, nonatomic)  UILabel *yfdzlab;//地址


//值
@property (strong, nonatomic)  UILabel *contractnumberlab1;//合同编号
@property (strong, nonatomic)  UILabel *contractnamelab1;//合同名
@property (strong, nonatomic)  UILabel *contracttypelab1;//合同类型
@property (strong, nonatomic)  UILabel *productnaemlab1;//产品名称
@property (strong, nonatomic)  UILabel *contracttotallab1;//合同总量
@property (strong, nonatomic)  UILabel *contractmoneylab1;//总额
@property (strong, nonatomic)  UILabel *hscontracttotallab1;//历史收货总量
@property (strong, nonatomic)  UILabel *dtcontractmoneylab1;//单天收货总量
//甲
@property (strong, nonatomic)  UILabel *jfmclab1;//甲方名称
@property (strong, nonatomic)  UILabel *jflxrlab1;//甲方联系人
@property (strong, nonatomic)  UILabel *jfphonelab1;//联系人手机号
@property (strong, nonatomic)  UILabel *jfdzlab1;//地址
//乙
@property (strong, nonatomic)  UILabel *yfmclab1;//乙方名称
@property (strong, nonatomic)  UILabel *yflxrlab1;//乙方联系人
@property (strong, nonatomic)  UILabel *yfphonelab1;//联系人手机号
@property (strong, nonatomic)  UILabel *yfdzlab1;//地址



-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;

@end
