//
//  HomeTableViewCell.h
//  MCZhongYi
//
//  Created by MC on 2016/12/5.
//  Copyright © 2016年 MC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"
@interface HomeTableViewCell : UITableViewCell
@property(nonatomic,weak)HomeViewController * delegate;



-(void)prepareUI:(NSArray*)imgArray TitleArray:(NSArray*)titleArray;

@end
