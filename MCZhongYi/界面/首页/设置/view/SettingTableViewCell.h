//
//  SettingTableViewCell.h
//  MCZhongYi
//
//  Created by MC on 2016/12/12.
//  Copyright © 2016年 MC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingTableViewCell : UITableViewCell
@property(nonatomic,strong)UILabel * titlesubLbl;

@property(nonatomic,strong)UILabel * titleLbl;
-(void)prepareUI;

@end
