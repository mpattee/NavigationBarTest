//
//  AVTAppDelegate.h
//  NavigationBarTest
//
//  Created by Mike Pattee on 10/15/12.
//  Copyright (c) 2012 Avatron Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AVTViewController;

@interface AVTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) AVTViewController *viewController;

@end
