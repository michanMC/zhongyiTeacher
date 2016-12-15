//
//  DimissionViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/12.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "DimissionViewController.h"
#import "UIPlaceHolderTextView.h"
#import "MCtimeSelectView.h"
@interface DimissionViewController ()<MCtimeSelectDelegate>
{
    
    UILabel * _timeLbl;
    
    MCtimeSelectView *  SelectView;

    UIPlaceHolderTextView *_TextView1;
    UIPlaceHolderTextView *_TextView2;

    
    
}

@end

@implementation DimissionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"离职申请";
    NSInteger x = (arc4random() % 2) + 1;;//测试
    
    
    if (x ==1) {
        [self prepareUI1];

    }
    else
    {
        [self prepareUI2];
 
    }
    // Do any additional setup after loading the view.
}
-(void)prepareUI1{
  
    
    CGFloat x = 20;
    CGFloat y = 20+64;
    CGFloat w = Main_Screen_Width- 2*x;
    CGFloat h = 44;
    
    UIView * bgview = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    bgview.backgroundColor = [UIColor whiteColor];
    ViewBorderRadius(bgview, 3, 1, [UIColor groupTableViewBackgroundColor]);
    [self.view addSubview:bgview];
    
    
    
    UILabel * lbl =[[ UILabel alloc]initWithFrame:CGRectMake(10, 0, 100, 44)];
    lbl.text = @"离职时间";
    lbl.textColor = [UIColor grayColor];
    lbl.font = [UIFont systemFontOfSize:15];
    [bgview addSubview:lbl];
    
    _timeLbl = [[UILabel alloc]initWithFrame:CGRectMake(100 + 10, 0, bgview.mj_w - 8 - 20 - 8 - 100 - 10, 44)];
    _timeLbl.textColor = [UIColor darkTextColor];
    _timeLbl.font =[UIFont systemFontOfSize:15];
    _timeLbl.text = @"请选择(必填)";
    _timeLbl.textAlignment = NSTextAlignmentRight;
    [bgview addSubview:_timeLbl];

    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(100 + 10, 0, bgview.mj_w - 8 - 20 - 8 - 100 - 10, 44)];
    [btn addTarget:self action:@selector(actiontimeBtn) forControlEvents:1<<6];
    [bgview addSubview:btn];

    
    x = 20;
    y = bgview.mj_h + bgview.mj_y + 10;
    w = bgview.mj_w ;
    h = 10 + 20 + 5 + 90;
    
    bgview = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    bgview.backgroundColor = [UIColor whiteColor];
    ViewBorderRadius(bgview, 3, 1, [UIColor groupTableViewBackgroundColor]);
    [self.view addSubview:bgview];
    
    x = 10;
    y = 10;
    h = 20;
    w = 100;
    lbl =[[ UILabel alloc]initWithFrame:CGRectMake(10, 0, 100, 44)];
    lbl.text = @"离职原因";
    lbl.textColor = [UIColor grayColor];
    lbl.font = [UIFont systemFontOfSize:15];
    [bgview addSubview:lbl];
    y+=h + 5;
    x -= 5;
    w = bgview.mj_w -2*x;
    h = 80;
    _TextView1 = [[UIPlaceHolderTextView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _TextView1.placeholder = @"请输入离职原因(必填)";
    _TextView1.font = [UIFont systemFontOfSize:14];
    [bgview addSubview:_TextView1];

    
  
    x = 20;
    y = bgview.mj_h + bgview.mj_y + 10;
    w = bgview.mj_w ;
    h = 10 + 20 + 5 + 70;
    
    bgview = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    bgview.backgroundColor = [UIColor whiteColor];
    ViewBorderRadius(bgview, 3, 1, [UIColor groupTableViewBackgroundColor]);
    [self.view addSubview:bgview];
    
    x = 10;
    y = 10;
    h = 20;
    w = 100;
    lbl =[[ UILabel alloc]initWithFrame:CGRectMake(10, 0, 100, 44)];
    lbl.text = @"班级情况";
    lbl.textColor = [UIColor grayColor];
    lbl.font = [UIFont systemFontOfSize:15];
    [bgview addSubview:lbl];
    y+=h + 5;
    x -= 5;
    w = bgview.mj_w -2*x;
    h = 60;
    _TextView2 = [[UIPlaceHolderTextView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _TextView2.placeholder = @"请输入班级情况(必填)";
    _TextView2.font = [UIFont systemFontOfSize:14];
    [bgview addSubview:_TextView2];
    
    
    btn = [[UIButton alloc]initWithFrame:CGRectMake(30, bgview.mj_h + bgview.mj_y + 25, Main_Screen_Width - 60, 40)];
    btn.backgroundColor =  AppMCNACOLOR;
    ViewRadius(btn, 3);
    btn.titleLabel.font = [UIFont systemFontOfSize:15];
    [btn setTitle:@"提交" forState:0];
    UIColor *cc = AppMCNATitleCOLOR;
    [btn setTitleColor:cc forState:0];
    
    [self.view addSubview:btn];

    
}
-(void)actiontimeBtn{
    SelectView= [[MCtimeSelectView alloc]initWithFrame:CGRectMake(0, 0, Main_Screen_Width, Main_Screen_Height)];
    SelectView.deldagate = self;
    [SelectView showInWindow];

    
    
}
-(void)MCtimeSelecthidden
{
    [SelectView removeFromSuperview];
    
}

-(void)prepareUI2{
    
    CGFloat x = 0;
    CGFloat y = 64;
    CGFloat w= Main_Screen_Width;
    CGFloat h = 40;
    
    
    
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(x, y, Main_Screen_Width, h)];
    view.backgroundColor = RGBCOLOR(212, 244, 248);
    [self.view addSubview:view];
    UIImageView * imgview = [[UIImageView alloc]initWithFrame:CGRectMake(15, (40-25)/2, 25, 25)];
    imgview.image =[UIImage imageNamed:@"icon_notice"];
    [view addSubview:imgview];
    UILabel * lbl = [[UILabel alloc]initWithFrame:CGRectMake(15+25 + 10, 0, Main_Screen_Width - 45 -5, 44)];
    lbl.text =@"您的资料正在审核中，请耐心等待~";
    lbl.textColor = [UIColor grayColor];
    lbl.font = [UIFont systemFontOfSize:14];
    [view addSubview:lbl];
    

    y+=h + 10;
    
    x = 20;
    w= Main_Screen_Width - 40;
    h = 44 * 3 + 1;
    
    
    UIView * bgview = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    bgview.backgroundColor = [UIColor whiteColor];
    ViewBorderRadius(bgview, 3, 1, [UIColor groupTableViewBackgroundColor]);
    [self.view addSubview:bgview];
    
    lbl =[[ UILabel alloc]initWithFrame:CGRectMake(10, 0, 100, 44)];
    lbl.text = @"离职时间";
    lbl.textColor = [UIColor grayColor];
    lbl.font = [UIFont systemFontOfSize:15];
    [bgview addSubview:lbl];

    lbl =[[ UILabel alloc]initWithFrame:CGRectMake(110, 0, bgview.mj_w - 110 -10, 44)];
    lbl.text = @"2016-09-09";
    lbl.textAlignment = NSTextAlignmentRight;
    lbl.textColor = [UIColor grayColor];
    lbl.font = [UIFont systemFontOfSize:15];
    [bgview addSubview:lbl];
    

    UIView * lineView = [[UIView alloc]initWithFrame:CGRectMake(x, 44, bgview.mj_w, 0.5)];
    lineView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [bgview addSubview:lineView];

    
    lbl =[[ UILabel alloc]initWithFrame:CGRectMake(10, 44.5, 100, 44)];
    lbl.text = @"离职时间";
    lbl.textColor = [UIColor grayColor];
    lbl.font = [UIFont systemFontOfSize:15];
    [bgview addSubview:lbl];
    
    lbl =[[ UILabel alloc]initWithFrame:CGRectMake(110, 44.5, bgview.mj_w - 110 -10, 44)];
    lbl.text = @"世界那么大，我想去看看";
    lbl.textAlignment = NSTextAlignmentRight;
    lbl.textColor = [UIColor grayColor];
    lbl.font = [UIFont systemFontOfSize:15];
    [bgview addSubview:lbl];
    
    
    lineView = [[UIView alloc]initWithFrame:CGRectMake(x, 44+0.5+44, bgview.mj_w, 0.5)];
    lineView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [bgview addSubview:lineView];
    
    lbl =[[ UILabel alloc]initWithFrame:CGRectMake(10, 44*2+1, 100, 44)];
    lbl.text = @"班级情况";
    lbl.textColor = [UIColor grayColor];
    lbl.font = [UIFont systemFontOfSize:15];
    [bgview addSubview:lbl];
    
    lbl =[[ UILabel alloc]initWithFrame:CGRectMake(110, 44*2+1, bgview.mj_w - 110 -10, 44)];
    lbl.text = @"课程已完成";
    lbl.textAlignment = NSTextAlignmentRight;
    lbl.textColor = [UIColor grayColor];
    lbl.font = [UIFont systemFontOfSize:15];
    [bgview addSubview:lbl];
    

    
    
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
