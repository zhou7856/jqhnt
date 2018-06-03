//
//  MessageTableViewCell.h
//  jqhnt
//
//  Created by asd on 2018/6/1.
//  Copyright © 2018年 asd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessageTableViewCell : UITableViewCell

@property (nonatomic, strong) UIImageView *headImgView;//头像

@property (strong, nonatomic)  UILabel *messageNumLab;//消息条数

@property (strong, nonatomic)  UILabel *messNameLab;//公司名
@property (strong, nonatomic)  UILabel *messNeirongLab;//消息内容
@property (strong, nonatomic)  UILabel *messageTimeLab;//消息时间


-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;

@end
