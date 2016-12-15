//
//  LeaveDetailsTableViewCell.m
//  MCZhongYi
//
//  Created by MC on 2016/12/11.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "LeaveDetailsTableViewCell.h"

@implementation LeaveDetailsTableViewCell

-(void)prepareUI{
    
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    CGFloat y = 8;
    CGFloat x = 15;
    CGFloat w = 44;
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
    
    
    UILabel * teypLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    teypLbl.text =@"已拒绝";
    teypLbl.textColor =[UIColor lightGrayColor];
    teypLbl.font = [UIFont systemFontOfSize:14];
    [self.contentView addSubview:teypLbl];
    
    
    x = 15;
    y = headerBtn.mj_y + headerBtn.mj_h + 8;
    w = Main_Screen_Width - 2*x;
    h = 0.5;
    
    
    
    UIView * lineView = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lineView.backgroundColor =[UIColor groupTableViewBackgroundColor];
    [self.contentView addSubview:lineView];

    
    y+=h +8;
    h = 20;
    NSString * str = @"请假事由: 生病生病生病生病生病生病生病生病生病生病生病生病生病";
    CGFloat lh =[MCToolsManage heightforString:str andWidth:w fontSize:14];
    if (lh < 20) {
        lh = 20;
    }

    for (NSInteger i = 0; i < 7; i++) {
        
        UILabel * lbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
        if (i == 5&&lh>20) {
            h =lh;
            lbl.frame = CGRectMake(x, y, w, h);
            lbl.numberOfLines = 0;
        }
        else
        {
            h =20;
        }
        
        lbl.textColor = [UIColor grayColor];
        lbl.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:lbl];
        if (i == 0) {
          lbl.text = @"请假类型: 病假";
        }
        if (i == 1) {
            lbl.text = @"课程名称: 吉他入门课";
            
        }if (i == 2) {
            lbl.text = @"课程课时: 2016-09-09 12:00-13:00";

        }if (i == 3) {
            lbl.text = @"开始时间: 2016-04-08 09:30";

        }if (i == 4) {
            lbl.text = @"结束时间: 2016-04-08 09:30";
            

        }if (i == 5) {
            lbl.text = str;

        }if (i == 6) {
            lbl.text = @"请假天数: 3";

        }
        y +=h+8;
        
    }
    
    
    
w = [MCToolsManage heightforString:@"上传图片:" andHeight:20 fontSize:14];
    h = 44;
    UILabel *lbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lbl.text = @"上传图片:";
    lbl.textColor = [UIColor grayColor];
    lbl.font = [UIFont systemFontOfSize:14];
    [self.contentView addSubview:lbl];

    x += w+5;
    w= 44;
    _btn1 =[[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [_btn1 setImage:[UIImage imageNamed:@"def_pic88"] forState:0];
    [self.contentView addSubview:_btn1];
    x += w + 10;
    
    _btn2 =[[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [_btn2 setImage:[UIImage imageNamed:@"def_pic88"] forState:0];
    [self.contentView addSubview:_btn2];

    x += w + 10;
    
    _btn3 =[[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [_btn3 setImage:[UIImage imageNamed:@"def_pic88"] forState:0];
    [self.contentView addSubview:_btn3];
    

    x = 15;
    y +=h + 8;
    w = Main_Screen_Width - 30;
    h = 20;
    
    lbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lbl.text = @"拒绝原因: 请至少提前3天请假";
    lbl.textColor = [UIColor grayColor];
    lbl.font = [UIFont systemFontOfSize:14];
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
