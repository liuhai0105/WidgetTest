//
//  TodayViewController.m
//  myWidget
//
//  Created by 刘海 on 14/9/28.
//  Copyright (c) 2014年 Hai. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>

@interface TodayViewController () <NCWidgetProviding>

@end

@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"widget viewWillAppear");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    NCUpdateResult result = NCUpdateResultNoData;
//    if (!error) {
//        result = NCUpdateResultNewData;
//        更新数据
//        [self updateTableView];
//    } else {
//        NSLog(@"Download error: %@", error);
//        数据获取失败
//        result = NCUpdateResultFailed;
//    }
    completionHandler(result);
}

-(UIEdgeInsets)widgetMarginInsetsForProposedMarginInsets:(UIEdgeInsets)defaultMarginInsets
{
    return UIEdgeInsetsMake(0, 0, 100, 0);
}

@end
