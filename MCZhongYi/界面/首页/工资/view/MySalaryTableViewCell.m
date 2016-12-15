//
//  MySalaryTableViewCell.m
//  MCZhongYi
//
//  Created by MC on 2016/12/7.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "MySalaryTableViewCell.h"

@implementation MySalaryTableViewCell
-(void)prepareUI{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    CGFloat x = 10;
    CGFloat y = 0;
    CGFloat h = 44;
    CGFloat w = Main_Screen_Width/2;

    UILabel * lbl =  [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lbl.textColor = [UIColor darkTextColor];
    lbl.font = [UIFont systemFontOfSize:15];
    lbl.text = @"2016年9月";
    [self.contentView addSubview:lbl];

    x = Main_Screen_Width/2;
    w = Main_Screen_Width/2 - 30;
    lbl =  [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lbl.textAlignment = NSTextAlignmentRight;
    lbl.textColor = [UIColor darkTextColor];
    lbl.font = [UIFont systemFontOfSize:15];
    lbl.text = @"￥199999";
    [self.contentView addSubview:lbl];
    
    
    
    
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
