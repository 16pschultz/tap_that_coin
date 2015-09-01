//
//  NickelVC.m
//  Coin Game
//
//  Created by Peter Schultz on 4/25/15.
//  Copyright (c) 2015 Peter Schultz. All rights reserved.
//

#import "NickelVC.h"
#import "DimeVC.h"
#import "FailurePage.h"


@interface NickelVC ()

@end

@implementation NickelVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(countdown) userInfo:nil repeats:YES];
    
    self.scoreLabel.text = [NSString stringWithFormat:@"Score:          %i", self.scoreInt];
    
    self.labelGoal.text = [NSString stringWithFormat:@"Bag: $%.2lf", self.userMoney];
    
    NSURL *buttonUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Coin Sound" ofType:@"mp3"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)buttonUrl, &SoundID);
}

- (IBAction)nickelButton {
    
    self.userMoney = self.userMoney + 0.05;
    
    if (self.userMoney > 1.50) {
        
        DimeVC *dimeVC = [[DimeVC alloc] init];
        dimeVC.scoreInt = self.countdownTimer + self.scoreInt;
        
        dimeVC.highScoreInt = self.highScoreInt;

        dimeVC.countdownTimer = self.countdownTimer + 5;
        dimeVC.userMoney = self.userMoney;
        
        //Launch Dime Page
        [self presentViewController:dimeVC animated:YES completion:nil];
    }
    
    AudioServicesPlaySystemSound(SoundID);
    
    self.labelGoal.text = [NSString stringWithFormat:@"Bag: $%.2lf", self.userMoney];
}


-(void)countdown {
    
    self.countdownTimer -= 1;
    labelTimer.text = [NSString stringWithFormat:@"%i", self.countdownTimer];
    
    
    if (self.countdownTimer < 0) {
        //If user pressed on iAd during app, the timer keeps running and goes into negatives.
        //If the timer reaches 0 or is less than 0 while the user is in iAd, the app opens up the Failure Page with no animation
        
        FailurePage *failurePage = [[FailurePage alloc] init];
        
        failurePage.scoreInt = self.scoreInt;
        failurePage.highScoreInt = self.highScoreInt;
        failurePage.userCurrentBag = self.userMoney;
        failurePage.stringImage = @"nickel_front.png";
        
        [self presentViewController:failurePage animated:NO completion:nil];
    }
    
    
    if (self.countdownTimer == 0) {
        
        FailurePage *failurePage = [[FailurePage alloc] init];
        
        failurePage.scoreInt = self.scoreInt;
        
        
        if (self.scoreInt > self.highScoreInt && self.scoreInt > [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScore"]) {
            
            self.highScoreInt = self.scoreInt;
            [[NSUserDefaults standardUserDefaults] setInteger:self.highScoreInt forKey:@"HighScore"];
            [[NSUserDefaults standardUserDefaults] synchronize];
        }
        
        if (self.userMoney > [[NSUserDefaults standardUserDefaults] doubleForKey:@"UserBestBag"]) {
            
            [[NSUserDefaults standardUserDefaults] setDouble:self.userMoney forKey:@"UserBestBag"];
            [[NSUserDefaults standardUserDefaults] synchronize];
        }
        
        failurePage.highScoreInt = self.highScoreInt;
        
        failurePage.userCurrentBag = self.userMoney;
        
        failurePage.stringImage = @"nickel_front.png";

        [self presentViewController:failurePage animated:YES completion:nil];
    }
}


-(void)bannerViewDidLoadAd:(ADBannerView *)banner {
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    [banner setAlpha:1];
    [UIView commitAnimations];
}


-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    [banner setAlpha:0];
    [UIView commitAnimations];
}


@end
