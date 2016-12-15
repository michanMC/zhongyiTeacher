//
//  AttestationViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/11.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "AttestationViewController.h"
#import "AttestationTableViewCell.h"
#import "OrganiSelectViewController.h"
#import "MCtimeSelectView.h"
#import "ZYQAssetPickerController.h"
#import "AttestRecordViewController.h"
@interface AttestationViewController ()<UITableViewDelegate,UITableViewDataSource,OrganiSelectDelegate,MCtimeSelectDelegate,UIActionSheetDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate,ZYQAssetPickerControllerDelegate>
{
    UITableView *_tableView;
    NSArray * _titleArray;
    
    
    NSInteger _QJindex;//0全 1兼职
    NSInteger _Sexindex;//0男 1女
    MCtimeSelectView *  SelectView;
    
    
    NSMutableArray * _imgarray1;
    NSMutableArray * _imgarray2;
    NSMutableArray * _imgarray3;
    NSMutableArray * _imgarray4;

    

}

@end

@implementation AttestationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"认证";
    
    _imgarray1 = [NSMutableArray array];
    _imgarray2 = [NSMutableArray array];
    _imgarray3 = [NSMutableArray array];
    _imgarray4 = [NSMutableArray array];

    _titleArray = @[
  @[@"机构",@"类型",@"姓名",@"性别",@"生日"],
  @[@"身份证",@"教师证",@"资质证",@"学历证"]
  ];
    [self prepareUI];
    // Do any additional setup after loading the view.
}
-(void)prepareUI{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, Main_Screen_Width, Main_Screen_Height - 64) style:UITableViewStyleGrouped];
    _tableView.delegate =self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    [self prepareFooerView];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"认证记录" style:UIBarButtonItemStylePlain target:self action:@selector(actionjL)];
}
-(void)prepareFooerView{
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, Main_Screen_Width, 100)];
    _tableView.tableFooterView = view;
    
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(25, 25, Main_Screen_Width - 50, 40)];
    btn.backgroundColor = AppMCNACOLOR;
    [btn setTitle:@"提交" forState:0];
    btn.titleLabel.font =[UIFont systemFontOfSize:15];
    UIColor * cc= AppMCNATitleCOLOR;
    [btn setTitleColor:cc forState:0];
    [view addSubview:btn];
    
    
}
-(void)actionjL{
    
    AttestRecordViewController * ctl =[[AttestRecordViewController alloc]init];
    [self pushNewViewController:ctl];
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _titleArray.count;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_titleArray[section] count];
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
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
        if (indexPath.row == 0) {
            [cell prepareUI1];
            return cell;

        }
        if (indexPath.row == 1) {
            [cell prepareUI2];
            if (_QJindex == 0) {
                cell.qBtn.selected = YES;
                cell.jBtn.selected = NO;
                
                ViewBorderRadius(cell.qBtn, 3, 1, [UIColor orangeColor]);
                ViewBorderRadius(cell.jBtn, 3, 1, [UIColor lightGrayColor]);


            }
            else
            {
                cell.qBtn.selected = NO;
                cell.jBtn.selected = YES;
                
                ViewBorderRadius(cell.jBtn, 3, 1, [UIColor orangeColor]);
                ViewBorderRadius(cell.qBtn, 3, 1, [UIColor lightGrayColor]);
                
            }
            [cell.qBtn addTarget:self action:@selector(actionQbtn:) forControlEvents:UIControlEventTouchUpInside];
            [cell.jBtn addTarget:self action:@selector(actionJbtn:) forControlEvents:UIControlEventTouchUpInside];

            return cell;
            
        }
        if (indexPath.row == 2) {
            [cell prepareUI3];
            return cell;
            
        }
        if (indexPath.row == 3) {
            [cell prepareUI4];
            if (_Sexindex == 0) {
                cell.Sex1Btn.selected = YES;
                cell.Sex2Btn.selected = NO;
                
                ViewBorderRadius(cell.Sex1Btn, 3, 1, [UIColor orangeColor]);
                ViewBorderRadius(cell.Sex2Btn, 3, 1, [UIColor lightGrayColor]);
                
                
            }
            else
            {
                cell.Sex1Btn.selected = NO;
                cell.Sex2Btn.selected = YES;
                
                ViewBorderRadius(cell.Sex2Btn, 3, 1, [UIColor orangeColor]);
                ViewBorderRadius(cell.Sex1Btn, 3, 1, [UIColor lightGrayColor]);
                
            }
            [cell.Sex1Btn addTarget:self action:@selector(actionSex1Btn:) forControlEvents:UIControlEventTouchUpInside];
            [cell.Sex2Btn addTarget:self action:@selector(actionSex2Btn:) forControlEvents:UIControlEventTouchUpInside];
            return cell;
            
        }
        if (indexPath.row == 4) {
            [cell prepareUI5];
            return cell;
            
        }

    }
    
    
    
    if (indexPath.section ==1) {
        if (indexPath.row == 0) {
            [cell prepareUI6];
            
            
            cell.tp1Btn.hidden = NO;
            
            if (_imgarray1.count == 0) {
                cell.dele1Btn.hidden = YES;
                [cell.tp1Btn setImage:[UIImage imageNamed:@"list_add-pic"] forState:0];
                cell.tp2Btn.hidden = YES;
                cell.dele2Btn.hidden = YES;
                
                
            }
            else if (_imgarray1.count == 1){
                
                cell.dele1Btn.hidden = NO;
                [cell.tp1Btn setImage:_imgarray1[0] forState:0];
                
                [cell.tp2Btn setImage:[UIImage imageNamed:@"list_add-pic"] forState:0];
                cell.tp2Btn.hidden = NO;
                cell.dele2Btn.hidden = YES;
                
                
                
            }
            else if (_imgarray1.count == 2){
                
                cell.dele1Btn.hidden = NO;
                [cell.tp1Btn setImage:_imgarray1[0] forState:0];
                
                [cell.tp2Btn setImage:_imgarray1[1] forState:0];
                cell.tp2Btn.hidden = NO;
                cell.dele2Btn.hidden = NO;
                
                
                
            }
            
            
            
            
            [cell.tp1Btn addTarget:self action:@selector(actionTp1) forControlEvents:1<<6];
            [cell.tp2Btn addTarget:self action:@selector(actionTp2) forControlEvents:1<<6];
            [cell.dele1Btn addTarget:self action:@selector(actiondele1Btn) forControlEvents:1<<6];
            [cell.dele2Btn addTarget:self action:@selector(actiondele2Btn) forControlEvents:1<<6];

            cell.countLbl.text = [NSString stringWithFormat:@"%ld/2张图片",_imgarray1.count];
            
            
            return cell;
            
        }
        if (indexPath.row == 1) {
            [cell prepareUI7];
            
            
            cell.tp3Btn.hidden = NO;
            if (_imgarray2.count == 0) {
                cell.dele3Btn.hidden = YES;
                [cell.tp3Btn setImage:[UIImage imageNamed:@"list_add-pic"] forState:0];
                
                
            }
            else if (_imgarray2.count == 1){
                
                cell.dele3Btn.hidden = NO;
                [cell.tp3Btn setImage:_imgarray2[0] forState:0];
                
                
            }
            [cell.tp3Btn addTarget:self action:@selector(actionTp3) forControlEvents:1<<6];
            [cell.dele3Btn addTarget:self action:@selector(actiondele3Btn) forControlEvents:1<<6];
            
            cell.countLbl.text = [NSString stringWithFormat:@"%ld/1张图片",_imgarray2.count];
            
            
            

            return cell;
            
        }
        if (indexPath.row == 2) {
            [cell prepareUI8];
            
            cell.tp4Btn.hidden = NO;
            if (_imgarray3.count == 0) {
                cell.dele4Btn.hidden = YES;
                [cell.tp4Btn setImage:[UIImage imageNamed:@"list_add-pic"] forState:0];
                
                
            }
            else if (_imgarray3.count == 1){
                
                cell.dele4Btn.hidden = NO;
                [cell.tp4Btn setImage:_imgarray3[0] forState:0];
                
                
            }
            [cell.tp4Btn addTarget:self action:@selector(actionTp4) forControlEvents:1<<6];
            [cell.dele4Btn addTarget:self action:@selector(actiondele4Btn) forControlEvents:1<<6];
            
            cell.countLbl.text = [NSString stringWithFormat:@"%ld/1张图片",_imgarray3.count];
            
            
            return cell;
            
        }
        if (indexPath.row == 3) {
            [cell prepareUI9];
            
            cell.tp5Btn.hidden = NO;
            if (_imgarray4.count == 0) {
                cell.dele5Btn.hidden = YES;
                [cell.tp5Btn setImage:[UIImage imageNamed:@"list_add-pic"] forState:0];
                
                
            }
            else if (_imgarray4.count == 1){
                
                cell.dele5Btn.hidden = NO;
                [cell.tp5Btn setImage:_imgarray4[0] forState:0];
                
                
            }
            [cell.tp5Btn addTarget:self action:@selector(actionTp5) forControlEvents:1<<6];
            [cell.dele5Btn addTarget:self action:@selector(actiondele5Btn) forControlEvents:1<<6];
            
            cell.countLbl.text = [NSString stringWithFormat:@"%ld/1张图片",_imgarray4.count];
            
            
            
            return cell;
            
        }
        
    }
    


    return [[UITableViewCell alloc]init];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            OrganiSelectViewController * ctl =[[ OrganiSelectViewController alloc]init];
            ctl.Organistate = MyOrgani_select;
            ctl.delegate = self;
            [self pushNewViewController:ctl];
        }
        else if (indexPath.row == 4){
            
            SelectView= [[MCtimeSelectView alloc]initWithFrame:CGRectMake(0, 0, Main_Screen_Width, Main_Screen_Height)];
            SelectView.deldagate = self;
            [SelectView showInWindow];

            
        }
    }
    
    
    
    
}
-(void)selectOrganiModle{
    
}
-(void)MCtimeSelecthidden
{
    [SelectView removeFromSuperview];
    
}

