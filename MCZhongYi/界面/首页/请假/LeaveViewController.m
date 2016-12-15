//
//  LeaveViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/11.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "LeaveViewController.h"
#import "LeaveTableViewCell.h"
#import "UIPlaceHolderTextView.h"
#import "ZYQAssetPickerController.h"
#import "MCtimeSelectView.h"
#import "LeaveTypeViewController.h"
#import "SelectLeaClassViewController.h"
#import "LeaveRecordViewController.h"

@interface LeaveViewController ()<UITableViewDelegate,UITableViewDataSource,UIActionSheetDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate,ZYQAssetPickerControllerDelegate,MCtimeSelectDelegate>
{
    
    UITableView * _tableView;
    UIPlaceHolderTextView * _textview;
    NSMutableArray *_imgArray;
    MCtimeSelectView *  SelectView;

    
    
}

@end

@implementation LeaveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"请假";
    _imgArray =[NSMutableArray array];
    [self prepareUI];
    // Do any additional setup after loading the view.
}
-(void)prepareUI{
    self.navigationItem.rightBarButtonItem= [[UIBarButtonItem alloc]initWithTitle:@"请假纪录" style:UIBarButtonItemStylePlain target:self action:@selector(actionjL)];

    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, Main_Screen_Width, Main_Screen_Height - 64) style:UITableViewStyleGrouped];
    _tableView.backgroundColor = AppBgCOLOR;
    _tableView.delegate =self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self preparefoerView];
    
}
-(void)actionjL{
    
    LeaveRecordViewController * ctl =[[LeaveRecordViewController alloc]init];
    [self pushNewViewController:ctl];
    
}

