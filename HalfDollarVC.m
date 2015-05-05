//
//  HalfDollarVC.m
//  Coin Game
//
//  Created by Peter Schultz on 4/28/15.
//  Copyright (c) 2015 Peter Schultz. All rights reserved.
//

#import "HalfDollarVC.h"
#import "FailurePage.h"
#import "QuarterVC.h"
#import "OneDollar.h"

@interface HalfDollarVC ()

@end

@implementation HalfDollarVC

- (void)viewDidLoad {
    [super viewDidLoad];

    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(countdown) userInfo:nil repeats:YES];
    
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", self.scoreInt];
    
    self.labelGoal.text = [NSString stringWithFormat:@"%.2lf", self.userMoney];

    
    NSURL *buttonUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Coin Sound" ofType:@"mp3"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)buttonUrl, &SoundID);
    
    
    
    if (self.scoreInt > self.highScoreInt) {
        
        self.highScoreInt = self.scoreInt;
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

-(void)countdown {
    
    self.countdownTimer -= 1;
    labelTimer.text = [NSString stringWithFormat:@"%i", self.countdownTimer];
    
    if (self.countdownTimer == 0) {
        FailurePage *failurePage = [[FailurePage alloc] init];
        
        
        failurePage.scoreInt = self.scoreInt;
        failurePage.highScoreInt = self.highScoreInt;
        

//        failurePage.halfDollarButton.hidden = NO;
        
        [self presentViewController:failurePage animated:YES completion:NULL];
    }
    
    
}


- (IBAction)halfdollarButton {
    
    self.userMoney = self.userMoney + 0.50;
    
    if (self.userMoney > 50.00) {
        
        OneDollar *onedollar = [[OneDollar alloc] init];
        onedollar.countdownTimer = self.countdownTimer + 5;
        onedollar.scoreInt = self.countdownTimer + self.scoreInt;
        onedollar.userMoney = self.userMoney;
        
        //Launch One Dollar
        [self presentViewController:onedollar animated:YES completion:NULL];
        
    }
    
    AudioServicesPlaySystemSound(SoundID);
    
    self.labelGoal.text = [NSString stringWithFormat:@"%.2lf", self.userMoney];
    
    
    
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
