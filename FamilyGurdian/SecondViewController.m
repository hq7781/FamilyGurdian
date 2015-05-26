//
//  SecondViewController.m
//  FamilyGurdian
//
//  Created by HongQuan on 2015/05/21.
//  Copyright (c) 2015年 HONGQUAN. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController


-(void) locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
    //停止获取现在位置
    [locMgr stopUpdatingLocation];

    CLLocationCoordinate2D destPos;
    destPos.longitude = HOME_LON;
    destPos.latitude = HOME_LAT;
    
    //
    YMKRouteOverlay * routeOrverlay = [[YMKRouteOverlay alloc] initWithAppid:@"dj0zaiZpPVY5Wnd0VDg2RXVlcSZzPWNvbnN1bWVyc2VjcmV0Jng9NTI-"];
    //
    routeOrverlay.delegate = self;
    [routeOrverlay setRouteStartPos: newLocation.coordinate withGoalPos:destPos withTraffic:TRAFFIC_WALK];
    //
    [routeOrverlay search];

}

-(void)finishRouteSearch:(YMKRouteOverlay*)routeOverlay{

    //
    YMKNaviController * naviController = [[YMKNaviController alloc] initWithRouteOverlay:routeOverlay];
    //
    naviController.delegate = self;
    
    //
    YARKViewController * arViewController =[[YARKViewController alloc] init];
    [naviController setARKViewController:arViewController];
    [self.window addSubview:arViewController.view];
    
    [naviController start];
}

-(void)naviControllerOnGoal:(YMKNaviController*)naviController didUpdateUserLocation:(YMKUserLocation *)userLocation
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"到着" message:@"目的地に到着しました。"
                                                  delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
//    [alert release];
    
    //案内処理を終了
    [naviController stop];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //
    locMgr = [[CLLocationManager alloc] init];
    locMgr.delegate = self;
    [locMgr startUpdatingLocation];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
