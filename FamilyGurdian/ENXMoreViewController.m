//
//  ENXMoreViewController.m
//  FamilyGurdian
//
//  Created by HongQuan on 2015/05/21.
//  Copyright (c) 2015年 HONGQUAN. All rights reserved.
//

#import "ENXMoreViewController.h"

@interface ENXMoreViewController ()

@end

@implementation ENXMoreViewController


#pragma mark openButtonDidTouch methods
- (IBAction)openButtonDidTouch:(id)sender
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"QuickContacts_Main" bundle:[NSBundle mainBundle]];
    UIViewController *initialViewController = [storyboard instantiateInitialViewController];
    [self presentViewController:initialViewController animated:YES completion:nil];
}

#pragma mark - Lift cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self QuickContacts_viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
