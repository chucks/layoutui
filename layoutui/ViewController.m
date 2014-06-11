//
//  ViewController.m
//  layoutui
//
//  Created by Chuck Shnider on 2014-06-10.
//  Copyright (c) 2014 Chuck Shnider. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property BOOL longUserIDLabel;
@property BOOL longPasswordLabel;

@end

@implementation ViewController

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (IBAction)leftButtonClicked:(id)sender {
    [UIView animateWithDuration:0.8 delay:0 usingSpringWithDamping:0.4 initialSpringVelocity:0 options:0 animations:^{
        self.userIDLabel.text = self.longUserIDLabel ? @"UserID" : @"This is a longer label";
        self.longUserIDLabel = !self.longUserIDLabel;
        [self.view layoutIfNeeded];
    } completion:nil];
}

- (IBAction)rightButtonClicked:(id)sender {
    [UIView animateWithDuration:0.8 delay:0 usingSpringWithDamping:0.4 initialSpringVelocity:0 options:0 animations:^{
        self.passwordLabel.text = self.longPasswordLabel ? @"Password" : @"and if this is localization, you're in trouble";
        self.longPasswordLabel = !self.longPasswordLabel;
        [self.view layoutIfNeeded];
    } completion:nil];
}

static const CGFloat kTopSpacePortrait = 380;
static const CGFloat kTopSpaceLandscape = 300;
static const CGFloat kBottomSpacePortrait = 467;
static const CGFloat kBottomSpaceLandscape = 380;

- (void)viewDidLayoutSubviews {
    if (self.view.bounds.size.width > self.view.bounds.size.height) {
        self.topLayoutBandConstraint.constant = kTopSpaceLandscape;
        self.bottomLayoutBandConstraint.constant = kBottomSpaceLandscape;
    } else {
        self.topLayoutBandConstraint.constant = kTopSpacePortrait;
        self.bottomLayoutBandConstraint.constant = kBottomSpacePortrait;
    }

    [self.view layoutIfNeeded];
}


@end
