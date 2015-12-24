//
//  UnfilteredViewController.m
//  SBObjectiveCWrapper
//
//  Created by Reese McLean on 12/23/15.
//  Copyright © 2015 Reese McLean. All rights reserved.
//

#import "UnfilteredViewController.h"

@import SBObjectiveCWrapper;

@interface UnfilteredViewController ()

@end

@implementation UnfilteredViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SBLogVerbose(@"View Did Load");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    SBLogInfo(@"Did Receive Memory Warning");
}

- (IBAction)logVerbose:(id)sender {
    SBLogVerbose(@"This is a verbose message.");
}

- (IBAction)logDebug:(id)sender {
    SBLogDebug(@"This is a debug message.");
}

- (IBAction)logInfo:(id)sender {
    SBLogInfo(@"This is an info message.");
}

- (IBAction)logWarning:(id)sender {
    SBLogWarning(@"This is a warning message.");
}

- (IBAction)logError:(id)sender {
    SBLogError(@"This is an error message.");
}

@end
