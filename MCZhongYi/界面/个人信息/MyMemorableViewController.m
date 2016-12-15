//
//  MyMemorableViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/6.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "MyMemorableViewController.h"
#import "MCtimeSelectView.h"
#import "MyProfileTableViewCell.h"
@interface MyMemorableViewController ()<UITableViewDelegate,UITableViewDataSource,MCtimeSelectDelegate>
{
    
    UITableView * _tableView;
    MCtimeSelectView *  SelectView;
    
    
    
}

@end

@implementation MyMemorableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"任教经历";
    [self prepareUI];
    // Do any additional setup after loading the view.
}
-(void)prepareUI{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, Main_Screen_Width, Main_Screen_Height - 64 - 49) style:UITableViewStyleGrouped];
    _tableView.delegate =self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    UIButton * barBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, Main_Screen_Height - 49, Main_Screen_Width, 49)];
    barBtn.backgroundColor = AppMCNACOLOR;
    [barBtn setTitle:@"添加任教经历" forState:0];
    UIColor * cc = AppMCNATitleCOLOR;
    [barBtn setTitleColor:cc forState:0];
    [self.view addSubview:barBtn];
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 10;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.001;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
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
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    [cell prepareUI2];
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            cell.titleLbl.text = @"开始日期";
            cell.titleSubLbl.text = @"请选择";
            return cell;
 
        }
        if (indexPath.row == 1) {
            cell.titleLbl.text = @"结束日期";
            cell.titleSubLbl.text = @"请选择";
            return cell;
            
        }
        if (indexPath.row == 2) {
            cell.titleLbl.text = @"任教经历";
            cell.titleSubLbl.text = @"请输入任教经历";
            return cell;
            
        }


    }
    if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            cell.titleLbl.text = @"开始日期";
            cell.titleSubLbl.text = @"请选择";
            return cell;
            
        }
        if (indexPath.row == 1) {
            cell.titleLbl.text = @"结束日期";
            cell.titleSubLbl.text = @"请选择";
            return cell;
            
        }
        if (indexPath.row == 2) {
            cell.titleLbl.text = @"任教经历";
            cell.titleSubLbl.text = @"请输入任教经历";
            return cell;
            
        }
        
        
    }



    
    return [[UITableViewCell alloc]init];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
//    if (indexPath.section == 0) {
        if (indexPath.row <2) {
             SelectView= [[MCtimeSelectView alloc]initWithFrame:CGRectMake(0, 0, Main_Screen_Width, Main_Screen_Height)];
            SelectView.deldagate = self;
            [SelectView showInWindow];

        }
//    }
    
    
}
-(void)MCtimeSelecthidden
{
    [SelectView removeFromSuperview];
    
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
