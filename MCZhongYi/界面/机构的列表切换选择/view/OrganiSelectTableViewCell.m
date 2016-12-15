//
//  OrganiSelectTableViewCell.m
//  MCZhongYi
//
//  Created by MC on 2016/12/6.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "OrganiSelectTableViewCell.h"
#import "HCSStarRatingView.h"
@implementation OrganiSelectTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
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
    if (_Organistate == MyOrgani_list) {
        CGFloat lw = [MCIucencyView heightforString:@"一对一" andHeight:20 fontSize:14];
        UIImageView * bgImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 10, lw + 10, 20)];
        bgImg.image = [UIImage imageNamed:@"pic_class-bg"];
        [imgView addSubview:bgImg];
        UILabel * lbl = [[UILabel alloc]initWithFrame:CGRectMake(5, 0, lw, 20)];
        lbl.textColor = [UIColor darkTextColor];
        lbl.font = [UIFont systemFontOfSize:14];
        lbl.text = @"一对一";
        [bgImg addSubview:lbl];

        
        
        
    }
    
    
    
    x =  imgView.mj_x + imgView.mj_w + 5;
  CGFloat  w = Main_Screen_Width - x - 5;
    
    
    if (_Organistate == MyOrgani_switch) {
        h = 40;
    }
    else
    {
        h = 20;
    }
    y += 3;
    
    UILabel * titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    titleLbl.text = @"艺术培训机构艺术培训机构艺术培训机构艺术培训机构艺术培训机构";
    titleLbl.textColor = [UIColor darkTextColor];
    titleLbl.font = [UIFont systemFontOfSize:15];
    if (_Organistate == MyOrgani_switch) {
        titleLbl.numberOfLines = 0;
    }
    [self.contentView addSubview:titleLbl];
    
    y+=h + 10;
    h = 20;
    w = w/2;
   HCSStarRatingView* starRatingView  = [[HCSStarRatingView alloc] initWithFrame:CGRectMake(x, y, w, h)];
    starRatingView.maximumValue = 5;
    starRatingView.minimumValue = 0;
    starRatingView.value = 4.5f;
    starRatingView.tintColor = [UIColor redColor];
    starRatingView.enabled = NO;
    [self.contentView addSubview:starRatingView];

    h = 20;
    w = 20;
    y = selfViewh - 10 - h;
    UIImageView * mapView = [[UIImageView alloc]initWithFrame:CGRectMake(x, y+2.5, w-6.5, h-5)];
    mapView.image = [UIImage imageNamed:@"icon_location2"];
    [self.contentView addSubview:mapView];

    x += w+3;
    w = Main_Screen_Width - x - 5 - 20;

    UILabel * maplbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    maplbl.textColor = [UIColor grayColor];
    maplbl.font = [UIFont systemFontOfSize:14];
    maplbl.text = @"广州.天河";
    [self.contentView addSubview:maplbl];

    UIButton * seleCtBtn = [[UIButton alloc]initWithFrame:CGRectMake(Main_Screen_Width - 5 - 20, y, 20, 20)];
    [seleCtBtn setImage:[UIImage imageNamed:@"btn_click"] forState:UIControlStateSelected];
    [seleCtBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    seleCtBtn.selected = YES;
    [self.contentView addSubview:seleCtBtn];

    
    
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
