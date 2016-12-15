//
//  SettingTableViewCell.m
//  MCZhongYi
//
//  Created by MC on 2016/12/12.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "SettingTableViewCell.h"

@implementation SettingTableViewCell
-(void)prepareUI{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    _titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, 1000, 44)];
    _titleLbl.font =[UIFont systemFontOfSize:15];
    [self.contentView addSubview:_titleLbl];
    
    _titlesubLbl =[[UILabel alloc]initWithFrame:CGRectMake(110, 0, Main_Screen_Width - 30 -  110, 44)];
    _titlesubLbl.font =[UIFont systemFontOfSize:14];
    _titlesubLbl.textAlignment = NSTextAlignmentRight;
    _titlesubLbl.textColor  =[UIColor lightGrayColor];
    [self.contentView addSubview:_titlesubLbl];
    
    
    
    
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
