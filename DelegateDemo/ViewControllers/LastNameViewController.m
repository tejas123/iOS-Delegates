//
//  LastNameViewController.m
//  DelegateDemo
//
//  Created by TheAppGuruz-iOS-103 on 19/05/14.
//  Copyright (c) 2014 TheAppGuruz. All rights reserved.
//

#import "LastNameViewController.h"

@interface LastNameViewController ()

@end

@implementation LastNameViewController
@synthesize delegate;
@synthesize txtLastName;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [txtLastName resignFirstResponder];
    [self.delegate setLastName:txtLastName.text];
}

- (IBAction)btnDoneTapped:(id)sender
{
    [txtLastName resignFirstResponder];
    [self.delegate setLastName:txtLastName.text];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
