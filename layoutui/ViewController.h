//
//  ViewController.h
//  layoutui
//
//  Created by Chuck Shnider on 2014-06-10.
//  Copyright (c) 2014 Chuck Shnider. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *topLayoutBandConstraint;

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *bottomLayoutBandConstraint;
@property (strong, nonatomic) IBOutlet UILabel *userIDLabel;
@property (strong, nonatomic) IBOutlet UILabel *passwordLabel;

@end
