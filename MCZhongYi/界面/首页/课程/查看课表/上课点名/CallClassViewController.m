//
//  CallClassViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/10.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "CallClassViewController.h"
#import "CallClassTableViewCell.h"

@interface CallClassViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    
    
    UITableView * _tableView;
    
    
}

@end

@implementation CallClassViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"上课点名";
    [self prepareUI];
    [self prepareBarView];
    // Do any additional setup after loading the view.
}
-(void)prepareUI{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, Main_Screen_Width, Main_Screen_Height - 64-49) style:UITableViewStyleGrouped];
    _tableView.delegate =self;
    _tableView.dataSource = self;
    _tableView.backgroundColor = AppBgCOLOR;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.view addSubview:_tableView];
    
}
-(void)prepareBarView{
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(0, Main_Screen_Height - 49, Main_Screen_Width, 49)];
    btn.backgroundColor =AppMCNACOLOR;
    [btn setTitle:@"点名" forState:0];
    UIColor *cc = AppMCNATitleCOLOR;
    [btn setTitleColor:cc forState:0];
    btn.titleLabel.font = [UIFont systemFontOfSize:16];
    [self.view addSubview:btn];
    
    
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 10;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if(section == 1) {
        return 30;
    }
    return 10;
}
-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 1) {
        return @"请假(1)";
    }
    
    return @"";
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        CGFloat x = 20;
        CGFloat y = 10;
        CGFloat w = Main_Screen_Width - 2*x;
        CGFloat h = MCAdaptiveH(750, 135, w);
        
        UIImageView * img = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, w, h)];
        
        
        y+=(h - h/2);
        h = 100;
        UIView *bgview= [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
        
        
        y = img.mj_h / 2 + 30;
        
        CGFloat  btnx = 0;
        CGFloat btny = y;
        CGFloat btnw = bgview.mj_w/5;
        CGFloat btnh = btnw +5;
        
        for (NSInteger i = 0;i < 13 ; i++) {
            UIView * view = [[UIView alloc]initWithFrame:CGRectMake(btnx, btny, btnw, btnh)];
            
            [bgview addSubview:view];
            
            
            
            UIButton * btn =[[UIButton alloc ]initWithFrame:CGRectMake(10, 0, btnw - 20, btnw - 20)];
            [btn setImage:[UIImage imageNamed:@"def_head112"] forState:0];
            ViewRadius(btn, (btnw - 20)/2);
            [view addSubview:btn];
            
            
            if ((btnx+btnw + 45 >= Main_Screen_Width)&&(i +1) < 13) {
                btnx = 0;
                btny +=btnh + 5;
            }
            else
            {
                btnx +=btnw;
            }
            
        }
        
        h = btny + btnh + 10;

        
        return  10 + h + img.mj_h/2;
    }
    if (indexPath.section ==1) {
        CGFloat x = 20;
        CGFloat y = 0;
        CGFloat w = (Main_Screen_Width - 2*x)/5;
        CGFloat btnw = w - 20;
        CGFloat h = w +5;
        CGFloat btnx = 10;
        CGFloat btny = 10;
        CGFloat btnh = btnw;
        
        for (NSInteger i = 0; i < 10; i++) {
            if ((x + w + 45 > Main_Screen_Width)&&(i +1) < 10) {
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
    }
    return 44;
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
        [cell prepareUI1];
        return cell;
    }
    if (indexPath.section == 1) {
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
