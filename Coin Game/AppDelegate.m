//
//  AppDelegate.m
//  Coin Game
//
//  Created by Peter Schultz on 4/24/15.
//  Copyright (c) 2015 Peter Schultz. All rights reserved.
//

#import "AppDelegate.h"
#import "PennyVC.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    /*
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"PennyVC.Xib" bundle:nil];
    PennyVC *pennyVC = [storyBoard instantiateInitialViewController];
    [self.window setRootViewController:pennyVC];
    */
    
    PennyVC *pennyVC = [[PennyVC alloc] init];
    [self.window setRootViewController:pennyVC];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {

    
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
