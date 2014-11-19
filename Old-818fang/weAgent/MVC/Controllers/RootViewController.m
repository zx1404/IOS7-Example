//
//  RootViewController.m
//  weChat
//
//  Created by apple on 14-8-21.
//  Copyright (c) 2014年 marenqing. All rights reserved.
//

#import "RootViewController.h"
#import "CustomerHomeViewController.h"
#import "AchievementHomeViewController.h"
#import "MineHomeViewController.h"
#import "RadarHomeViewController.h"
#import "GlobalNavigationViewController.h"


@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    RadarHomeViewController *radarHomeVC = [[RadarHomeViewController alloc] init];
    GlobalNavigationViewController *radarHomeNVC = [[GlobalNavigationViewController alloc] initWithRootViewController:radarHomeVC];
    radarHomeNVC.title = @"雷达";
    radarHomeNVC.tabBarItem.image = [UIImage imageNamed:@"RadarActiveTabItem.png"];

    CustomerHomeViewController *customerHomeVC = [[CustomerHomeViewController alloc] init];
    GlobalNavigationViewController *customerHomeNVC = [[GlobalNavigationViewController alloc] initWithRootViewController:customerHomeVC];
    customerHomeNVC.title = @"客户";
    customerHomeNVC.tabBarItem.image = [UIImage imageNamed:@"CustomerActiveTabItem.png"];
    
    AchievementHomeViewController *achieventHomeVC = [[AchievementHomeViewController alloc] init];
    GlobalNavigationViewController *achieventHomeNVC = [[GlobalNavigationViewController alloc] initWithRootViewController:achieventHomeVC];
    achieventHomeNVC.title = @"业绩";
    achieventHomeNVC.tabBarItem.image = [UIImage imageNamed:@"AchievementActiveTabItem.png"];//添加图片
   
    
    MineHomeViewController *mineHomeVC = [[MineHomeViewController alloc] init];
    GlobalNavigationViewController *mineHomeNVC = [[GlobalNavigationViewController alloc] initWithRootViewController:mineHomeVC];
    mineHomeNVC.title = @"我";
    mineHomeNVC.tabBarItem.image = [UIImage imageNamed:@"MineActiveTabItem.png"];//添加图片
    [[UITabBar appearance] setTintColor:[UIColor baseColor]];
    
    NSArray *controllers = [NSArray arrayWithObjects:radarHomeNVC,customerHomeNVC,achieventHomeNVC,mineHomeNVC, nil];
    
    
    [self setViewControllers:controllers];
 
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end