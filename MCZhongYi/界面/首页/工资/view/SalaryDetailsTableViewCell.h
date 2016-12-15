//
//  SalaryDetailsTableViewCell.h
//  MCZhongYi
//
//  Created by MC on 2016/12/8.
//  Copyright © 2016年 MC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SalaryDetailsTableViewCell : UITableViewCell

@property(nonatomic,strong)UILabel * titleLbl;
@property(nonatomic,strong)UILabel * moneyLbl;

-(void)prepareUI;

@end
