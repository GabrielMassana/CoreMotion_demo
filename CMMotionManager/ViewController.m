//
//  ViewController.m
//  CMMotionManager
//
//  Created by Gabriel Massana on 10/31/13.
//  Copyright (c) 2013 Gabriel Massana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    //http://eencae.wordpress.com/ios-tutorials/coremotion/cmmotionmanager/
    
    self.manager = [[CMMotionManager alloc] init];
    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(getValues:) userInfo:nil repeats:YES];
    self.manager.accelerometerUpdateInterval = 0.05;
    [self.manager startAccelerometerUpdates];
}

-(void) getValues:(NSTimer *) timer
{
    self.xLabel.text = [NSString stringWithFormat:@"%.2f",self.manager.accelerometerData.acceleration.x];
    self.yLabel.text = [NSString stringWithFormat:@"%.2f",self.manager.accelerometerData.acceleration.y];
    self.zLabel.text = [NSString stringWithFormat:@"%.2f",self.manager.accelerometerData.acceleration.z];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
