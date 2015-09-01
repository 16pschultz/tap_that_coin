//
//  TwoDollar.m
//  Coin Game
//
//  Created by Peter Schultz on 5/19/15.
//  Copyright (c) 2015 Peter Schultz. All rights reserved.
//

#import "TwoDollar.h"
#import "FailurePage.h"
#import "VictoryPage.h"
#import "ThreeDollar.h"

@interface TwoDollar ()

@end

@implementation TwoDollar

- (void)viewDidLoad {
    [super viewDidLoad];

    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(countdown) userInfo:nil repeats:YES];
    
    self.scoreLabel.text = [NSString stringWithFormat:@"Score:          %i", self.scoreInt];
    
    self.labelGoal.text = [NSString stringWithFormat:@"Bag: $%.2lf", self.userMoney];
    
    NSURL *buttonUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Coin Sound" ofType:@"mp3"]];
    
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)buttonUrl, &SoundID);
}


-(void)countdown {
    
    self.countdownTimer -= 1;
    labelTimer.text = [NSString stringWithFormat:@"%i", self.countdownTimer];

    if (self.countdownTimer < 0) {
        //If user pressed on iAd during app, the timer keeps running and goes into negatives.
        //If the timer reaches 0 while the user is in iAd, the app opens up the Failure Page with no animation
        
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
        
        failurePage.userCurrentBag = self.userMoney;
        
        failurePage.highScoreInt = self.highScoreInt;
        
        failurePage.stringImage = @"2dollarCoinHead.png";
        
        //Launch Failure Page
        [self presentViewController:failurePage animated:YES completion:nil];
    }
}


- (IBAction)twoDollarButton {
    
    self.userMoney = self.userMoney + 2;
    
    if (self.userMoney > 228.00) {
        
        ThreeDollar *threeDollar = [[ThreeDollar alloc] init];
        
        threeDollar.countdownTimer = self.countdownTimer + 5;
        threeDollar.highScoreInt = self.highScoreInt;
        threeDollar.scoreInt = self.countdownTimer + self.scoreInt;
        threeDollar.userMoney = self.userMoney;
        threeDollar.scoreInt = self.scoreInt;
        threeDollar.highScoreInt = self.highScoreInt;
        
        //Launch Three Dollar Page
        [self presentViewController:threeDollar animated:YES completion:nil];
    }

    AudioServicesPlaySystemSound(SoundID);
    
    self.labelGoal.text = [NSString stringWithFormat:@"Bag: $%.2lf", self.userMoney];
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
