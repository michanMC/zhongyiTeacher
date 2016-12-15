//
//  OrganiSelectTableViewCell.h
//  MCZhongYi
//
//  Created by MC on 2016/12/6.
//  Copyright © 2016年 MC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OrganiSelectViewController.h"





@interface OrganiSelectTableViewCell : UITableViewCell
@property(nonatomic,assign) MyOrgani  Organistate;
-(void)prepareUI;

@end
