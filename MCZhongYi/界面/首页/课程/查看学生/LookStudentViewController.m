//
//  LookStudentViewController.m
//  MCZhongYi
//
//  Created by MC on 2016/12/9.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "LookStudentViewController.h"
#import "ZJScrollPageView.h"
#import "LookStudent1ViewController.h"
#import "LookStudent2ViewController.h"
#import "LookStudent3ViewController.h"
#import "LookStudent4ViewController.h"

@interface LookStudentViewController ()<ZJScrollPageViewDelegate>
{
    
    
}
@property(strong, nonatomic)NSArray<NSString *> *titles;
@property(strong, nonatomic)NSArray<UIViewController *> *childVcs;
@end

@implementation LookStudentViewController
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    UINavigationBar *navigationBar = self.navigationController.navigationBar;
    // white.png图片自己下载个纯白色的色块，或者自己ps做一个
    [navigationBar setBackgroundImage:[UIImage imageNamed:@"nav_bg"]
                       forBarPosition:UIBarPositionAny
                           barMetrics:UIBarMetricsDefault];
    [navigationBar setShadowImage:[UIImage new]];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"查看学生";
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self prepareUI];

    // Do any additional setup after loading the view.
}
-(void)prepareUI{
    ZJSegmentStyle *style = [[ZJSegmentStyle alloc] init];
    //显示遮盖
    style.showCover = YES;
    style.coverBackgroundColor = [UIColor whiteColor];
    style.normalTitleColor = RGBCOLOR(196, 195, 196);
    style.selectedTitleColor = RGBCOLOR(92, 45, 5);
    style.titleFont = [UIFont systemFontOfSize:15];
    style.titleMargin = 100*MCWidthScale;
    // 根据title总宽度自动调整位置 -- 达到个数少的时候会'平分'的效果, 个数多的时候就是可以滚动的效果 只有当scrollTitle == YES的时候才有效
    //    style.autoAdjustTitlesWidth = YES;
    // 不滚动标题
    style.scrollTitle = NO;
    // 同步调整遮盖或者滚动条的宽度 -- 只有当scrollTitle == NO的时候有效
    style.adjustCoverOrLineWidth = YES;
    // 颜色渐变
    style.gradualChangeTitleColor = YES;
    style.segmentHeight = 44;
    //    style.showExtraButton = YES;
    self.titles = @[@"全部",
                    @"续班",
                    @"请假",
                    @"旷课"
                    ];
    // 初始化
    ZJScrollPageView *scrollPageView = [[ZJScrollPageView alloc] initWithFrame:CGRectMake(0, 64.0, self.view.bounds.size.width, self.view.bounds.size.height - 64.0) segmentStyle:style titles:self.titles parentViewController:self delegate:self];
    scrollPageView.segmentView.backgroundColor = AppMCNACOLOR;
    NSLog(@"%@", self.view);
    
    //    scrollPageView.extraBtnOnClick = ^(UIButton *btn){
    //        NSLog(@"ffff");
    //    };
    [self.view addSubview:scrollPageView];
    
    
}
- (BOOL)shouldAutomaticallyForwardAppearanceMethods {
    return NO;
}
- (NSInteger)numberOfChildViewControllers {
    return self.titles.count;
}


- (void)setUpTitleView:(ZJTitleView *)titleView forIndex:(NSInteger)index {
    //    titleView.label.backgroundColor = [UIColor redColor];
    titleView.label.layer.cornerRadius = 15;
    titleView.label.layer.masksToBounds = YES;
}

- (UIViewController<ZJScrollPageViewChildVcDelegate> *)childViewController:(UIViewController<ZJScrollPageViewChildVcDelegate> *)reuseViewController forIndex:(NSInteger)index {
    
    
    
    UIViewController<ZJScrollPageViewChildVcDelegate> *childVc = reuseViewController;
    
    
    
    if (!childVc) {
        if (index == 0) {
            childVc = [[LookStudent1ViewController alloc]init];
        }
        else if (index == 1)
        {
            childVc = [[LookStudent2ViewController alloc]init];
            
        }
        else if (index == 2)
        {
            childVc = [[LookStudent3ViewController alloc]init];
            
        }
        else if (index == 3)
        {
            childVc = [[LookStudent4ViewController alloc]init];
            
        }

        
    }
    
    return childVc;
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
