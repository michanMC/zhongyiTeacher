//
//  LeaveTableViewCell.h
//  MCZhongYi
//
//  Created by MC on 2016/12/11.
//  Copyright © 2016年 MC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeaveTableViewCell : UITableViewCell


@property(nonatomic,strong)UIButton * btn1;
@property(nonatomic,strong)UILabel * lbl1;

@property(nonatomic,strong)UIButton * btn2;
@property(nonatomic,strong)UILabel * lbl2;

@property(nonatomic,strong)UIButton * btn3;
@property(nonatomic,strong)UILabel * lbl3;

@property(nonatomic,strong)UIButton * btn4;
@property(nonatomic,strong)UILabel * lbl4;


//@property(nonatomic,strong)UIButton * btn5;
@property(nonatomic,strong)UITextField * daytext;

-(void)prepareUI1;
@end
