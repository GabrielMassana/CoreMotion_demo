//
//  ViewController.h
//  CMMotionManager
//
//  Created by Gabriel Massana on 10/31/13.
//  Copyright (c) 2013 Gabriel Massana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface ViewController : UIViewController

@property (strong,nonatomic) CMMotionManager *manager;
//http://eencae.wordpress.com/ios-tutorials/coremotion/cmmotionmanager/
@property (strong, nonatomic) IBOutlet UILabel *xLabel;
@property (strong, nonatomic) IBOutlet UILabel *yLabel;
@property (strong, nonatomic) IBOutlet UILabel *zLabel;

@end
