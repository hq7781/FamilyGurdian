//
//  SecondViewController.h
//  FamilyGurdian
//
//  Created by HongQuan on 2015/05/21.
//  Copyright (c) 2015年 HONGQUAN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "YMapKit/YMapKit.h"

#define HOME_LAT 35.171177
#define HOME_LON 136.883694

@interface SecondViewController : UIViewController <CLLocationManagerDelegate,YMKRouteOverlayDelegate, YMKNaviControllerDelegate>{

    CLLocationManager *locMgr;
}
@property (strong, nonatomic) UIWindow *window;

-(void) locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation;

-(void)finishRouteSearch:(YMKRouteOverlay*)routeOverlay;

-(void)naviControllerOnGoal:(YMKNaviController*)naviController didUpdateUserLocation:(YMKUserLocation *)userLocation;

@end

