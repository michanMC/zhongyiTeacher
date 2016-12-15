//
//  OrganiSelectViewController.h
//  MCZhongYi
//
//  Created by MC on 2016/12/6.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "BaseViewController.h"

typedef enum : NSUInteger {
    MyOrgani_select,//选择
    MyOrgani_switch,//切换
    MyOrgani_list,//列表
} MyOrgani;
@protocol OrganiSelectDelegate <NSObject>

-(void)selectOrganiModle;

@end




@interface OrganiSelectViewController : BaseViewController
@property(nonatomic,weak)id<OrganiSelectDelegate>delegate;

@property(nonatomic,assign) MyOrgani  Organistate;




@end
