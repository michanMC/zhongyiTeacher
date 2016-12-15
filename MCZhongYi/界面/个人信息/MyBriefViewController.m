//
//  MyBriefViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/6.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "MyBriefViewController.h"

@interface MyBriefViewController ()<UITextFieldDelegate>
{
    
    UITextField * _textField;
    
    
}

@end

@implementation MyBriefViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"个人简介";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(actionOK)];
    _textField = [[UITextField alloc]initWithFrame:CGRectMake(5, 64, Main_Screen_Width - 10, 44)];
    _textField.clearButtonMode = UITextFieldViewModeAlways;
    _textField.placeholder = @"填写简介";
    _textField.textColor = [UIColor darkTextColor];
    _textField.font = [UIFont systemFontOfSize:14];
    _textField.delegate = self;
    [self.view addSubview:_textField];
    UIView * lineview = [[UIView alloc]initWithFrame:CGRectMake(0, 64+44, Main_Screen_Width, 0.5)];
    
    lineview.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:lineview];

    
    
    
    // Do any additional setup after loading the view.
}
-(void)actionOK{
    
    
    
}
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    
    
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
