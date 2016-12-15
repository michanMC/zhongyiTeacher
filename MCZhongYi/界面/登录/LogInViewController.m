//
//  LogInViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/12.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "LogInViewController.h"
#import "ChangePwdViewController.h"
@interface LogInViewController ()
{
    
    UITextField * _phoneText;
    UITextField * _pwdText;

    
    
}

@end

@implementation LogInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"登录";
    [self prepareUI];
    
    
    // Do any additional setup after loading the view.
}
-(void)prepareUI{
    
    CGFloat w = Main_Screen_Width - 40;
    CGFloat h = 44*2 + 0.5;
    CGFloat x = 20;
    CGFloat y = (Main_Screen_Height - h)/2;
    UIView * bgview = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    bgview.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:bgview];
    ViewBorderRadius(bgview, 3, 1, [UIColor groupTableViewBackgroundColor]);
    UIView *lineview=[[UIView alloc]initWithFrame:CGRectMake(10, 44, bgview.mj_w - 20, 0.5)];
    lineview.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [bgview addSubview:lineview];
    
    
    UIImageView * img =[[ UIImageView alloc]initWithFrame:CGRectMake(10, 12, 20, 20)];
    img.image = [UIImage imageNamed:@"icon_contact"];
    [bgview addSubview:img];

    img =[[ UIImageView alloc]initWithFrame:CGRectMake(10, 44.5 + 12, 20, 20)];
    img.image = [UIImage imageNamed:@"icon_contact"];
    [bgview addSubview:img];
    
    x = 10 + 20 + 8;
    w = bgview.mj_w - x - 8;
    h = 44;
    y = 0;
    _phoneText = [[UITextField alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _phoneText.placeholder = @"请输入手机号/邮箱";
    _phoneText.font = [UIFont systemFontOfSize:14];
    _phoneText.clearButtonMode = UITextFieldViewModeAlways;
    [bgview addSubview:_phoneText];

    y+=h + 0.5;
    
    _pwdText = [[UITextField alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _pwdText.placeholder = @"请输入密码";
    _pwdText.font = [UIFont systemFontOfSize:14];
    _pwdText.clearButtonMode = UITextFieldViewModeAlways;

    [bgview addSubview:_pwdText];
    
    y =bgview.mj_y + bgview.mj_h + 10;

    w = [MCToolsManage heightforString:@"忘记密码" andHeight:20 fontSize:14];
    x = Main_Screen_Width - 20 - w;
    h = 20;
    UIButton *pwdbtn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
//    pwdbtn.backgroundColor =AppMCNACOLOR;
    [pwdbtn setTitle:@"忘记密码" forState:0];
    UIColor *cc = AppMCNATitleCOLOR;
    [pwdbtn setTitleColor:cc forState:0];
    pwdbtn.titleLabel.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:pwdbtn];
    [pwdbtn addTarget:self action:@selector(actionpwdBtn) forControlEvents:1<<6];
    

    
    
    x = 30;
    y +=h + 30;
    w= Main_Screen_Width - 2*x;
    h = 40;
    
    UIButton *okbtn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    okbtn.backgroundColor =AppMCNACOLOR;
    [okbtn setTitle:@"登录" forState:0];
    [okbtn setTitleColor:cc forState:0];
    okbtn.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:okbtn];
    [okbtn addTarget:self action:@selector(actionOkbtn) forControlEvents:1<<6];
    ViewRadius(okbtn, 3);

    y = (bgview.mj_y  - 240/2)/2+64/2;
    
    w = 240/2;
    h = w;
    x= (Main_Screen_Width - w )/2;
    UIImageView * imgview = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    imgview.image = [UIImage imageNamed:@"login_logo"];
    [self.view addSubview:imgview];
    
    
    
}
-(void)actionOkbtn{
    [self toPopVC];
    
    
}
-(void)actionpwdBtn{
    ChangePwdViewController * ctl =[[ChangePwdViewController alloc]init];
    [self pushNewViewController:ctl];
    
    
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
