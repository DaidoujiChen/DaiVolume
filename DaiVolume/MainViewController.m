//
//  MainViewController.m
//  DaiVolume
//
//  Created by 啟倫 陳 on 2014/4/10.
//  Copyright (c) 2014年 ChilunChen. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@end

@implementation MainViewController

-(void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - ibaction

- (IBAction)increaseValueAction:(id)sender {
    [DaiVolume setVolume:[DaiVolume volume] + 0.0625f];
    self.currentValueLabel.text = [NSString stringWithFormat:@"%f", [DaiVolume volume]];
}

- (IBAction)decreaseValueAction:(id)sender {
    [DaiVolume setVolume:[DaiVolume volume] - 0.0625f];
    self.currentValueLabel.text = [NSString stringWithFormat:@"%f", [DaiVolume volume]];
}

#pragma mark - life cycle

-(void) viewDidLoad {
    
    [super viewDidLoad];
    self.currentValueLabel.text = [NSString stringWithFormat:@"%f", [DaiVolume volume]];
    
}

@end
