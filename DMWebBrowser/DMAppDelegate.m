//
//  DMAppDelegate.m
//  DMWebBrowser
//
//  Created by Diego Alves Moreira on 2/4/13.
//  Copyright (c) 2013 Diego Alves Moreira. All rights reserved.
//

#import "DMAppDelegate.h"
#import "ViewController.h"
#import "DMWebBrowserViewController.h"

@implementation DMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //self.viewController = [[ViewController alloc] init];
    //self.window.rootViewController = self.viewController;
    //[self.window makeKeyAndVisible];
    
    self.webBrowser = [[DMWebBrowserViewController alloc]
                                              initWithURL:[NSURL URLWithString:@"https://sypt.psax.com.cn/m/#login"]
                                              startLoadingWithBlock:^{
                                                  NSLog(@"start loading web browser page");
                                              } andEndLoadingWithBlock:^{
                                                  NSLog(@"end loading web browser page");
                                              }];
    //[self.webBrowser setNavBarColor:[UIColor orangeColor]];
    self.window.rootViewController = self.webBrowser;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
