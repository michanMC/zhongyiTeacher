//
//  LeaveDetailsViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/11.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "LeaveDetailsViewController.h"
#import "LeaveDetailsTableViewCell.h"
@interface LeaveDetailsViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    
    UITableView * _tableView;
    
    
    
}

@end

@implementation LeaveDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"请假详情";
    [self prepareUI];
    // Do any additional setup after loading the view.
}
-(void)prepareUI{
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, Main_Screen_Width, Main_Screen_Height - 64) style:UITableViewStyleGrouped];
    _tableView.delegate =self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    _tableView.backgroundColor = [UIColor whiteColor];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.001;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.001;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString * str = @"请假事由: 生病生病生病生病生病生病生病生病生病生病生病生病生病";
    CGFloat lh =[MCToolsManage heightforString:str andWidth:Main_Screen_Width - 30 fontSize:14];
    return 8+44+8+0.5+8+20*7 + 44 +8 *8 + lh +10;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString * cellid = @"LeaveDetailsTableViewCell";
    
    LeaveDetailsTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    if (!cell) {
        cell =[[LeaveDetailsTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    
    [cell prepareUI];
    return cell;
    

    return [[UITableViewCell alloc]init];
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
