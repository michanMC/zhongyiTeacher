//
//  LeaveRecordTableViewCell.m
//  MCZhongYi
//
//  Created by MC on 2016/12/11.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "LeaveRecordTableViewCell.h"

@implementation LeaveRecordTableViewCell
-(void)prepareUI{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    
    CGFloat x = 15;
    CGFloat w = 44;
    CGFloat y = (60 - 44)/2;
    CGFloat h = w;
    
    UIButton * headerBtn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    ViewRadius(headerBtn, w /2);
    [headerBtn setImage:[UIImage imageNamed:@"def_head112"] forState:0];
    [self.contentView addSubview:headerBtn];
    
    x +=w +15;
    w = Main_Screen_Width - x - 100;
    h = 20;
    UILabel * nameLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    nameLbl.text =@"michan";
    nameLbl.textColor =[UIColor darkTextColor];
    nameLbl.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:nameLbl];

    y = headerBtn.mj_h + headerBtn.mj_y - 20;
    UILabel * timeLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    timeLbl.text =@"2016-04-08";
    timeLbl.textColor =[UIColor lightGrayColor];
    timeLbl.font = [UIFont systemFontOfSize:14];
    [self.contentView addSubview:timeLbl];
    
    
    x = 0;
    y = 0;
    w = Main_Screen_Width - 10;
    h = 60;
    UILabel * tyepLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    tyepLbl.text =@"待确认";
    tyepLbl.textColor =AppMCNATitleCOLOR;
    tyepLbl.textAlignment = NSTextAlignmentRight;
    tyepLbl.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:tyepLbl];

    
    
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
