//
//  LookStudent3ViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/9.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "LookStudent3ViewController.h"
#import "UIViewController+ZJScrollPageController.h"
#import "LookStudentTableViewCell.h"

@interface LookStudent3ViewController ()
<UITableViewDelegate,UITableViewDataSource>
{
    
    UITableView *_tableView;
    
}

@end

@implementation LookStudent3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSLog(@"%f",self.view.mj_h);
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, Main_Screen_Width, self.view.mj_h - 64 - 44) style:UITableViewStyleGrouped];
    _tableView.delegate =self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.backgroundColor = RGBCOLOR(250, 247, 247);

    // Do any additional setup after loading the view.
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
    return 8;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return   10+44 + 10 + 20+8+20+5;//MCAdaptiveH(750, 224, Main_Screen_Width);
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellid = @"LookStudentTableViewCell";
    LookStudentTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    if (!cell) {
        cell = [[LookStudentTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        cell.selectionStyle = UITableViewCellEditingStyleNone;
    }
    [cell prepareUI3];
    return cell;
//    return [[UITableViewCell alloc]init];
    
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
