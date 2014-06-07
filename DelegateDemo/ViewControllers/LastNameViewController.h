//
//  LastNameViewController.h
//  DelegateDemo
//
//  Created by TheAppGuruz-iOS-103 on 19/05/14.
//  Copyright (c) 2014 TheAppGuruz. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LastNameViewControllerDelegate <NSObject>

-(void)setLastName:(NSString *)lastName;

@end

@interface LastNameViewController : UIViewController

@property (nonatomic,retain) id<LastNameViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *txtLastName;
- (IBAction)btnDoneTapped:(id)sender;

@end
