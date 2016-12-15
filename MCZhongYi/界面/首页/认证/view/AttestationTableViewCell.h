//
//  AttestationTableViewCell.h
//  MCZhongYi
//
//  Created by MC on 2016/12/11.
//  Copyright © 2016年 MC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AttestationTableViewCell : UITableViewCell


@property(nonatomic,strong)UILabel *titleLbl;
@property(nonatomic,copy)NSString *titleStr;

@property(nonatomic,strong)UILabel *countLbl;


@property(nonatomic,strong)UILabel *onameLbl;
-(void)prepareUI1;


@property(nonatomic,strong)UIButton * qBtn;
@property(nonatomic,strong)UIButton * jBtn;
-(void)prepareUI2;

@property(nonatomic,strong)UITextField * nameText;
-(void)prepareUI3;


@property(nonatomic,strong)UIButton * Sex1Btn;
@property(nonatomic,strong)UIButton * Sex2Btn;

-(void)prepareUI4;

@property(nonatomic,strong)UILabel *titmeLbl;
-(void)prepareUI5;





@property(nonatomic,strong)UIButton * tp1Btn;
@property(nonatomic,strong)UIButton * tp2Btn;
@property(nonatomic,strong)UIButton * dele1Btn;
@property(nonatomic,strong)UIButton * dele2Btn;
-(void)prepareUI6;


@property(nonatomic,strong)UIButton * tp3Btn;
@property(nonatomic,strong)UIButton * dele3Btn;
-(void)prepareUI7;

@property(nonatomic,strong)UIButton * tp4Btn;
@property(nonatomic,strong)UIButton * dele4Btn;
-(void)prepareUI8;

@property(nonatomic,strong)UIButton * tp5Btn;
@property(nonatomic,strong)UIButton * dele5Btn;
-(void)prepareUI9;

@end
