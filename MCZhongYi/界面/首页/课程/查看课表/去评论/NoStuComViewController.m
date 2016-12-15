//
//  NoStuComViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/9.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "NoStuComViewController.h"
#import "NoStuComViewTableViewCell.h"
#import "SubmitSutComViewController.h"
@interface NoStuComViewController ()
<UITableViewDelegate,UITableViewDataSource>
{
    
    UITableView *_tableView;
    
    
    UIButton *_comBtn;
    UIButton *_allSelectBtn;

    
    
    
}


@end

@implementation NoStuComViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSLog(@"%f",self.view.mj_h);
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, Main_Screen_Width, self.view.mj_h - 64 - 44 - 49) style:UITableViewStyleGrouped];
    _tableView.delegate =self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    self.view.backgroundColor = RGBCOLOR(250, 247, 247);
    [self preparebarView];
    // Do any additional setup after loading the view.
}
-(void)preparebarView{
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0, self.view.mj_h - 64 - 44 - 49, Main_Screen_Width, 49)];
    view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:view];
    
    _comBtn = [[UIButton alloc]initWithFrame:CGRectMake(Main_Screen_Width/4, 0, Main_Screen_Width -Main_Screen_Width/4 , 49)];
    UIColor *cc = AppMCNATitleCOLOR;
    [_comBtn setTitleColor:cc forState:0];
    _comBtn.backgroundColor = AppMCNACOLOR;
    [_comBtn setTitle:@"评价(0)" forState:0];
    _comBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    [_comBtn addTarget:self action:@selector(actionSut) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:_comBtn];
    
    CGFloat x = 10;
    CGFloat w = 25;
    CGFloat h = 25;
    CGFloat y =( 49 - h )/2;
    
    
    _allSelectBtn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    [_allSelectBtn setImage:[UIImage imageNamed:@"btn_chb_out"] forState:UIControlStateNormal];
    [_allSelectBtn setImage:[UIImage imageNamed:@"btn_chb_on"] forState:UIControlStateSelected];
    [_allSelectBtn addTarget:self action:@selector(actionAllSeleBtn:) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:_allSelectBtn];

    x += w + 8;
    h = 49;
    w = 50;
    y = 0;
    UILabel * lbl = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lbl.text = @"全选";
    lbl.textColor= [UIColor darkTextColor];
    lbl.font = [UIFont systemFontOfSize:14];
    lbl.textAlignment = NSTextAlignmentLeft;
    
    [view addSubview:lbl];

    
}
#pragma mark-全选
-(void)actionAllSeleBtn:(UIButton*)btn{
        btn.selected = !btn.selected;
    
    
}
-(void)actionSut{
    
    
    SubmitSutComViewController*ctl = [[SubmitSutComViewController alloc]init];
    [self pushNewViewController:ctl];
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.001;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 5;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellid = @"NoStuComViewTableViewCell";
    NoStuComViewTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    if (!cell) {
        cell = [[NoStuComViewTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        cell.selectionStyle = UITableViewCellEditingStyleNone;
    }
    [cell prepareUI];
    return cell;
    //    return cell;
    return [[UITableViewCell alloc]init];
    
    //    return [[UITableViewCell alloc]init];
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
