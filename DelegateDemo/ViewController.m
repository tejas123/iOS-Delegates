//
//  ViewController.m
//  DelegateDemo
//
//  Created by TheAppGuruz-iOS-103 on 19/05/14.
//  Copyright (c) 2014 TheAppGuruz. All rights reserved.
//

#import "ViewController.h"
#import "LastNameViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize txtFirstName,txtFullName;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [txtFirstName resignFirstResponder];
}

-(void)setLastName:(NSString *)lastName
{
    NSString *fullName = [NSString stringWithFormat:@"%@  %@",txtFirstName.text,lastName];
    txtFullName.text = fullName;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    LastNameViewController *lastNameViewController = [segue destinationViewController];
    lastNameViewController.delegate = self;
}

@end
