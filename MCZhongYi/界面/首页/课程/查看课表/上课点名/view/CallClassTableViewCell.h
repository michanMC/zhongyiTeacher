//
//  CallClassTableViewCell.h
//  MCZhongYi
//
//  Created by MC on 2016/12/10.
//  Copyright © 2016年 MC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CallClassTableViewCell : UITableViewCell


-(void)prepareUI1;

@property(nonatomic,assign)NSInteger CallClassindedx;
//1 = 已到  2待确认 3未到 4请假

-(void)prepareUI2;



@end
