//
//  LookSummaryTableViewCell.h
//  MCZhongYi
//
//  Created by MC on 2016/12/10.
//  Copyright © 2016年 MC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LookSummaryTableViewCell : UITableViewCell

@property(nonatomic,strong)UIButton * headerBtn;
@property(nonatomic,strong)UILabel * nameLbl;
@property(nonatomic,strong)UILabel * timeLbl;

-(void)prepareUI1;
@property(nonatomic,strong)UILabel * titleLbl;

-(void)prepareUI2;

-(void)prepareUI3;


@end