#pragma mark-添加身份证
-(void)actionTp1{
    
    if (_imgarray1.count) {
        
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
-(void)actionTp2{
    if (_imgarray1.count>1) {
        
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

-(void)actiondele2Btn{
    
    if (_imgarray1.count>1) {
        [_imgarray1 removeObjectAtIndex:1];
        [_tableView reloadData];
    }
    
    
}
-(void)actiondele1Btn{
    if (_imgarray1.count) {
        [_imgarray1 removeObjectAtIndex:0];
        [_tableView reloadData];
    }
 
}


#pragma mark-添加教师证
-(void)actionTp3{
    
    if (_imgarray2.count) {
        
        return;
        
    }
    
    UIActionSheet *myActionSheet = [[UIActionSheet alloc]
                                    initWithTitle:nil
                                    delegate:self
                                    cancelButtonTitle:@"取消"
                                    destructiveButtonTitle:nil
                                    otherButtonTitles: @"从相册选择", @"拍照",nil];
    myActionSheet.tag = 4001;
    [myActionSheet showInView:self.view];
    
    
    
    
}
-(void)actiondele3Btn{
    if (_imgarray2.count) {
        [_imgarray2 removeAllObjects];
        [_tableView reloadData];
    }
    
}

#pragma mark-添加资质证
-(void)actionTp4{
    
    if (_imgarray3.count) {
        
        return;
        
    }
    
    UIActionSheet *myActionSheet = [[UIActionSheet alloc]
                                    initWithTitle:nil
                                    delegate:self
                                    cancelButtonTitle:@"取消"
                                    destructiveButtonTitle:nil
                                    otherButtonTitles: @"从相册选择", @"拍照",nil];
    myActionSheet.tag = 4002;
    [myActionSheet showInView:self.view];
    
    
    
    
}
-(void)actiondele4Btn{
    if (_imgarray3.count) {
        [_imgarray3 removeAllObjects];
        [_tableView reloadData];
    }
    
}


#pragma mark-添加学历证
-(void)actionTp5{
    
    if (_imgarray4.count) {
        
        return;
        
    }
    
    UIActionSheet *myActionSheet = [[UIActionSheet alloc]
                                    initWithTitle:nil
                                    delegate:self
                                    cancelButtonTitle:@"取消"
                                    destructiveButtonTitle:nil
                                    otherButtonTitles: @"从相册选择", @"拍照",nil];
    myActionSheet.tag = 4003;
    [myActionSheet showInView:self.view];
    
    
    
    
}
-(void)actiondele5Btn{
    if (_imgarray4.count) {
        [_imgarray4 removeAllObjects];
        [_tableView reloadData];
    }
    
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
        if (actionSheet.tag == 4000) {
            picker.title = @"1";

        }
        else if (actionSheet.tag == 4001){
            picker.title = @"2";

        }
        else if (actionSheet.tag == 4002){
            picker.title = @"3";
            
        }
        else if (actionSheet.tag == 4003){
            picker.title = @"4";
            
        }

        
        [self presentViewController:picker animated:YES completion:nil];
        
        
        
    }
    
    [self btnClick:actionSheet.tag];
    
    
    
}
-(void)btnClick:(NSInteger)index{
    
    NSInteger countnum =0;
    NSInteger zongnum =1;

    if (index == 4000) {
       countnum = _imgarray1.count;
        zongnum = 2;
    }
    
    
    ZYQAssetPickerController *picker = [[ZYQAssetPickerController alloc] init];
    picker.tagindex =index;
    picker.maximumNumberOfSelection = zongnum - countnum;
    picker.assetsFilter = [ALAssetsFilter allPhotos];
    picker.showEmptyGroups=NO;
    picker.delegate=self;
    picker.selectionFilter = [NSPredicate predicateWithBlock:^BOOL(id evaluatedObject, NSDictionary *bindings) {
        
        
        if ([[(ALAsset*)evaluatedObject valueForProperty:ALAssetPropertyType] isEqual:ALAssetTypeVideo]) {
            NSTimeInterval duration = [[(ALAsset*)evaluatedObject valueForProperty:ALAssetPropertyDuration] doubleValue];
            return duration >= (zongnum - countnum);
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
        if ([picker.title isEqualToString:@"1"]) {
            if (_imgarray1.count<2) {
                [_imgarray1 addObject:image];
            }
  
        }
        if ([picker.title isEqualToString:@"2"]) {
            if (_imgarray2.count<1) {
                [_imgarray2 addObject:image];
            }
            
        }
        if ([picker.title isEqualToString:@"3"]) {
            if (_imgarray3.count<1) {
                [_imgarray3 addObject:image];
            }
            
        }
        if ([picker.title isEqualToString:@"4"]) {
            if (_imgarray4.count<1) {
                [_imgarray4 addObject:image];
            }
            
        }


        
        
    }
    [_tableView reloadData];
    //
//    [self loadImgView:_imgArray];
    
    
}

#pragma mark - ZYQAssetPickerController Delegate
-(void)assetPickerController:(ZYQAssetPickerController *)picker didFinishPickingAssets:(NSArray *)assets{
    
    NSLog(@"%ld",assets.count);
    
//    NSInteger countnum =0;
//    NSInteger zongnum =1;
//    
//    if (picker.tagindex == 4000) {
//        countnum = _imgarray1.count;
//        zongnum = 2;
//    }

    
    
    for (ALAsset *asset in assets) {
        UIImage*  tempImg =[UIImage imageWithCGImage:asset.defaultRepresentation.fullScreenImage];
       
        if (picker.tagindex == 4000) {
            if (_imgarray1.count <2) {
                [_imgarray1 addObject:tempImg];
            }
        }
        
        if (picker.tagindex == 4001) {
            if (!_imgarray2.count ) {
                [_imgarray2 addObject:tempImg];
            }
        }
        if (picker.tagindex == 4002) {
            if (!_imgarray3.count ) {
                [_imgarray3 addObject:tempImg];
            }
        }
        if (picker.tagindex == 4003) {
            if (!_imgarray4.count ) {
                [_imgarray4 addObject:tempImg];
            }
        }


        
    }
    [_tableView reloadData];
//    [self loadImgView:_imgArray];
}


-(void)assetPickerControllerDidMaximum:(ZYQAssetPickerController *)picker{
    NSLog(@"到达上限");
}






#pragma mark-类型 全职兼职
-(void)actionQbtn:(UIButton*)btn{
    
    if (btn.selected) {
        _QJindex = 1;
    }
    else
    {        _QJindex = 0;

        
    }
    [_tableView reloadData];
    
}
-(void)actionJbtn:(UIButton*)btn{
    if (btn.selected) {
        _QJindex = 0;
    }
    else
    {        _QJindex = 1;
        
        
    }
    [_tableView reloadData];

    
    
}
#pragma mark-性别
-(void)actionSex1Btn:(UIButton*)btn{
    if (btn.selected) {
        _Sexindex = 1;
    }
    else
    {        _Sexindex = 0;
        
        
    }
    [_tableView reloadData];
    
}
-(void)actionSex2Btn:(UIButton*)btn{
    if (btn.selected) {
        _Sexindex = 0;
    }
    else
    {        _Sexindex = 1;
        
        
    }
    [_tableView reloadData];
    
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
