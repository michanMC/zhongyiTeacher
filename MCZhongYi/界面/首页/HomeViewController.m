//
//  HomeViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/5.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "HomeViewController.h"
#import "HCSStarRatingView.h"
#import "HomeTableViewCell.h"
#import "HomeTableViewCell.h"
#import "OrganiSelectViewController.h"
#import "MyProfileViewController.h"
#import "MyCourseViewController.h"
#import "MySalaryViewController.h"
#import "LeaveViewController.h"
#import "AttestationViewController.h"
#import "LogInViewController.h"
#import "SettingViewController.h"
@interface HomeViewController ()<UITableViewDelegate,UITableViewDataSource,OrganiSelectDelegate>
{
    UILabel *_ordinaryLbl;
    UIButton *_ordinaryBtn;
    UIButton *_headrBtn;
    UILabel * _nameLbl;
    UIImageView * _imgViewSex;
    HCSStarRatingView *starRatingView;
    UITableView * _tableView;
    
    
    NSArray * _titleArray;
    NSArray * _imgArray;


}

@end

@implementation HomeViewController
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
    
}
-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;

    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    _imgArray = @[@[@"home_icon_course",@"home_icon_signment",@"home_icon_leave"],@[@"home_icon_salary",@"home_icon_attestation",@"home_icon_news"],@[@"home_icon_set",@"",@""]];
    
    _titleArray = @[@[@"课程",@"签到",@"请假"],@[@"工资",@"认证",@"消息"],@[@"设置",@"",@""]];

    
    
    [self prepareUI];
    // Do any additional setup after loading the view.
}
-(void)prepareUI{
    
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat w= Main_Screen_Width;
    CGFloat h = MCAdaptiveH(750, 480, Main_Screen_Width);
    
    UIView * bgview = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    bgview.backgroundColor = AppMCNACOLOR;
    [self.view addSubview:bgview];
    
    
     y = MCAdaptiveH(750, 70, Main_Screen_Width);
    x = 0;
    w = Main_Screen_Width;
    h = 20;
    _ordinaryLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _ordinaryLbl.textColor = AppMCNATitleCOLOR;
    _ordinaryLbl.font =[UIFont systemFontOfSize:18];
    _ordinaryLbl.textAlignment = NSTextAlignmentCenter;
    _ordinaryLbl.text = @"不知名机构";
    [bgview addSubview:_ordinaryLbl];
    
    w = [MCToolsManage heightforString:@"不知名机构" andHeight:20 fontSize:18] ;
    x =(Main_Screen_Width - w)/2 + w + 5;
    w = 30;
    h = 30;
    y -=5;
    _ordinaryBtn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [_ordinaryBtn setImage:[UIImage imageNamed:@"btn_cbb2"] forState:0];
    [_ordinaryBtn addTarget:self action:@selector(actionObtn) forControlEvents:UIControlEventTouchUpInside];
    [bgview addSubview:_ordinaryBtn];

    
    w = 60;
    h = 60;
    x = (Main_Screen_Width - w)/2;
    y = (bgview.mj_h - h)/2;
    _headrBtn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [_headrBtn setImage:[UIImage imageNamed:@"def_teacher-head"] forState:0];
    [bgview addSubview:_headrBtn];
    [_headrBtn addTarget:self action:@selector(actionHeaderBtn) forControlEvents:UIControlEventTouchUpInside];
    ViewBorderRadius(_headrBtn, 30, 1, [UIColor whiteColor]);
    
    y += h + 17;
    w = Main_Screen_Width;
    h = 20;
    x = 0;
    _nameLbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _nameLbl.text = @"michan";
    _nameLbl.textColor = [UIColor darkTextColor];
    _nameLbl.font = [UIFont systemFontOfSize:16];
    _nameLbl.textAlignment = NSTextAlignmentCenter;
    [bgview addSubview:_nameLbl];
    
    w = [MCToolsManage heightforString:@"michan" andHeight:20 fontSize:16] ;
    x = (Main_Screen_Width - w )/2 + w+ 12;
    w = 20;
    _imgViewSex = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _imgViewSex.image = [UIImage imageNamed:@"icon_female2"];
    [bgview addSubview:_imgViewSex];
    y +=h+ 5;
    h = 20;
    w = Main_Screen_Width/3;
    x = (Main_Screen_Width - w)/2;
    
   starRatingView  = [[HCSStarRatingView alloc] initWithFrame:CGRectMake(x, y, w, h)];
    starRatingView.maximumValue = 5;
    starRatingView.minimumValue = 0;
    starRatingView.value = 4.5f;
    starRatingView.tintColor = [UIColor redColor];
//    [starRatingView addTarget:self action:@selector(didChangeValue:) forControlEvents:UIControlEventValueChanged];
    starRatingView.enabled = NO;
    [self.view addSubview:starRatingView];

    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, bgview.mj_h, Main_Screen_Width, Main_Screen_Height -bgview.mj_h)];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.tableFooterView = [[UIView alloc]init];
    [self.view addSubview:_tableView];
    
    
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat h = (Main_Screen_Width -1)/3;
    return h;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString * cellid = @"HomeTableViewCell";
    HomeTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    if(!cell){
        
        cell = [[HomeTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.delegate = self;
    [cell prepareUI:_imgArray[indexPath.row] TitleArray:_titleArray[indexPath.row]];

    
    
    return cell;
    
}
#pragma mark-相关ctl
-(void)actionIconBtn:(NSString*)btnStr{
    NSLog(@"=====%@",btnStr);

    if ([btnStr isEqualToString:@"课程"]) {
        NSInteger x = (arc4random() % 2) + 1;;//测试
                
        
        if (x ==1) {
            LogInViewController * ctl = [[LogInViewController alloc]init];
            [self pushNewViewController:ctl];

        }
        else if (x ==2){
        
        
        MyCourseViewController * ctl = [[MyCourseViewController alloc]init];
        [self pushNewViewController:ctl];
        
        
        }
        

    }
    else if ([btnStr isEqualToString:@"工资"]){
        
        MySalaryViewController * ctl = [[MySalaryViewController alloc]init];
        [self pushNewViewController:ctl];

        
    }
    else if ([btnStr isEqualToString:@"请假"]){
        
        LeaveViewController * ctl = [[LeaveViewController alloc]init];
        [self pushNewViewController:ctl];
        
        
    }
    else if ([btnStr isEqualToString:@"认证"]){
        
        AttestationViewController * ctl = [[AttestationViewController alloc]init];
        [self pushNewViewController:ctl];
        
        
    }
    else if ([btnStr isEqualToString:@"设置"]){
        
        SettingViewController * ctl = [[SettingViewController alloc]init];
        [self pushNewViewController:ctl];
        
        
    }


    
}
#pragma mark-切换机构
-(void)actionObtn{
    
    OrganiSelectViewController * ctl = [[OrganiSelectViewController alloc]init];
    ctl.Organistate = MyOrgani_switch;
    ctl.delegate = self;
    [self pushNewViewController:ctl];
    
    
}
-(void)selectOrganiModle
{
    
}
#pragma mark-点击头像

-(void)actionHeaderBtn{
    
    MyProfileViewController * ctl = [[MyProfileViewController alloc]init];
    [self pushNewViewController:ctl];
}
#pragma mark CDPStarEvaluationDelegate获得实时评价级别
-(void)theCurrentCommentText:(NSString *)commentText{
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
