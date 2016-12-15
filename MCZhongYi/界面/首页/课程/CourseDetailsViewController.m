//
//  CourseDetailsViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/8.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "CourseDetailsViewController.h"
#import "CourseDetailsTableViewCell.h"
#import "CourseAllEvaluateViewController.h"
#import "LookStudentViewController.h"
#import "LookClassViewController.h"
#import "CallClassViewController.h"
#import "CallClass2ViewController.h"
@interface CourseDetailsViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView * _tableView;
    UIImageView * _headerImgView;
    UILabel * _titleLbl;
    UILabel * _priceLbl;

    
}

@end

@implementation CourseDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title= @"课程详情";
    [self prepareUI];
    [self preparebarView];
    // Do any additional setup after loading the view.
}
-(void)prepareUI{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, Main_Screen_Width, Main_Screen_Height - 64 - 49) style:UITableViewStyleGrouped];
    _tableView.delegate =self;
    _tableView.dataSource = self;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:_tableView];
    _tableView.backgroundColor = RGBCOLOR(250, 247, 247);
    
    [self preapreheaderView];
}
-(void)preapreheaderView{
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat w= Main_Screen_Width;
    CGFloat h = MCAdaptiveH(750, 510, w);
    
    
    
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _tableView.tableHeaderView = view;
    
    h =h - MCAdaptiveH(750, 100, Main_Screen_Width);
   
    
    _headerImgView = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _headerImgView.image = [UIImage imageNamed:@"bg_def_390"];
    [view addSubview:_headerImgView];
    
    UIView * bgview = [[UIView alloc]initWithFrame:CGRectMake(0, h, Main_Screen_Width, MCAdaptiveH(750, 100, Main_Screen_Width))];
    bgview.backgroundColor =AppMCNACOLOR;
    [view addSubview:bgview];
    
    _titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(5, 0, bgview.mj_w - 5 -100, MCAdaptiveH(750, 100, Main_Screen_Width))];
    _titleLbl.text = @"吉他吉他吉他吉他吉他";
    _titleLbl.font = [UIFont systemFontOfSize:16];
    [bgview addSubview:_titleLbl];
    
    _priceLbl = [[UILabel alloc]initWithFrame:CGRectMake(Main_Screen_Width - 5-100, 0, 100, MCAdaptiveH(750, 100, Main_Screen_Width))];
    _priceLbl.text = @"￥888.00";
    _priceLbl.textColor = [UIColor darkTextColor];
    _priceLbl.textAlignment = NSTextAlignmentRight;
    _priceLbl.font = [UIFont systemFontOfSize:15];
    [bgview addSubview:_priceLbl];
    
    
}
-(void)preparebarView{
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0, Main_Screen_Height - 49, Main_Screen_Width, 49)];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
    
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat w = Main_Screen_Width/4;
    CGFloat h = 49;
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    btn.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [btn setTitle:@"查看学生" forState:0];
    btn.titleLabel.font = [UIFont systemFontOfSize:15];
    [btn setTitleColor:[UIColor grayColor] forState:0];
    [btn addTarget:self action:@selector(actionST) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:btn];
    x += w;
    btn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    btn.backgroundColor = RGBCOLOR(218, 218, 218);
    [btn setTitle:@"查看课表" forState:0];
    btn.titleLabel.font = [UIFont systemFontOfSize:15];
    [btn addTarget:self action:@selector(actionKB) forControlEvents:UIControlEventTouchUpInside];

    [btn setTitleColor:[UIColor grayColor] forState:0];
    [view addSubview:btn];
    
    x += w;
    w = Main_Screen_Width/2;
    btn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    btn.backgroundColor = AppMCNACOLOR;
    [btn setTitle:@"上课点名" forState:0];
    btn.titleLabel.font = [UIFont systemFontOfSize:15];
    [btn addTarget:self action:@selector(actionCallClass) forControlEvents:1<<6];
    
    UIColor *cc = AppMCNATitleCOLOR;
    [btn setTitleColor:cc forState:0];
    [view addSubview:btn];
    
    
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 2) {
        return 4;
    }
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 8;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.001;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        CGFloat imgh = MCAdaptiveH(650, 290, Main_Screen_Width - 40);
        NSString * str = @"课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程";
       CGFloat h = [MCToolsManage heightforString:str andWidth:Main_Screen_Width - 40 fontSize:14];
        
      return   10 + 15 + 2 + 20 + h + 10 + imgh + 10;


    }
    if (indexPath.section == 1) {
        CGFloat viewh=  10 + 15 +2 + 10 + 40 + 20 + 30 + 10 + 30 + 10 +30 + 10 + 25 + 10;
        return viewh;
    }
    if (indexPath.section == 2) {
        if (indexPath.row == 0) {
            return 10 + 15 +2;
        }
        if (indexPath.row == 3) {
            return 50;
        }
        NSString * str = @"课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程课程";
        CGFloat lh = [MCToolsManage heightforString:str andWidth:Main_Screen_Width - 40 fontSize:14];
        CGFloat viewh =  10+30+10 + lh + 10+20 + 5;
        return viewh;

    }
    
    return 44;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellid = @"CourseDetailsTableViewCell";
    CourseDetailsTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    if (!cell) {
        cell = [[CourseDetailsTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        cell.selectionStyle = UITableViewCellEditingStyleNone;
    }
    if (indexPath.section == 0) {
        [cell prepareUI];
        return cell;
    }
    if (indexPath.section == 1) {
        [cell prepareUI2];
        return cell;
    }
    if (indexPath.section == 2) {
        if (indexPath.row == 0) {
            [cell prepareUI4];
            return cell;

        }
        if (indexPath.row == 3) {
            [cell prepareUI5];
            [cell.more2Btn addTarget:self action:@selector(actionMorePj) forControlEvents:UIControlEventTouchUpInside];
            return cell;
            
        }

        if (indexPath.row!=3) {
            [cell prepareUI3];
            return cell;
        }

    }

   
    
    
    return [[UITableViewCell alloc]init];
}

#pragma mark-更多评价
-(void)actionMorePj{
    
    CourseAllEvaluateViewController * ctl = [[CourseAllEvaluateViewController alloc]init];
    [self pushNewViewController:ctl];
}
#pragma mark-查看学生
-(void)actionST{
    LookStudentViewController *ctl = [[LookStudentViewController alloc]init];
    [self pushNewViewController:ctl];
}
#pragma mark-查看课表
-(void)actionKB{
    LookClassViewController *ctl = [[LookClassViewController alloc]init];
    [self pushNewViewController:ctl];
}
#pragma mark-上课点名
-(void)actionCallClass{
    CallClassViewController *ctl = [[CallClassViewController alloc]init];
    [self pushNewViewController:ctl];

//    CallClass2ViewController *ctl = [[CallClass2ViewController alloc]init];
//    [self pushNewViewController:ctl];
//
    
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
