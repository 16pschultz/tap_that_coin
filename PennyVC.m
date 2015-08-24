//
//  PennyVC.m
//  Coin Game
//
//  Created by Peter Schultz on 4/25/15.
//  Copyright (c) 2015 Peter Schultz. All rights reserved.
//

#import "PennyVC.h"
#import "NickelVC.h"
#import "FailurePage.h"


@interface PennyVC ()

@end

@implementation PennyVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scoreInt = 0;
    
    self.userMoney = 0;
    
    self.countdownTimer = 5;
    
    self.animationTimer = 3;
    
    
    NSURL *buttonUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Coin Sound" ofType:@"mp3"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)buttonUrl, &SoundID);
 
//    while (example == 0) {
//        [self randomizeMoneySignLocations];
//    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewDidAppear:(BOOL)animated {
    
    //Animation
    
    arrowGoal.animationImages = [NSArray arrayWithObjects:
                                 
                                 [UIImage imageNamed:@"arrow1.5.png"],
                                 [UIImage imageNamed:@"arrow2.5.png"], nil];
    
    [arrowGoal setAnimationRepeatCount:0];
    arrowGoal.animationDuration = 1;
    [arrowGoal startAnimating];
    
    timer2 = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(countdownForAnimation) userInfo:nil repeats:YES];

}


- (IBAction)pennyButton {
    
    [timer2 invalidate];
    
    [pointerTouch stopAnimating];
    [arrowGoal stopAnimating];

    
    self.userMoney = self.userMoney + 0.01;
    
    if (self.userMoney == 0.01) {
        
        timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(countdown) userInfo:nil repeats:YES];
    }
        

    if (self.userMoney > 0.09) {
        
        NickelVC *nickelVC = [[NickelVC alloc] init];
        
        nickelVC.scoreInt = self.countdownTimer;
        
        nickelVC.highScoreInt = self.highScoreInt;
        
        nickelVC.countdownTimer = self.countdownTimer + 5;
        nickelVC.userMoney = self.userMoney;
        
        //Launch Nickel Page
        [self presentViewController:nickelVC animated:YES completion:nil];
        
    }
    
    AudioServicesPlaySystemSound(SoundID);

    self.labelGoal.text = [NSString stringWithFormat:@"Bag: $%.2lf", self.userMoney];
    
    [self randomizeMoneySignLocations];
}

- (IBAction)translucentButton {
    
    [self.translucentView setHidden:YES];
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

        
        failurePage.stringImage = @"penny_front.png";
        

        failurePage.highScoreInt = self.highScoreInt;
        
//        failurePage.pennyButton.hidden = NO;

        [self presentViewController:failurePage animated:YES completion:nil];

    } else {
        nil;
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


-(void)countdownForAnimation {
    
    self.animationTimer -= 1;
    
    if (self.animationTimer == 0) {
        
        // Animate Pointer Finger
        
        pointerTouch.animationImages = [NSArray arrayWithObjects:
                                        
                                        [UIImage imageNamed:@"PF1.png"],
                                        [UIImage imageNamed:@"PF2.png"], nil];
        
        [pointerTouch setAnimationRepeatCount:0];
        pointerTouch.animationDuration = 0.30;
        [pointerTouch startAnimating];
        
        
        [timer2 invalidate];
    }
}


- (void) randomizeMoneySignLocations {
    
    // Random Money Sign Generator
    
    int RandomImageChange = arc4random() % 15;
    switch (RandomImageChange) {
        case 0:
        {
            self.dollarSign1.hidden = NO;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1.0];
            [self.dollarSign1 setAlpha:0];
            [UIView commitAnimations];
        }
            break;
            
        case 1:
        {
            self.dollarSign2.hidden = NO;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1.0];
            [self.dollarSign2 setAlpha:0];
            [UIView commitAnimations];
        }
            break;
            
        case 2:
        {
            self.dollarSign3.hidden = NO;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1.0];
            [self.dollarSign3 setAlpha:0];
            [UIView commitAnimations];
        }
            break;
            
        case 3:
        {
            self.dollarSign4.hidden = NO;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1.0];
            [self.dollarSign4 setAlpha:0];
            [UIView commitAnimations];
        }
            break;
            
        case 4:
        {
            self.dollarSign5.hidden = NO;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1.0];
            [self.dollarSign5 setAlpha:0];
            [UIView commitAnimations];
        }
            break;
            
        case 5:
        {
            self.dollarSign6.hidden = NO;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1.0];
            [self.dollarSign6 setAlpha:0];
            [UIView commitAnimations];
        }
            break;
            
        case 6:
        {
            self.dollarSign7.hidden = NO;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1.0];
            [self.dollarSign7 setAlpha:0];
            [UIView commitAnimations];
        }
            break;
            
        case 7:
        {
            self.dollarSign8.hidden = NO;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1.0];
            [self.dollarSign8 setAlpha:0];
            [UIView commitAnimations];
        }
            break;
            
        case 8:
        {
            self.dollarSign9.hidden = NO;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1.0];
            [self.dollarSign9 setAlpha:0];
            [UIView commitAnimations];
        }
            break;
            
        case 9:
        {
            self.dollarSign10.hidden = NO;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1.0];
            [self.dollarSign10 setAlpha:0];
            [UIView commitAnimations];
        }
            break;
            
        case 10:
        {
            self.dollarSign11.hidden = NO;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1.0];
            [self.dollarSign11 setAlpha:0];
            [UIView commitAnimations];
        }
            break;
            
        case 11:
        {
            self.dollarSign12.hidden = NO;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1.0];
            [self.dollarSign12 setAlpha:0];
            [UIView commitAnimations];
        }
            break;
            
        case 12:
        {
            self.dollarSign13.hidden = NO;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1.0];
            [self.dollarSign13 setAlpha:0];
            [UIView commitAnimations];
        }
            break;
            
        case 13:
        {
            self.dollarSign14.hidden = NO;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1.0];
            [self.dollarSign14 setAlpha:0];
            [UIView commitAnimations];
        }
            break;
            
        case 14:
        {
            self.dollarSign15.hidden = NO;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1.0];
            [self.dollarSign15 setAlpha:0];
            [UIView commitAnimations];
        }
            break;
            
        default:
            break;
    }

}



@end
