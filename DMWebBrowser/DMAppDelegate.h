//
//  DMAppDelegate.h
//  DMWebBrowser
//
//  Created by Diego Alves Moreira on 2/4/13.
//  Copyright (c) 2013 Diego Alves Moreira. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;
@class DMWebBrowserViewController;

@interface DMAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
//@property (strong, nonatomic) ViewController *viewController;
@property (strong, nonatomic) DMWebBrowserViewController *webBrowser;

@end