-(void)preparefoerView{
    
    CGFloat x = 10;
    CGFloat y = 10;
    CGFloat w =Main_Screen_Width - 20;
    CGFloat h = 5 + 20 + 5 + 70 + 70 + 10;
    
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, Main_Screen_Width, h + 40 + 80 + 50)];
    _tableView.tableFooterView =view;
    
    
    
    UIView * bgview = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    bgview.backgroundColor = [UIColor whiteColor];
    ViewBorderRadius(bgview, 3, 1, [UIColor groupTableViewBackgroundColor]);
    [view addSubview:bgview];
    
    
    y = 5;
    x = 10;
    h = 20;
    w = 130;
    UILabel * lbl2 = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lbl2.text = @"请假事由";
    lbl2.textColor =[UIColor darkTextColor];
    lbl2.font = [UIFont systemFontOfSize:14];
    [bgview addSubview:lbl2];
    
    y +=h + 5;
    h = 70;
    w = bgview.mj_w - 20;
    
    
    _textview = [[UIPlaceHolderTextView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _textview.placeholder = @"请输入请假事由(必填)";
    _textview.font = [UIFont systemFontOfSize:14];
    [bgview addSubview:_textview];

    y += h + 10;
    
    w= 70;
    h = 70;
    x = bgview.mj_w - 10 -w;
    
    for (NSInteger i = 0; i<3; i++) {
        UIView * btnView = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
        [bgview addSubview:btnView];
        
        UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(10, 10, 50, 50)];
        [btn setImage:[UIImage imageNamed:@"list_add-pic"] forState:0];
        btn.tag = i + 100;
        btn.hidden = YES;
        [btn addTarget:self action:@selector(actionAddtp:) forControlEvents:1<<6];
        [btnView addSubview:btn];
        if (i == 0) {
            btn.hidden = NO;
        }
        
        UIButton * delebtn = [[UIButton alloc]initWithFrame:CGRectMake(btnView.mj_w - 20, 0, 20, 20)];
        [delebtn setImage:[UIImage imageNamed:@"btn_wrong"] forState:0];
        delebtn.tag = i + 200;
        [delebtn addTarget:self action:@selector(actiondeleimg:) forControlEvents:1<<6];

        
        delebtn.hidden = YES;
        [btnView addSubview:delebtn];
        x -=w;
    }
    
    
    y = bgview.mj_h+10;
    h = 40;
    w= 220;
    h = 40;
    x = 10 + 20;
    lbl2 = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    lbl2.text = @"需提前3天进行请假";
    lbl2.textColor =[UIColor darkTextColor];
    lbl2.font = [UIFont systemFontOfSize:13];
    [view addSubview:lbl2];
    UIImageView * iocnImg = [[UIImageView alloc]initWithFrame:CGRectMake(10, y +10, 20, 20)];
    iocnImg.image = [UIImage imageNamed:@"icon_time"];
    [view addSubview:iocnImg];

    y += h + 70;
    x = 30;
    w = Main_Screen_Width - 60;
    h = 40;
    UIButton * sutbtn = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
    sutbtn.backgroundColor = AppMCNACOLOR;
    ViewRadius(sutbtn, 5);
    [sutbtn setTitle:@"提交" forState:0];
    sutbtn.titleLabel.font =[UIFont systemFontOfSize:15];
    UIColor * cc = AppMCNATitleCOLOR;
    [sutbtn setTitleColor:cc forState:0];
    [view addSubview:sutbtn];

    
    
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.001;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 10;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        CGFloat viewh = 44*4 + 0.5*3 + 44 + 10;

        return viewh;
    }
    return 44;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellid = @"LeaveTableViewCell";
    LeaveTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    if (!cell) {
        cell =[[LeaveTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    [cell prepareUI1];
    [cell.btn1 addTarget:self action:@selector(actionBtn1) forControlEvents:1<<6];
    [cell.btn2 addTarget:self action:@selector(actionBtn2) forControlEvents:1<<6];
    [cell.btn3 addTarget:self action:@selector(actionBtn3) forControlEvents:1<<6];
    [cell.btn4 addTarget:self action:@selector(actionBtn4) forControlEvents:1<<6];

    return cell;
    
    
    return [[UITableViewCell alloc]init];
}
-(void)actionBtn1{
    LeaveTypeViewController * ctl = [[LeaveTypeViewController alloc]init];
    [self pushNewViewController:ctl];
    
    
}
-(void)actionBtn2{
    SelectLeaClassViewController * ctl = [[SelectLeaClassViewController alloc]init];
    [self pushNewViewController:ctl];
    
    
}

-(void)actionBtn3{
    SelectView= [[MCtimeSelectView alloc]initWithFrame:CGRectMake(0, 0, Main_Screen_Width, Main_Screen_Height)];
    SelectView.deldagate = self;
    [SelectView showInWindow];
    
}

-(void)actionBtn4{
    SelectView= [[MCtimeSelectView alloc]initWithFrame:CGRectMake(0, 0, Main_Screen_Width, Main_Screen_Height)];
    SelectView.deldagate = self;
    [SelectView showInWindow];
 
    
}
-(void)MCtimeSelecthidden
{
    [SelectView removeFromSuperview];
    
}

#pragma mark-删除图片

-(void)actiondeleimg:(UIButton*)btn{
    
    NSInteger index = btn.tag - 200;
    
    if (index < _imgArray.count) {
        [_imgArray removeObjectAtIndex:index];
    }
    [self loadImgView:_imgArray];
    
    
}

#pragma mrak -添加图片
-(void)actionAddtp:(UIButton*)btn{
    NSInteger index = btn.tag - 100;
    if (index<_imgArray.count) {
        return;
    }
    
    UIActionSheet *myActionSheet = [[UIActionSheet alloc]
                                    initWithTitle:nil
                                    delegate:self
                                    cancelButtonTitle:@"取消"
                                    destructiveButtonTitle:nil
                                    otherButtonTitles: @"从相册选择", @"拍照",nil];
    myActionSheet.tag = 4000;
    [myActionSheet showInView:self.view];
    

}
#pragma mark-选择从哪里拿照片
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    if(buttonIndex==2) return;
    
    
    UIImagePickerControllerSourceType sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
    if(buttonIndex==1){//拍照
        sourceType=UIImagePickerControllerSourceTypeCamera;
        if (![UIImagePickerController isSourceTypeAvailable:sourceType]){
            kAlertMessage(@"检测到无效的摄像头设备");
            return ;
        }
        
        UIImagePickerController * picker = [[UIImagePickerController alloc]init];
        
        picker.delegate = self;
        picker.allowsEditing=YES;
        picker.sourceType=sourceType;
        picker.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        
        [self presentViewController:picker animated:YES completion:nil];
        
        
        
    }
    
    [self btnClick];
    
    
    
}
-(void)btnClick{
    
    NSInteger countnum =_imgArray.count;
    
    
    ZYQAssetPickerController *picker = [[ZYQAssetPickerController alloc] init];
    picker.maximumNumberOfSelection = 3 - countnum;
    picker.assetsFilter = [ALAssetsFilter allPhotos];
    picker.showEmptyGroups=NO;
    picker.delegate=self;
    picker.selectionFilter = [NSPredicate predicateWithBlock:^BOOL(id evaluatedObject, NSDictionary *bindings) {
        
        
        if ([[(ALAsset*)evaluatedObject valueForProperty:ALAssetPropertyType] isEqual:ALAssetTypeVideo]) {
            NSTimeInterval duration = [[(ALAsset*)evaluatedObject valueForProperty:ALAssetPropertyDuration] doubleValue];
            return duration >= (3 - countnum);
        } else {
            return YES;
        }
        
        
        
    }];
    
    [self presentViewController:picker animated:YES completion:NULL];
    
}
//图像选取器的委托方法，选完图片后回调该方法
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
    [picker dismissViewControllerAnimated:YES completion:nil];
    
    UIImage *image=[info objectForKey:@"UIImagePickerControllerEditedImage"];
    
    //当图片不为空时显示图片并保存图片
    if (image != nil) {
        
        if (_imgArray.count<3) {
            [_imgArray addObject:image];
        }
        
        
    }
    [self loadImgView:_imgArray];
    
    
}

