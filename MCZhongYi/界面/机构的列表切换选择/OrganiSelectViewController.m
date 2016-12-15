//
//  OrganiSelectViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/6.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "OrganiSelectViewController.h"
#import "OrganiSelectTableViewCell.h"
#import "OrganiDetailsViewController.h"

@interface OrganiSelectViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
    
    
}

@end

@implementation OrganiSelectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (_Organistate == MyOrgani_select) {
        self.title = @"选择机构";
    }
    else if (_Organistate == MyOrgani_switch){
        self.title = @"切换机构";
        
    }
    else
    {
        self.title = @"机构列表";

    }
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
    return 10;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.001;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 5;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return  MCAdaptiveH(750, 283, Main_Screen_Width);
    
    
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellid =@"OrganiSelectTableViewCell";
    OrganiSelectTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    if(!cell){
        cell = [[OrganiSelectTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }
    if (_Organistate != MyOrgani_switch) {
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    cell.Organistate = _Organistate;
    [cell prepareUI];
    return cell;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (!_delegate) {
        OrganiDetailsViewController * ctl = [[OrganiDetailsViewController alloc]init];
        [self pushNewViewController:ctl];
        return;
    }
    if (_delegate) {
        [_delegate selectOrganiModle];
    }
    [self toPopVC];
    
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
