//
//  ViewController.h
//  DelegateDemo
//
//  Created by TheAppGuruz-iOS-103 on 19/05/14.
//  Copyright (c) 2014 TheAppGuruz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LastNameViewController.h"

@interface ViewController : UIViewController<LastNameViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *txtFirstName;
@property (weak, nonatomic) IBOutlet UITextField *txtFullName;

@end
