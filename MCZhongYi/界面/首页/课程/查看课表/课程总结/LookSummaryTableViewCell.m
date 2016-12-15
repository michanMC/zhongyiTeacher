//
//  LookSummaryTableViewCell.m
//  MCZhongYi
//
//  Created by MC on 2016/12/10.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "LookSummaryTableViewCell.h"

@implementation LookSummaryTableViewCell
-(void)prepareUI1{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
        
    }
    CGFloat x = 10;
    CGFloat y = 5;
    CGFloat w = 40;
    CGFloat h = 40;
    _headerBtn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [_headerBtn setImage:[UIImage imageNamed:@"def_head112"] forState:0];
    ViewRadius(_headerBtn, 40/2);
    [self.contentView addSubview:_headerBtn];
    
    
    x +=w + 10;
    w = Main_Screen_Width / 2 - x;
    _nameLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _nameLbl .text = @"michan";
    _nameLbl.textColor = [UIColor darkTextColor];
    _nameLbl.font =[UIFont systemFontOfSize:16];
    [self.contentView addSubview:_nameLbl];

    x = Main_Screen_Width/2;
    w = Main_Screen_Width/ 2 - 10;
    _timeLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _timeLbl .text = @"2016-09-09 14:00";
    _timeLbl.textAlignment = NSTextAlignmentRight;
    _timeLbl.textColor = [UIColor lightGrayColor];
    _timeLbl.font =[UIFont systemFontOfSize:14];
    [self.contentView addSubview:_timeLbl];
    
    UIView * lineView = [[UIView alloc]initWithFrame:CGRectMake(10, 49.5, Main_Screen_Width - 20, 0.5)];
    lineView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [self.contentView addSubview:lineView];
    
    
    
}
-(void)prepareUI2{
    
    
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
        
    }
    CGFloat x = 10;
    CGFloat y = 15;
    CGFloat w = Main_Screen_Width - 20;
    CGFloat h = 40;
    NSString * str = @"提起提起提起提起提起提起提起提起提起提起提起提起提起提起提起";
    h = [MCToolsManage heightforString:str andWidth:w fontSize:14];
    _titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _titleLbl.textColor = [UIColor grayColor];
    _titleLbl.numberOfLines = 0;
    _titleLbl.text = str;
    _titleLbl.font = [UIFont systemFontOfSize:14];
    [self.contentView addSubview:_titleLbl];
    
    
    
    
}
-(void)prepareUI3{
    
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
        
    }
    CGFloat x = 10;
    CGFloat y = 0;
    CGFloat w = Main_Screen_Width - 10 - 10;
    CGFloat h = 40;
    UIView * bgview = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    bgview.backgroundColor =[UIColor whiteColor];
    [self.contentView addSubview:bgview];
    
    CGFloat imgx = 0;
    CGFloat imgy = 0;
    CGFloat imgw = (w -10)/3;
    CGFloat imgh = imgw;
    
    for (NSInteger i =0; i < 9; i++) {
        UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(imgx, imgy, imgw, imgh)];
        [btn setImage:[UIImage imageNamed:@"def_organ-class"] forState:0];
        [bgview addSubview:btn];
        
        if (i == 2 || i == 5) {
            imgx = 0;
            imgy += imgh + 5;
        }
        else
        {
            imgx += imgw + 5;
        }
        
    }
    
    h = imgy + imgh;
    
    bgview.frame = CGRectMake(bgview.mj_x, bgview.mj_y, bgview.mj_w, h);
    
    
    
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
