//
//  MyCourseTableViewCell.m
//  MCZhongYi
//
//  Created by MC on 2016/12/7.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "MyCourseTableViewCell.h"

@implementation MyCourseTableViewCell
-(void)prepareUI{
    
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    CGFloat selfViewh = MCAdaptiveH(750, 280, Main_Screen_Width);
    CGFloat x = 8;
    CGFloat y = 8;
    CGFloat h = selfViewh - y *2;
    CGFloat w = MCAdaptiveW(300, 240, h);
    
    UIImageView * imgview = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    imgview.image =[UIImage imageNamed:@"def_organ-class"];
    [self.contentView addSubview:imgview];
    
    CGFloat lw = [MCIucencyView heightforString:@"一对一" andHeight:20 fontSize:14];
    UIImageView * bgImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 10, lw + 10, 20)];
    bgImg.image = [UIImage imageNamed:@"pic_class-bg"];
    [imgview addSubview:bgImg];
    UILabel * lbl = [[UILabel alloc]initWithFrame:CGRectMake(5, 0, lw, 20)];
    lbl.textColor = [UIColor darkTextColor];
    lbl.font = [UIFont systemFontOfSize:14];
    lbl.text = @"一对一";
    [bgImg addSubview:lbl];

    
    x = imgview.mj_x +imgview.mj_w + 5;
    y = 8;
    w = Main_Screen_Width - x - 5;
    h = 40;
    
    lbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lbl.textColor = [UIColor darkTextColor];
    lbl.font = [UIFont systemFontOfSize:15];
    lbl.text = @"激情激情激情激情激情激情激情激情激情激情激情激情激情激情激情激情激情激情激情激情";
    lbl.numberOfLines = 0;
    [self.contentView addSubview:lbl];
    
    y +=h + 5;
    h = 20;
    lbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lbl.textColor = [UIColor lightGrayColor];
    lbl.font = [UIFont systemFontOfSize:13];
    lbl.text = @"不知名机构";
    [self.contentView addSubview:lbl];
    
    y = imgview.mj_y + imgview.mj_h - 20;
    lbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lbl.textColor = [UIColor redColor];
    lbl.font = [UIFont systemFontOfSize:15];
    lbl.text = @"￥238";
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
