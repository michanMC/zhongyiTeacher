//
//  SalaryDetailsViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/8.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "SalaryDetailsViewController.h"
#import "SalaryDetailsTableViewCell.h"
@interface SalaryDetailsViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    
    UITableView *_tableView;

    
    
}

@end

@implementation SalaryDetailsViewController
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    UINavigationBar *navigationBar = self.navigationController.navigationBar;
    // white.png图片自己下载个纯白色的色块，或者自己ps做一个
    [navigationBar setBackgroundImage:[UIImage imageNamed:@"nav_bg"]
                       forBarPosition:UIBarPositionAny
                           barMetrics:UIBarMetricsDefault];
    [navigationBar setShadowImage:[UIImage new]];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"2016年9月";
    [self prepareUI];
    

    // Do any additional setup after loading the view.
}
-(void)prepareUI{
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, Main_Screen_Width, Main_Screen_Height - 64) style:UITableViewStyleGrouped];
    _tableView.delegate =self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    _tableView.backgroundColor = [UIColor whiteColor];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self prepareHearView];
}
-(void)prepareHearView{
    
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat w = Main_Screen_Width;
    CGFloat h = MCAdaptiveH(740, 360, Main_Screen_Width);
    UIView * view =[[ UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    view.backgroundColor = AppMCNACOLOR;
    _tableView.tableHeaderView = view;
    
    y = MCAdaptiveH(740, 50, Main_Screen_Width);
    h = h -2*y;
    w = MCAdaptiveW(505, 265, h);
    x = (Main_Screen_Width -w)/2;
    UIImageView * imgview = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    imgview.image = [UIImage imageNamed:@"bg_salary"];
    
    [view addSubview:imgview];
    x =0;
    y = h/2 - 10 - 20;
    h = 20;
    UILabel * lbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lbl.textAlignment = NSTextAlignmentCenter;
    lbl.textColor = [UIColor darkTextColor];
    lbl.font = [UIFont systemFontOfSize:22];
    lbl.text = @"￥1999999.00";
    [imgview addSubview:lbl];

    y = imgview.mj_h / 2 +10;
    lbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lbl.textAlignment = NSTextAlignmentCenter;
    lbl.textColor = [UIColor grayColor];
    lbl.font = [UIFont systemFontOfSize:16];
    lbl.text = @"合计工资";
    [imgview addSubview:lbl];
    
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 8;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.001;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 25;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
  return  MCAdaptiveH(740, 105, Main_Screen_Width);
    
    
    
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString * cellid = @"SalaryDetailsTableViewCell";
    SalaryDetailsTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    if (!cell) {
        cell = [[SalaryDetailsTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        cell.selectionStyle =UITableViewCellEditingStyleNone;
    }
    [cell prepareUI];
    return cell;
//    return [[UITableViewCell alloc]init];
    
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
