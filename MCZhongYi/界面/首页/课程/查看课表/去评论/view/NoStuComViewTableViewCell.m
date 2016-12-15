//
//  NoStuComViewTableViewCell.m
//  MCZhongYi
//
//  Created by MC on 2016/12/9.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "NoStuComViewTableViewCell.h"

@implementation NoStuComViewTableViewCell
-(void)prepareUI{
    for (UIView * view  in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    
    CGFloat x = 10;
    CGFloat  y = 7;
    CGFloat w = 30;
    CGFloat h = 30;
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [btn setImage:[UIImage imageNamed:@"def_head-48"] forState:0];
    ViewRadius(btn, w/2);
    [self.contentView addSubview:btn];
    
    x += w + 5;
    y = 0;
    w = Main_Screen_Width / 2 - x;
    h = 44;
    UILabel * nameLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    nameLbl.text  = @"michan";
    nameLbl.textColor = [UIColor darkTextColor];
    nameLbl.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:nameLbl];

    x = Main_Screen_Width - 10 - 20;
    y = (44 -20)/2;
    w = 20;
    h = 20;
    
    
    
    _selectimg = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _selectimg.image = [UIImage imageNamed:@"btn_click"];
    [self.contentView addSubview:_selectimg];

    
    
    
    
}

-(void)prepareUI2{
    for (UIView * view  in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    
    CGFloat x = 10;
    CGFloat  y = 7;
    CGFloat w = 30;
    CGFloat h = 30;
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [btn setImage:[UIImage imageNamed:@"def_head-48"] forState:0];
    ViewRadius(btn, w/2);
    [self.contentView addSubview:btn];
    
    x += w + 5;
    y = 0;
    w = Main_Screen_Width / 2 - x;
    h = 44;
    UILabel * nameLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    nameLbl.text  = @"michan";
    nameLbl.textColor = [UIColor darkTextColor];
    nameLbl.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:nameLbl];
    
    
    NSString * btnStr = @"课程总结";
    CGFloat w1 = [MCToolsManage heightforString:btnStr andHeight:25 fontSize:15] + 10;
    x = Main_Screen_Width - 15 - w1;
    y = (44- 25)/2;
    h = 25;
 
    UIColor * cc = AppMCNATitleCOLOR;
    _tepyBtn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w1, h)];
    [_tepyBtn setTitle:@"查看评论" forState:0];

    [_tepyBtn setTitleColor:cc forState:0];
    _tepyBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_tepyBtn];

    
    
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
