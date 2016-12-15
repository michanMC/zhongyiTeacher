//
//  AttestationTableViewCell.m
//  MCZhongYi
//
//  Created by MC on 2016/12/11.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "AttestationTableViewCell.h"

@implementation AttestationTableViewCell
-(void)prepareUI1{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    CGFloat w = [MCToolsManage heightforString:@"机构" andHeight:44 fontSize:15];
    
    CGFloat x = 15;
    CGFloat y = 0;
    CGFloat h =44;
    _titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _titleLbl.text = _titleStr;
    _titleLbl.textColor = [UIColor darkTextColor];
    _titleLbl.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_titleLbl];
    
    x +=w + 15;
    w = Main_Screen_Width - x - 10;
    _onameLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _onameLbl.text = @"请选择机构";
    _onameLbl.textColor = [UIColor lightGrayColor];
    _onameLbl.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_onameLbl];

    
    
}
-(void)prepareUI2{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    CGFloat w = [MCToolsManage heightforString:@"机构" andHeight:44 fontSize:15];
    CGFloat x = 15;
    CGFloat y = 0;
    CGFloat h =44;
    _titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _titleLbl.text = _titleStr;

    _titleLbl.textColor = [UIColor darkTextColor];
    _titleLbl.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_titleLbl];
   
    
    x +=w + 15;
    
    h = 25;
    w = _titleLbl.mj_w + 15;
    y = (44-h)/2;
    
    _qBtn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [_qBtn setTitle:@"全职" forState:0];
    [_qBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    [_qBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateSelected];
    _qBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    
    ViewBorderRadius(_qBtn, 3, 1, [UIColor lightGrayColor]);
    [self.contentView addSubview:_qBtn];
    
    
    x +=w +20;
    
    _jBtn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [_jBtn setTitle:@"兼职" forState:0];
    [_jBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    [_jBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateSelected];
    _jBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    
    ViewBorderRadius(_jBtn, 3, 1, [UIColor lightGrayColor]);
    [self.contentView addSubview:_jBtn];


    
    
    

}
-(void)prepareUI3{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    CGFloat w = [MCToolsManage heightforString:@"机构" andHeight:44 fontSize:15];
    CGFloat x = 15;
    CGFloat y = 0;
    CGFloat h =44;
    _titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _titleLbl.text = _titleStr;

    _titleLbl.textColor = [UIColor darkTextColor];
    _titleLbl.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_titleLbl];
    
    x +=w + 15;
    
    h = 44;
    w = Main_Screen_Width - x - 10;
    y = 0;
    _nameText  =[[UITextField alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _nameText.font = [UIFont systemFontOfSize:15];
    _nameText.placeholder =@"请输入姓名";
    [self.contentView addSubview:_nameText];

    
    
    
}
-(void)prepareUI4{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    CGFloat w = [MCToolsManage heightforString:@"机构" andHeight:44 fontSize:15];
    CGFloat x = 15;
    CGFloat y = 0;
    CGFloat h =44;
    _titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _titleLbl.text = _titleStr;

    _titleLbl.textColor = [UIColor darkTextColor];
    _titleLbl.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_titleLbl];
    
    x +=w + 15;
    
    h = 25;
    w = _titleLbl.mj_w + 15;
    y = (44-h)/2;
    
    _Sex1Btn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [_Sex1Btn setTitle:@"男" forState:0];
    [_Sex1Btn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    [_Sex1Btn setTitleColor:[UIColor orangeColor] forState:UIControlStateSelected];
    _Sex1Btn.titleLabel.font = [UIFont systemFontOfSize:15];
    
    ViewBorderRadius(_Sex1Btn, 3, 1, [UIColor lightGrayColor]);
    [self.contentView addSubview:_Sex1Btn];
    
    
    x +=w +20;
    
    _Sex2Btn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [_Sex2Btn setTitle:@"女" forState:0];
    [_Sex2Btn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    [_Sex2Btn setTitleColor:[UIColor orangeColor] forState:UIControlStateSelected];
    _Sex2Btn.titleLabel.font = [UIFont systemFontOfSize:15];
    
    ViewBorderRadius(_Sex2Btn, 3, 1, [UIColor lightGrayColor]);
    [self.contentView addSubview:_Sex2Btn];
    

}
-(void)prepareUI5
{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    CGFloat w = [MCToolsManage heightforString:@"机构" andHeight:44 fontSize:15];
    CGFloat x = 15;
    CGFloat y = 0;
    CGFloat h =44;
    _titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _titleLbl.text = _titleStr;

    _titleLbl.textColor = [UIColor darkTextColor];
    _titleLbl.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_titleLbl];
    
    
    x +=w + 15;
    w = Main_Screen_Width - x - 10;
    _titmeLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _titmeLbl.text = @"请输入选择出生日期";
    _titmeLbl.textColor = [UIColor lightGrayColor];
    _titmeLbl.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_titmeLbl];
    
}





-(void)prepareUI6{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    CGFloat w = [MCToolsManage heightforString:@"身份证" andHeight:64 fontSize:15];

    CGFloat x = 15;
    CGFloat y = 0;
    CGFloat h =64;
    _titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _titleLbl.text = _titleStr;

    _titleLbl.textColor = [UIColor darkTextColor];
    _titleLbl.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_titleLbl];
    
    _countLbl = [[UILabel alloc]initWithFrame:CGRectMake(Main_Screen_Width - 150, 44, 140, 20)];
    _countLbl.textAlignment =NSTextAlignmentRight;
    _countLbl.textColor = [UIColor lightGrayColor];
    _countLbl.font = [UIFont systemFontOfSize:13];
    [self.contentView addSubview:_countLbl];

    x +=w +15;
    y = 15;
    w = 44;
    h = w;
    _tp1Btn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [self.contentView addSubview:_tp1Btn];
    _dele1Btn = [[UIButton alloc]initWithFrame:CGRectMake(x +w-10, 5, 20, 20)];
    [_dele1Btn setImage:[UIImage imageNamed:@"btn_wrong"] forState:0];
    [self.contentView addSubview:_dele1Btn];

    
    
    
    x += w + 10 + 15;
    _tp2Btn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [self.contentView addSubview:_tp2Btn];
    _dele2Btn = [[UIButton alloc]initWithFrame:CGRectMake(x +w-10, 5, 20, 20)];
    [_dele2Btn setImage:[UIImage imageNamed:@"btn_wrong"] forState:0];
    [self.contentView addSubview:_dele2Btn];
    

    
    
    
    
}
-(void)prepareUI7{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    CGFloat w = [MCToolsManage heightforString:@"身份证" andHeight:64 fontSize:15];
    CGFloat x = 15;
    CGFloat y = 0;
    CGFloat h =64;
    _titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _titleLbl.text = _titleStr;

    _titleLbl.textColor = [UIColor darkTextColor];
    _titleLbl.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_titleLbl];
    _countLbl = [[UILabel alloc]initWithFrame:CGRectMake(Main_Screen_Width - 150, 44, 140, 20)];
    _countLbl.textAlignment =NSTextAlignmentRight;
    _countLbl.textColor = [UIColor lightGrayColor];
    _countLbl.font = [UIFont systemFontOfSize:13];
    [self.contentView addSubview:_countLbl];
    x +=w +15;
    y = 15;
    w = 44;
    h = w;
    _tp3Btn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [self.contentView addSubview:_tp3Btn];
    _dele3Btn = [[UIButton alloc]initWithFrame:CGRectMake(x +w-10, 5, 20, 20)];
    [_dele3Btn setImage:[UIImage imageNamed:@"btn_wrong"] forState:0];
    [self.contentView addSubview:_dele3Btn];



}
-(void)prepareUI8{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    CGFloat w = [MCToolsManage heightforString:@"身份证" andHeight:64 fontSize:15];
    CGFloat x = 15;
    CGFloat y = 0;
    CGFloat h =64;
    _titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _titleLbl.text = _titleStr;

    _titleLbl.textColor = [UIColor darkTextColor];
    _titleLbl.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_titleLbl];
    _countLbl = [[UILabel alloc]initWithFrame:CGRectMake(Main_Screen_Width - 150, 44, 140, 20)];
    _countLbl.textAlignment =NSTextAlignmentRight;
    _countLbl.textColor = [UIColor lightGrayColor];
    _countLbl.font = [UIFont systemFontOfSize:13];
    [self.contentView addSubview:_countLbl];
    
    x +=w +15;
    y = 15;
    w = 44;
    h = w;
    _tp4Btn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [self.contentView addSubview:_tp4Btn];
    _dele4Btn = [[UIButton alloc]initWithFrame:CGRectMake(x +w-10, 5, 20, 20)];
    [_dele4Btn setImage:[UIImage imageNamed:@"btn_wrong"] forState:0];
    [self.contentView addSubview:_dele4Btn];

}
-(void)prepareUI9{
    for (UIView * view in self.contentView.subviews) {
        [view removeFromSuperview];
    }
    CGFloat w = [MCToolsManage heightforString:@"身份证" andHeight:64 fontSize:15];
    CGFloat x = 15;
    CGFloat y = 0;
    CGFloat h =64;
    _titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _titleLbl.text = _titleStr;

    _titleLbl.textColor = [UIColor darkTextColor];
    _titleLbl.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_titleLbl];
    _countLbl = [[UILabel alloc]initWithFrame:CGRectMake(Main_Screen_Width - 150, 44, 140, 20)];
    _countLbl.textAlignment =NSTextAlignmentRight;
    _countLbl.textColor = [UIColor lightGrayColor];
    _countLbl.font = [UIFont systemFontOfSize:13];
    [self.contentView addSubview:_countLbl];
    
    x +=w +15;
    y = 15;
    w = 44;
    h = w;
    _tp5Btn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [self.contentView addSubview:_tp5Btn];
    _dele5Btn = [[UIButton alloc]initWithFrame:CGRectMake(x +w-10, 5, 20, 20)];
    [_dele5Btn setImage:[UIImage imageNamed:@"btn_wrong"] forState:0];
    [self.contentView addSubview:_dele5Btn];
    

    
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