#pragma mark - ZYQAssetPickerController Delegate
-(void)assetPickerController:(ZYQAssetPickerController *)picker didFinishPickingAssets:(NSArray *)assets{
    
    NSLog(@"%ld",assets.count);
    
    for (ALAsset *asset in assets) {
        UIImage*  tempImg =[UIImage imageWithCGImage:asset.defaultRepresentation.fullScreenImage];
        if (_imgArray.count <3) {
            [_imgArray addObject:tempImg];
        }
    }
    
    [self loadImgView:_imgArray];
}
#pragma mark-重新整理图片位置
-(void)loadImgView:(NSMutableArray*)imgarray{
    for (NSInteger i =0 ;i < 3; i++) {
        NSInteger imgindex = 100 + i;
        NSInteger deleindex = 200 + i;
        
        UIButton * imgBtn = [self.view viewWithTag:imgindex];
        UIButton * deleBtn = [self.view viewWithTag:deleindex];
        [imgBtn setImage:[UIImage imageNamed:@"list_add-pic"] forState:0];
        
        deleBtn.hidden = YES;
        imgBtn.hidden = YES;
        if (i == 0) {
            imgBtn.hidden = NO;
        }
        
    }
    
    
    
    for (NSInteger i =0 ;i < imgarray.count; i++) {
        UIImage * img =imgarray[i];
        NSInteger imgindex = 100 + i;
        NSInteger deleindex = 200 + i;
        
        UIButton * imgBtn = [self.view viewWithTag:imgindex];
        UIButton * deleBtn = [self.view viewWithTag:deleindex];
        [imgBtn setImage:img forState:0];
        deleBtn.hidden = NO;
        imgBtn.hidden = NO;
    }
    
    
    if (imgarray.count < 3) {
        NSInteger index = imgarray.count + 100;
        
        UIButton * imgBtn = [self.view viewWithTag:index];
        imgBtn.hidden = NO;
        
        
        
    }
    
}


-(void)assetPickerControllerDidMaximum:(ZYQAssetPickerController *)picker{
    NSLog(@"到达上限");
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
