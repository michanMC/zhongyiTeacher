//
//  CallClassTableViewCell.m
//  MCZhongYi
//
//  Created by MC on 2016/12/10.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "CallClassTableViewCell.h"
@implementation CallClassTableViewCell
-(void)prepareUI1{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    self.contentView.backgroundColor =AppBgCOLOR;
    
    CGFloat x = 20;
    CGFloat y = 10;
    CGFloat w = Main_Screen_Width - 2*x;
    CGFloat h = MCAdaptiveH(750, 135, w);
    
    UIImageView * img = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    img.image =[UIImage imageNamed:@"bg_all-student"];
    [self.contentView addSubview:img];
    
    
    y+=(h - h/2);
    h = 100;
    UIView *bgview= [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    ViewBorderRadius(bgview, 5, 1, kUIColorFromRGB(0xf6f913));
    bgview.backgroundColor = [UIColor whiteColor];
    UILabel * titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(0, y - 10, Main_Screen_Width, 20)];
    titleLbl.textColor = [UIColor darkTextColor];
    titleLbl.text =@"全体学生(13)";
    titleLbl.font = [UIFont systemFontOfSize:20];
    titleLbl.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview:bgview];
    [self.contentView addSubview:img];

    [self.contentView addSubview:titleLbl];

    
    y = img.mj_h / 2 + 30;
    
    CGFloat  btnx = 0;
    CGFloat btny = y;
    CGFloat btnw = bgview.mj_w/5;
    CGFloat btnh = btnw+5;
    
    for (NSInteger i = 0;i < 13 ; i++) {
        UIView * view = [[UIView alloc]initWithFrame:CGRectMake(btnx, btny, btnw, btnh)];
        
        [bgview addSubview:view];
        
        
        
        UIButton * btn =[[UIButton alloc ]initWithFrame:CGRectMake(10, 0, btnw - 20, btnw - 20)];
        [btn setImage:[UIImage imageNamed:@"def_head112"] forState:0];
        ViewRadius(btn, (btnw - 20)/2);
//        btn.backgroundColor = [UIColor redColor];
        [view addSubview:btn];
        UILabel * lbl = [[UILabel alloc]initWithFrame:CGRectMake(0, btnh - 20, view.mj_w, 20)];
        lbl.textAlignment = NSTextAlignmentCenter;
        lbl.text = @"michan";
        lbl.textColor = [UIColor grayColor];
        lbl.font = [UIFont systemFontOfSize:14];
        [view addSubview:lbl];
//        if (i == 0) {
//            view.backgroundColor = [UIColor redColor];
//        }
        
        if ((btnx+btnw + 45 >= Main_Screen_Width)&&(i +1) < 13) {
            btnx = 0;
            btny +=btnh + 5;
        }
        else
        {
            btnx +=btnw;
        }
        
    }
    
    h = btny + btnh+5;
    bgview.frame = CGRectMake(bgview.mj_x, bgview.mj_y, bgview.mj_w, h);
    
    
}

-(void)prepareUI2{
    
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    self.contentView.backgroundColor =[UIColor whiteColor];
    
    CGFloat x = 20;
    CGFloat y = 0;
    CGFloat w = (Main_Screen_Width - 2*x)/5;
    CGFloat btnw = w - 20;
    CGFloat h = w +5;
    CGFloat btnx = 10;
    CGFloat btny = 10;
    CGFloat btnh = btnw;

    
    NSInteger count = 0;
    if (_CallClassindedx == 1) {
        count = 5;
    }
    if (_CallClassindedx == 2) {
        count = 5;
    }
    if (_CallClassindedx == 3) {
        count = 5;
    }
    if (_CallClassindedx == 4) {
        count = 10;
    }

    
    for (NSInteger i = 0; i < count; i++) {
        UIView * view = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
//        if (i == 0) {
//            view.backgroundColor = [UIColor redColor];
//            
//        }
        [self.contentView addSubview:view];
        UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(btnx, btny, btnw, btnh)];
        [btn setImage:[UIImage imageNamed:@"def_head112"] forState:0];
        ViewRadius(btn, (btnw)/2);
        //        btn.backgroundColor = [UIColor redColor];
        [view addSubview:btn];
        UILabel * lbl = [[UILabel alloc]initWithFrame:CGRectMake(0, view.mj_h - 15, view.mj_w, 15)];
        lbl.textAlignment = NSTextAlignmentCenter;
        lbl.text = @"michan";
        lbl.textColor = [UIColor grayColor];
        lbl.font = [UIFont systemFontOfSize:14];
        [view addSubview:lbl];

        if ((x + w + 45 > Main_Screen_Width)&&(i +1) < count) {
            x = 20;
            y +=h;
        }
        else
        {
            x += w;
        }
        
    }
    
    y +=h;
    
    
    
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
