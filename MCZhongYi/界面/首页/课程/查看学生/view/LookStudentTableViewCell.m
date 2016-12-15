//
//  LookStudentTableViewCell.m
//  MCZhongYi
//
//  Created by MC on 2016/12/9.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "LookStudentTableViewCell.h"

@implementation LookStudentTableViewCell
-(void)prepareUI2{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    CGFloat x = 10;
    CGFloat y = (44 - 30)/2;
    CGFloat w =30;
    CGFloat h = 30;
    UIButton * headerBtn = [[UIButton alloc]initWithFrame:CGRectMake(x, y,w, h)];
    
    [headerBtn setImage:[UIImage imageNamed:@"def_head-48"] forState:0];
    ViewRadius(headerBtn, w/2);
    [self.contentView addSubview:headerBtn];
    
    x += w + 5;
    y = 0;
    w = Main_Screen_Width /2 - x;
    h = 44;
    UILabel * nameLbl =[[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    nameLbl.text = @"michan";
    nameLbl.textColor = [UIColor darkTextColor];
    nameLbl.font =[UIFont systemFontOfSize:15];
    [self.contentView addSubview:nameLbl];
    
    x = Main_Screen_Width / 2;
    w = Main_Screen_Width/2 -10;
    UILabel * numlbl =[[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    numlbl.text = @"2016-09-08";
    numlbl.textAlignment = NSTextAlignmentRight;
    numlbl.textColor = [UIColor darkTextColor];
    numlbl.font =[UIFont systemFontOfSize:14];
    [self.contentView addSubview:numlbl];
    

    
    
    
}
-(void)prepareUI3{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
   self.contentView.backgroundColor = RGBCOLOR(250, 247, 247);

    CGFloat x = 10;
    CGFloat y = 0;
    CGFloat w =Main_Screen_Width - 20;
    CGFloat h =10+44 + 10 + 20+8+20+5;//MCAdaptiveH(750, 224, Main_Screen_Width);
    UIView * bgView = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    bgView.backgroundColor = [UIColor whiteColor];
    ViewBorderRadius(bgView, 3, 0.5, [UIColor groupTableViewBackgroundColor]);
    [self.contentView addSubview:bgView];
    x = 10;
    y = 10;
    h = 30;
    w = 30;
    UIButton * headerBtn = [[UIButton alloc]initWithFrame:CGRectMake(x, y,w, h)];
    
    [headerBtn setImage:[UIImage imageNamed:@"def_head-48"] forState:0];
    ViewRadius(headerBtn, w/2);
    [bgView addSubview:headerBtn];
    x += w + 5;
    y = 0;
    w = bgView.mj_w /2 - x;
    h = 43.5;
    UILabel * nameLbl =[[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    nameLbl.text = @"michan";
    nameLbl.textColor = [UIColor darkTextColor];
    nameLbl.font =[UIFont systemFontOfSize:15];
    [bgView addSubview:nameLbl];
    
    x = bgView.mj_w - 100 - 10;
    w = 100;
    UILabel * stateLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    stateLbl.text = @"待确定";
    stateLbl.textColor = AppMCNATitleCOLOR;
    stateLbl.textAlignment = NSTextAlignmentRight;
    stateLbl.font =[UIFont systemFontOfSize:15];
    [bgView addSubview:stateLbl];
    y+=h;
    w = bgView.mj_w - 20;
    h = 0.5;
    x = 10;
    UIView * lineview = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lineview.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [bgView addSubview:lineview];

    
    
    y+=h + 10;
    w = bgView.mj_w- 10;
    x = 10;
    h = 20;
    UILabel * lbl =[[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lbl.text = @"请假时间:2016-04-08 9:30";
    lbl.textColor = [UIColor grayColor];
    lbl.font =[UIFont systemFontOfSize:14];
    [bgView addSubview:lbl];
    
    y += 8+h;
    lbl =[[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lbl.text = @"请假事由:生病";
    lbl.textColor = [UIColor grayColor];
    lbl.font =[UIFont systemFontOfSize:14];
    [bgView addSubview:lbl];
    
    

}

-(void)prepareUI4{
    
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    CGFloat x = 10;
    CGFloat y = (44 - 30)/2;
    CGFloat w =30;
    CGFloat h = 30;
    UIButton * headerBtn = [[UIButton alloc]initWithFrame:CGRectMake(x, y,w, h)];
    
    [headerBtn setImage:[UIImage imageNamed:@"def_head-48"] forState:0];
    ViewRadius(headerBtn, w/2);
    [self.contentView addSubview:headerBtn];
    
    x += w + 5;
    y = 0;
    w = Main_Screen_Width /2 - x;
    h = 44;
    UILabel * nameLbl =[[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    nameLbl.text = @"michan";
    nameLbl.textColor = [UIColor darkTextColor];
    nameLbl.font =[UIFont systemFontOfSize:15];
    [self.contentView addSubview:nameLbl];

    x = Main_Screen_Width / 2;
    w = Main_Screen_Width/2 -10;
    UILabel * numlbl =[[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    numlbl.text = @"剩余课时:6";
    numlbl.textAlignment = NSTextAlignmentRight;
    numlbl.textColor = [UIColor darkTextColor];
    numlbl.font =[UIFont systemFontOfSize:14];
    [self.contentView addSubview:numlbl];

    
    
    
    
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
