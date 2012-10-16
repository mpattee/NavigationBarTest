//
//  AVTViewController.h
//  NavigationBarTest
//
//  Created by Mike Pattee on 10/15/12.
//  Copyright (c) 2012 Avatron Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AVTViewController : UIViewController
@property (retain, nonatomic) IBOutlet UIButton *button;

- (IBAction)actionToggleBars:(id)sender;

@end
