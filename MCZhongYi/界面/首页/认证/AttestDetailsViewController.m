//
//  AttestDetailsViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/11.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "AttestDetailsViewController.h"
#import "AttestationTableViewCell.h"
@interface AttestDetailsViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    
    UITableView *_tableView;
    NSArray * _titleArray;

}

@end

@implementation AttestDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"认证详情";
    [self prepareUI];
    
    // Do any additional setup after loading the view.
}
-(void)prepareUI{
    
    _titleArray = @[
                    @[@"机构",@"姓名",@"性别",@"年龄"],
                    @[@"身份证",@"教师证",@"资质证",@"学历证"]
                    ];
    
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, Main_Screen_Width, Main_Screen_Height - 64) style:UITableViewStyleGrouped];
    _tableView.delegate =self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];

    [self prepareheadView];
    
    
}
-(void)prepareheadView{
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, Main_Screen_Width, 40)];
    view.backgroundColor = RGBCOLOR(212, 244, 248);
    _tableView.tableHeaderView = view;
    
    UIImageView * imgview = [[UIImageView alloc]initWithFrame:CGRectMake(15, (40-25)/2, 25, 25)];
    imgview.image =[UIImage imageNamed:@"icon_notice"];
    [view addSubview:imgview];
    UILabel * lbl = [[UILabel alloc]initWithFrame:CGRectMake(15+25 + 10, 0, Main_Screen_Width - 45 -5, 44)];
    lbl.text =@"您的资料正在审核中，请耐心等待~";
    lbl.textColor = [UIColor grayColor];
    lbl.font = [UIFont systemFontOfSize:14];
    [view addSubview:lbl];

    
    
    
    
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _titleArray.count;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_titleArray[section] count];
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    if (section == 0) {
        return 5;
    }
    return 10;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.001;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 1) {
        return 64;
    }
    return 44;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString * cellid = @"AttestationTableViewCell";
    
    AttestationTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    if (!cell) {
        cell =[[AttestationTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.titleStr = _titleArray[indexPath.section][indexPath.row];
    if (indexPath.section ==0) {
        
        [cell prepareUI1];
        cell.onameLbl.textColor = [UIColor grayColor];

        if (indexPath.row == 0) {
            cell.onameLbl.text = @"不知名机构";
            return cell;
            
        }
        if (indexPath.row == 1) {
            cell.onameLbl.text = @"michan";

            return cell;
            
        }
        if (indexPath.row == 2) {
            cell.onameLbl.text = @"男";
            return cell;
            
        }
        if (indexPath.row == 3) {
            cell.onameLbl.text = @"18";

            return cell;
            
        }
        
    }
    
    
    
    if (indexPath.section ==1) {
        if (indexPath.row == 0) {
            [cell prepareUI6];
            
            cell.dele2Btn.hidden = YES;
            cell.dele1Btn.hidden = YES;

            cell.tp1Btn.hidden = NO;
            cell.tp2Btn.hidden = NO;
            [cell.tp1Btn setImage:[UIImage imageNamed:@"def_pic88"] forState:0];
            [cell.tp2Btn setImage:[UIImage imageNamed:@"def_pic88"] forState:0];

            return cell;
            
        }
        if (indexPath.row == 1) {
            [cell prepareUI7];
            
            cell.dele3Btn.hidden = YES;

            cell.tp3Btn.hidden = NO;
                [cell.tp3Btn setImage:[UIImage imageNamed:@"def_pic88"] forState:0];
            
            return cell;
            
        }
        if (indexPath.row == 2) {
            [cell prepareUI8];
            cell.dele4Btn.hidden = YES;

            cell.tp4Btn.hidden = NO;
            [cell.tp4Btn setImage:[UIImage imageNamed:@"def_pic88"] forState:0];

                       return cell;
            
        }
        if (indexPath.row == 3) {
            [cell prepareUI9];
            cell.dele5Btn.hidden = YES;

            cell.tp5Btn.hidden = NO;
            
            [cell.tp5Btn setImage:[UIImage imageNamed:@"def_pic88"] forState:0];

            
            
            return cell;
            
        }
        
    }
    
    
    
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
