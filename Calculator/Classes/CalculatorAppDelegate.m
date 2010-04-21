//
//  CalculatorAppDelegate.m
//  Calculator
//
//  Created by Lauren Siegert on 20/4/10.
//  Copyright Northeastern University 2010. All rights reserved.
//

#import "CalculatorAppDelegate.h"
#import "CalculatorViewController.h"

@implementation CalculatorAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
