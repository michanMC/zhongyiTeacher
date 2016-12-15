//
//  SalaryDetailsTableViewCell.m
//  MCZhongYi
//
//  Created by MC on 2016/12/8.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "SalaryDetailsTableViewCell.h"

@implementation SalaryDetailsTableViewCell
-(void)prepareUI{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    CGFloat selfviewH = MCAdaptiveH(740, 105, Main_Screen_Width);
    
    CGFloat y = 3;
    CGFloat w = 8;
    CGFloat h = selfviewH - y;
    CGFloat x = (Main_Screen_Width - w)/2;
    UIImageView * imgview = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    imgview.image =[UIImage imageNamed:@"line_salary"];
    [self.contentView addSubview:imgview];
    
    x = 0;
    y = 0;
    w = Main_Screen_Width/2 - 72/2;
    h = 20;
    _titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _titleLbl.text = @"底薪";
    _titleLbl.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:_titleLbl];
    
    
    x = Main_Screen_Width/2 + 54/2;
    w = Main_Screen_Width - x;
    _moneyLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _moneyLbl.text = @"￥10000.00";
    _moneyLbl.textColor = AppMCNATitleCOLOR;
    [self.contentView addSubview:_moneyLbl];

    
    
    
}
-(void)prepareUI2{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    CGFloat selfviewH = MCAdaptiveH(740, 105, Main_Screen_Width);
    
    CGFloat y = 3;
    CGFloat w = 8;
    CGFloat h = selfviewH - y;
    CGFloat x = (Main_Screen_Width - w)/2;
    UIImageView * imgview = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    imgview.image =[UIImage imageNamed:@"line_salary"];
    [self.contentView addSubview:imgview];
    
    x = 0;
    y = 0;
    w = Main_Screen_Width/2 - 72/2;
    h = 20;
    _titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _titleLbl.text = @"底薪";
    _titleLbl.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:_titleLbl];
    
    
    x = Main_Screen_Width/2 + 54/2;
    w = Main_Screen_Width - x;
    _moneyLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _moneyLbl.text = @"￥10000.00";
    _moneyLbl.textColor = AppMCNATitleCOLOR;
    [self.contentView addSubview:_titleLbl];
    
    
    
    
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
