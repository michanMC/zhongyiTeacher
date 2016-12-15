//
//  HomeTableViewCell.m
//  MCZhongYi
//
//  Created by MC on 2016/12/5.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "HomeTableViewCell.h"

@implementation HomeTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(void)prepareUI:(NSArray*)imgArray TitleArray:(NSArray*)titleArray{
    
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat w = (Main_Screen_Width - 1)/3;
    CGFloat h = w;
    
    CGFloat imgw = 60;
    CGFloat imgh = imgw;

    CGFloat imgx = (w - 60)/2;
    CGFloat imgy = (w-60)/2 - 10;
    
    CGFloat tx = 0;
    CGFloat ty = imgy + imgh + 10;
    CGFloat tw = w;
    CGFloat th = 20;
    
    
    
    for (NSInteger i = 0; i < imgArray.count; i++) {
        
        UIView * view =[[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
        view.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:view];
        UIImageView * imgview = [[UIImageView alloc]initWithFrame:CGRectMake(imgx, imgy, imgw, imgh)];
        imgview.image = [UIImage imageNamed:imgArray[i]];
        [view addSubview:imgview];
        UIView * hongview = [[UIView alloc]initWithFrame:CGRectMake(imgx+imgw-5, imgy-5, 10, 10)];
        hongview.backgroundColor = [UIColor redColor];
        ViewRadius(hongview, 5);
        if ([titleArray[i] length]) {
            [view addSubview:hongview];

        }


        
        UILabel * lbl = [[UILabel alloc]initWithFrame:CGRectMake(tx, ty, tw, th)];
        lbl.text = titleArray[i];
        lbl.font = [UIFont systemFontOfSize:15];
        lbl.textAlignment = NSTextAlignmentCenter;
        lbl.textColor =kUIColorFromRGB(0x333333);
        [view addSubview:lbl];
       UIButton* _iconBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, w, h)];
        [_iconBtn setTitle:titleArray[i] forState:0];
        [_iconBtn setTitleColor:[UIColor clearColor] forState:0];
        [_iconBtn addTarget:self action:@selector(actionIconBtn:) forControlEvents:UIControlEventTouchUpInside];

        [view addSubview:_iconBtn];

        
        if (i == 0||i == 1) {
            UIView * lineView = [[UIView alloc]initWithFrame:CGRectMake(x+w, y, 0.5, h)];
            lineView.backgroundColor = [UIColor lightGrayColor];
            [self.contentView addSubview:lineView];

        }
        
        x+=w+0.5;
        
    }
    
    
    
    
    
    
}
-(void)actionIconBtn:(UIButton*)btn{
    
    if (_delegate) {
        [_delegate actionIconBtn:btn.titleLabel.text];
    }
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
