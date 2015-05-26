//
//  ENXCurrentViewController.m
//  FamilyGurdian
//
//  Created by HongQuan on 2015/05/22.
//  Copyright (c) 2015年 HONGQUAN. All rights reserved.
//

#import "ENXCurrentViewController.h"
#import "CurrentMapViewController.h"

@interface ENXCurrentViewController ()
// HONG
@property (nonatomic, strong) CurrentMapViewController *mapViewController;

@end

@implementation ENXCurrentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Add by HONG
    self.mapViewController = [[UIStoryboard storyboardWithName:@"CurrentAddress_Main" bundle:nil] instantiateViewControllerWithIdentifier:@"CurrentAddrMapViewID"];
    
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
