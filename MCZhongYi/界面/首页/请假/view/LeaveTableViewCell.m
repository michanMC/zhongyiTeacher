//
//  LeaveTableViewCell.m
//  MCZhongYi
//
//  Created by MC on 2016/12/11.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "LeaveTableViewCell.h"

@implementation LeaveTableViewCell


-(void)prepareUI1{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    
    CGFloat viewh = 44*4 + 0.5*3 ;
    CGFloat x = 10;
    CGFloat w = Main_Screen_Width - 20;
    CGFloat h = viewh;
    CGFloat y = 0;
    self.contentView.backgroundColor = AppBgCOLOR;
    UIView * bgview = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    
    bgview.backgroundColor =[UIColor whiteColor];
    [self.contentView addSubview:bgview];
    ViewBorderRadius(bgview, 3, 1, [UIColor groupTableViewBackgroundColor]);
    
    x = 5;
    y = 0;
    w = 120;
    h = 44;
    NSArray * strArray = @[@"请假类型",@"选择课时",@"开始时间",@"结束时间"];
    for (NSInteger i = 0; i < strArray.count; i++) {
        UILabel * lbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
        lbl.text = strArray[i];
        lbl.textColor =[UIColor darkTextColor];
        lbl.font = [UIFont systemFontOfSize:14];
        [bgview addSubview:lbl];
        if (i != strArray.count - 1) {
            UIView * lineview = [[UIView alloc]initWithFrame:CGRectMake(x, y+h, bgview.mj_w, 0.5)];
            lineview.backgroundColor = [UIColor groupTableViewBackgroundColor];
            [bgview addSubview:lineview];

        }
        
        UIImageView * img = [[UIImageView alloc]initWithFrame:CGRectMake(bgview.mj_w - 10 - 20, 12, 20, 20)];
        img.image = [UIImage imageNamed:@""];
        [bgview addSubview:img];
        
            if (i == 0) {
            _lbl1 = [[UILabel alloc]initWithFrame:CGRectMake(5, 0, bgview.mj_w - 30 -10, 44)];
            _lbl1.textColor = [UIColor lightGrayColor];
            _lbl1.text = @"请选择(必填)";
            _lbl1.textAlignment = NSTextAlignmentRight;
            _lbl1.font = [UIFont systemFontOfSize:14];
            [bgview addSubview:_lbl1];
                
                _btn1 = [[UIButton alloc]initWithFrame:CGRectMake(120, 0, bgview.mj_w - 120, 44)];
            [bgview addSubview:_btn1];
                
                
        }

        if (i == 1) {
            _lbl2 = [[UILabel alloc]initWithFrame:CGRectMake(5, y, bgview.mj_w - 30 -10, 44)];
            _lbl2.textColor = [UIColor lightGrayColor];
            _lbl2.text = @"请选择(必填)";
            _lbl2.textAlignment = NSTextAlignmentRight;
            _lbl2.font = [UIFont systemFontOfSize:14];
            [bgview addSubview:_lbl2];
            
            
            _btn2 = [[UIButton alloc]initWithFrame:CGRectMake(120, y, bgview.mj_w - 120, 44)];
            [bgview addSubview:_btn2];

        }
        
        if (i == 2) {
            _lbl3 = [[UILabel alloc]initWithFrame:CGRectMake(5, y, bgview.mj_w - 30 -10, 44)];
            _lbl3.textColor = [UIColor lightGrayColor];
            _lbl3.text = @"请选择(必填)";
            _lbl3.textAlignment = NSTextAlignmentRight;
            _lbl3.font = [UIFont systemFontOfSize:14];
            [bgview addSubview:_lbl3];
            
            _btn3 = [[UIButton alloc]initWithFrame:CGRectMake(120, y, bgview.mj_w - 120, 44)];
            [bgview addSubview:_btn3];

        }
        if (i == 3) {
            _lbl4 = [[UILabel alloc]initWithFrame:CGRectMake(5, y, bgview.mj_w - 30 -10, 44)];
            _lbl4.textColor = [UIColor lightGrayColor];
            _lbl4.text = @"请选择(必填)";
            _lbl4.textAlignment = NSTextAlignmentRight;
            _lbl4.font = [UIFont systemFontOfSize:14];
            [bgview addSubview:_lbl4];
            
            _btn4 = [[UIButton alloc]initWithFrame:CGRectMake(120, y, bgview.mj_w - 120, 44)];
            [bgview addSubview:_btn4];

        }
        y += h + 0.5;
        
    }
    
    y = bgview.mj_h + 10;
    x = 10;
    w = Main_Screen_Width -20;
    h = 44;
    UIView * bgview2 = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    
    bgview2.backgroundColor =[UIColor whiteColor];
    [self.contentView addSubview:bgview2];
    ViewBorderRadius(bgview2, 3, 1, [UIColor groupTableViewBackgroundColor]);
    UILabel * lbl2 = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, 120, 44)];
    lbl2.text = @"请假天数";
    lbl2.textColor =[UIColor darkTextColor];
    lbl2.font = [UIFont systemFontOfSize:14];
    [bgview2 addSubview:lbl2];

    _daytext = [[UITextField alloc]initWithFrame:CGRectMake(130, 0, bgview2.mj_w - 10 - 120 -10, 44)];
    _daytext.textColor = [UIColor lightGrayColor];
    _daytext.placeholder = @"请输入请假天数(必填)";
    _daytext.textAlignment = NSTextAlignmentRight;
    _daytext.font = [UIFont systemFontOfSize:14];
    [bgview2 addSubview:_daytext];
    
    
    
    
    
    
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
