//
//  CallClass2ViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/10.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "CallClass2ViewController.h"
#import "CallClassTableViewCell.h"

@interface CallClass2ViewController ()
<UITableViewDelegate,UITableViewDataSource>
{
    
    
    UITableView * _tableView;
    
    
}


@end

@implementation CallClass2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"上课点名";
    [self prepareUI];

    // Do any additional setup after loading the view.
}
-(void)prepareUI{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, Main_Screen_Width, Main_Screen_Height - 64) style:UITableViewStyleGrouped];
    _tableView.delegate =self;
    _tableView.dataSource = self;
    _tableView.backgroundColor = AppBgCOLOR;
//    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.view addSubview:_tableView];
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 5;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 30;

}
-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"已到(13)";
    }
    if (section == 1) {
        return @"待确认(5)";
    }
    if (section == 2) {
        return @"未到(4)";
    }
    if (section == 3) {
        return @"请假(1)";
    }

    
    return @"";
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSInteger count = 0;
    if (indexPath.section ==0) {
        count = 5;
    }
    if (indexPath.section ==1) {
        count = 5;

    }
    if (indexPath.section ==2) {
        count = 5;

    }
    if (indexPath.section ==3) {
        count = 10;

    }
    
    
        CGFloat x = 20;
        CGFloat y = 0;
        CGFloat w = (Main_Screen_Width - 2*x)/5;
        CGFloat btnw = w - 20;
        CGFloat h = w +5;
//        CGFloat btnx = 10;
//        CGFloat btny = 10;
//        CGFloat btnh = btnw;
    
        for (NSInteger i = 0; i < count; i++) {
            if ((x + w + 45 > Main_Screen_Width) &&(i +1) < count) {
                x = 10;
                y +=h;
            }
            else
            {
                x += w;
            }
            
        }
        
        y +=h+10;
        return y;
//    return 44;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellid = @"CallClassTableViewCell";
    CallClassTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    if (!cell) {
        cell =[[CallClassTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    if (indexPath.section == 0) {
        cell.CallClassindedx = 1;
        [cell prepareUI2];
        return cell;
    }
    if (indexPath.section == 1) {
        cell.CallClassindedx = 2;
        [cell prepareUI2];
        return cell;
    }
    if (indexPath.section == 2) {
        cell.CallClassindedx = 3;
        [cell prepareUI2];
        return cell;
    }
    if (indexPath.section == 3) {
        cell.CallClassindedx = 4;
        [cell prepareUI2];
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
