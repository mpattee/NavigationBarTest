//
//  AVTViewController.m
//  NavigationBarTest
//
//  Created by Mike Pattee on 10/15/12.
//  Copyright (c) 2012 Avatron Inc. All rights reserved.
//

#import "AVTViewController.h"

@implementation AVTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;
    self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(actionEdit:)] autorelease];
}

- (void)actionEdit:(id)sender
{
    NSLog(@"Edit tapped");    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionToggleBars:(id)sender
{
    BOOL hidden = self.navigationController.navigationBarHidden;
    NSString* title = ( hidden ) ? @"Hide Navigation Bar" : @"Show Navigation Bar";
    [self.button setTitle: title forState: UIControlStateNormal];
        
    [[UIApplication sharedApplication] setStatusBarHidden:!hidden withAnimation:UIStatusBarAnimationFade];
    [self.navigationController setNavigationBarHidden:!hidden animated:YES];
}

- (void)dealloc {
    [_button release];
    [super dealloc];
}

- (void)viewDidUnload {
    [self setButton:nil];
    [super viewDidUnload];
}
@end
