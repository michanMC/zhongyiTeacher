//
//  SelectLeaClassTableViewCell.m
//  MCZhongYi
//
//  Created by MC on 2016/12/11.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "SelectLeaClassTableViewCell.h"

@implementation SelectLeaClassTableViewCell
-(void)prepareUI{
    
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    
    CGFloat x = 5;
    CGFloat selfViewh = MCAdaptiveH(750, 283, Main_Screen_Width);
    CGFloat y = 10;
    CGFloat h = selfViewh - 20;
    CGFloat imgw = MCAdaptiveW(300, 240, h);
    UIImageView  * imgView = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, imgw, h)];
    imgView.image = [UIImage imageNamed:@"def_organ-class"];
    [self.contentView addSubview:imgView];
    CGFloat lw = [MCIucencyView heightforString:@"一对一" andHeight:20 fontSize:14];
    UIImageView * bgImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 10, lw + 10, 20)];
    bgImg.image = [UIImage imageNamed:@"pic_class-bg"];
    [imgView addSubview:bgImg];
    UILabel * lbl = [[UILabel alloc]initWithFrame:CGRectMake(5, 0, lw, 20)];
    lbl.textColor = [UIColor darkTextColor];
    lbl.font = [UIFont systemFontOfSize:14];
    lbl.text = @"一对一";
    [bgImg addSubview:lbl];
    x =  imgView.mj_x + imgView.mj_w + 5;
    CGFloat  w = Main_Screen_Width - x - 5;
    h = 40;
    y += 3;
    
    UILabel * titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    titleLbl.text = @"艺术艺术艺术艺术艺术艺术艺术艺术艺术艺术艺术艺术艺术艺术艺术艺术艺术艺术艺术艺术艺术艺术艺术";
    titleLbl.textColor = [UIColor darkTextColor];
    titleLbl.font = [UIFont systemFontOfSize:15];
        titleLbl.numberOfLines = 0;
    [self.contentView addSubview:titleLbl];
    y+=h + 7;
    h = 20;
    UILabel * oLbl =[[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    oLbl.text = @"不知名机构";
    oLbl.textColor = [UIColor lightGrayColor];
    oLbl.font = [UIFont systemFontOfSize:13];
    [self.contentView addSubview:oLbl];


    y = imgView.mj_y + imgView.mj_h - 20;
    
    UILabel * priceLbl =[[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    priceLbl.text = @"￥2300.00";
    priceLbl.textColor = [UIColor redColor];
    priceLbl.font = [UIFont systemFontOfSize:16];
    [self.contentView addSubview:priceLbl];

    
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
