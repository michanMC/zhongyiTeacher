//
//  LookSummaryViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/10.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "LookSummaryViewController.h"
#import "LookSummaryTableViewCell.h"
@interface LookSummaryViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    
    
    UITableView *_tableView;
    
}

@end

@implementation LookSummaryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"查看总结";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self prepareUI];
    
    // Do any additional setup after loading the view.
}
-(void)prepareUI{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, Main_Screen_Width, Main_Screen_Height - 64) style:UITableViewStyleGrouped];
    _tableView.delegate =self;
    _tableView.dataSource = self;
    _tableView.separatorStyle =UITableViewCellSeparatorStyleNone;
    [self.view addSubview:_tableView];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.001;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.001;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        return 50;
    }
    if (indexPath.row == 1) {
        CGFloat w = Main_Screen_Width - 20;
        CGFloat h = 40;
        NSString * str = @"提起提起提起提起提起提起提起提起提起提起提起提起提起提起提起";
        h = [MCToolsManage heightforString:str andWidth:w fontSize:14];
        return h +15 + 5;
 
    }
    if (indexPath.row == 2) {
        CGFloat x = 10;
        CGFloat y = 0;
        CGFloat w = Main_Screen_Width - 10 - 10;
        CGFloat h = 40;

        
        CGFloat imgx = 0;
        CGFloat imgy = 0;
        CGFloat imgw = (w -10)/3;
        CGFloat imgh = imgw;
        
        for (NSInteger i =0; i < 9; i++) {
            
            if (i == 2 || i == 5) {
                imgx = 0;
                imgy += imgh + 5;
            }
            else
            {
                imgx += imgw + 5;
            }
            
        }
        
        h = imgy + imgh;
        
        return h + 5;
    }
    
    
    
    
    return 44;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellid = @"LookSummaryTableViewCell";
    
    LookSummaryTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    if (!cell) {
        cell = [[LookSummaryTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    if (indexPath.row == 0) {
        [cell prepareUI1];
        return cell;
    }
    if (indexPath.row == 1) {
        [cell prepareUI2];
        return cell;
    }
    if (indexPath.row == 2) {
        [cell prepareUI3];
        return cell;
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
