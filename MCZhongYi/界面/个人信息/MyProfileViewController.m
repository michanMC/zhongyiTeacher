//
//  MyProfileViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/6.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "MyProfileViewController.h"
#import "MyProfileTableViewCell.h"
#import "OrganiSelectViewController.h"
#import "MyBriefViewController.h"
#import "MyMemorableViewController.h"
#import "MCChangePwdViewController.h"
#import "MyCommentViewController.h"
@interface MyProfileViewController ()<UITableViewDelegate,UITableViewDataSource,OrganiSelectDelegate>
{
    UITableView * _tableView;
    
    
}

@end

@implementation MyProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"个人资料";
    [self prepareUI];
    // Do any additional setup after loading the view.
}
-(void)prepareUI{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, Main_Screen_Width, Main_Screen_Height - 64) style:UITableViewStyleGrouped];
    _tableView.delegate =self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 9;
    }
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 40;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.001;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0 &&indexPath.row == 0) {
        return 56;
    }
    return 44;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellid = @"MyProfileTableViewCell";
    MyProfileTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    if (!cell) {
        cell = [[MyProfileTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.accessoryType = UITableViewCellAccessoryNone;

    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

            [cell prepareUI1];
            return cell;

        }if (indexPath.row == 1) {
            [cell prepareUI2];
            cell.titleLbl.text = @"姓名";
            cell.titleSubLbl.text = @"michan";
            return cell;
        }if (indexPath.row == 2) {
            [cell prepareUI2];
            cell.titleLbl.text = @"性别";
            cell.titleSubLbl.text = @"男";
            return cell;
        }if (indexPath.row == 3) {
            [cell prepareUI2];
            cell.titleLbl.text = @"出生日期";
            cell.titleSubLbl.text = @"2016年11月11日";
            return cell;
        }
        if (indexPath.row == 4) {
            [cell prepareUI4];
            cell.titleLbl.text = @"标签";
            return cell;
        }
        if (indexPath.row == 5) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

            [cell prepareUI2];
            cell.titleLbl.text = @"所属机构";
            cell.titleSubLbl.text = @"不知名机构";
            return cell;
        }
        if (indexPath.row == 6) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            
            [cell prepareUI2];
            cell.titleLbl.text = @"个人简介";
            cell.titleSubLbl.text = @"没有简介";
            return cell;
        }
        if (indexPath.row == 7) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            
            [cell prepareUI2];
            cell.titleLbl.text = @"任教经历";
            cell.titleSubLbl.text = @"";
            return cell;
        }
        if (indexPath.row == 8) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            
            [cell prepareUI3];
            cell.titleLbl.text = @"评价列表";

            return cell;
        }
        
        
        
    }
    if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            
            [cell prepareUI2];
            cell.titleLbl.text = @"账户安全";
            cell.titleSubLbl.text = @"可修改密码";
            cell.titleSubLbl.textColor = [UIColor lightGrayColor];
            return cell;

        }
    }
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 1) {
        MCChangePwdViewController * ctl = [[MCChangePwdViewController alloc]init];
        [self pushNewViewController:ctl];

    }
    if (indexPath.section == 0) {
        if (indexPath.row == 5) {
            OrganiSelectViewController * ctl = [[OrganiSelectViewController alloc]init];
            ctl.Organistate = MyOrgani_select;
//            ctl.delegate = self;
            [self pushNewViewController:ctl];
            
            
            
        }
        if (indexPath.row == 6) {
            MyBriefViewController * ctl = [[MyBriefViewController alloc]init];
            [self pushNewViewController:ctl];
        }
        if (indexPath.row == 7) {
            MyMemorableViewController * ctl = [[MyMemorableViewController alloc]init];
            [self pushNewViewController:ctl];
        }
        if (indexPath.row == 8) {
            MyCommentViewController * ctl = [[MyCommentViewController alloc]init];
            [self pushNewViewController:ctl];
        }



    }
    
    
    
    
}
-(void)selectOrganiModle
{
    
}




-(void)viewDidLayoutSubviews {
    if (IOS7) {
        
        if ([_tableView respondsToSelector:@selector(setSeparatorInset:)]) {
            [_tableView setSeparatorInset:UIEdgeInsetsZero];
            
        }
        if ([_tableView respondsToSelector:@selector(setLayoutMargins:)])  {
            [_tableView setLayoutMargins:UIEdgeInsetsZero];
        }
    }
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPat{
    if (IOS8) {
        
        if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
            [cell setLayoutMargins:UIEdgeInsetsZero];
        }
        if ([cell respondsToSelector:@selector(setSeparatorInset:)]){
            [cell setSeparatorInset:UIEdgeInsetsZero];
        }
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
