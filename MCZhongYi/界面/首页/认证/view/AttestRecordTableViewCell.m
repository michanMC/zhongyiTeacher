//
//  AttestRecordTableViewCell.m
//  MCZhongYi
//
//  Created by MC on 2016/12/11.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "AttestRecordTableViewCell.h"

@implementation AttestRecordTableViewCell


-(void)prepareUI{
    
    for (UIView *view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    self.contentView.backgroundColor = AppBgCOLOR;
    CGFloat x = 10;
    CGFloat y = 0;
    CGFloat w = Main_Screen_Width - 2*x;
    CGFloat h = 5+ 30+5 + 0.5 + 8 +20 + 8 + 20 + 8;
    UIView * bgview = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    bgview.backgroundColor =[UIColor whiteColor];
    ViewBorderRadius(bgview, 3, 1, [UIColor groupTableViewBackgroundColor]);
    [self.contentView addSubview:bgview];
    
    
    x = 5;
    y = 5;
    w = 30;
    h = w;
    UIButton * headbtn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [headbtn setImage:[UIImage imageNamed:@"def_head112"] forState:0];
    ViewRadius(headbtn, w/2);
    [bgview addSubview:headbtn];
    
    x +=w + 8;
    w = Main_Screen_Width - x - 110;
    UILabel * lbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lbl.text = @"michan";
    lbl.textColor = [UIColor darkTextColor];
    lbl.font = [UIFont systemFontOfSize:15];
    [bgview addSubview:lbl];

    x = bgview.mj_w - 10 - 100;
    w = 100;
    
    lbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lbl.text = @"待审核";
    lbl.textAlignment = NSTextAlignmentRight;
    lbl.textColor = [UIColor lightGrayColor];
    lbl.font = [UIFont systemFontOfSize:15];
    [bgview addSubview:lbl];

    y+=h + 5;
    x = 5;
    w = bgview.mj_w - 10;
    h = 0.5;
    
    UIView * lineView = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lineView.backgroundColor =[UIColor groupTableViewBackgroundColor];
    [bgview addSubview:lineView];

    
    y +=h + 8;
    h = 20;
    lbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lbl.text = @"认证时间: 2016-05-09 12:20";
    lbl.textColor = [UIColor grayColor];
    lbl.font = [UIFont systemFontOfSize:14];
    [bgview addSubview:lbl];

    y +=h + 8;
    
    lbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lbl.text = @"认证机构: 不知名机构";
    lbl.textColor = [UIColor grayColor];
    lbl.font = [UIFont systemFontOfSize:14];
    [bgview addSubview:lbl];

    
    
    
    
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
