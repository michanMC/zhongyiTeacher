//
//  LeaveTypeViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/11.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "LeaveTypeViewController.h"
#import "LeaveTypeTableViewCell.h"

@interface LeaveTypeViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
    NSArray * titleArray;
}

@end

@implementation LeaveTypeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"请假类型";
    titleArray = @[@"事假",@"病假",@"年假",@"调休",@"婚假",@"产假",@"陪产假",@"丧假",@"其他"];
    [self prepareUI];
    // Do any additional setup after loading the view.
}
-(void)prepareUI{

    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, Main_Screen_Width, Main_Screen_Height - 64) style:UITableViewStyleGrouped];
    _tableView.delegate =self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return titleArray.count;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.001;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.001;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellid = @"LeaveTypeTableViewCell";
    LeaveTypeTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    
    if (!cell) {
        cell = [[LeaveTypeTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    [cell prepareUI];
    cell.titelLbl.text = titleArray[indexPath.row];
    cell.seleimg.image = [UIImage imageNamed:@"btn_click"];
    return cell;
    return [[UITableViewCell alloc]init];
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
