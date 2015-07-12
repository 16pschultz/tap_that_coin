//
//  VictoryPage.m
//  Coin Game
//
//  Created by Peter Schultz on 4/29/15.
//  Copyright (c) 2015 Peter Schultz. All rights reserved.
//

#import "VictoryPage.h"
#import "OneDollar.h"
#import "PennyVC.h"

@interface VictoryPage ()

@end

@implementation VictoryPage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSUserDefaults standardUserDefaults] setInteger:self.highScoreInt forKey:@"HighScore"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    

    [[NSUserDefaults standardUserDefaults] setDouble:self.userMoney forKey:@"UserBestBag"];
    [[NSUserDefaults standardUserDefaults] synchronize];

}

- (void) viewWillAppear:(BOOL)animated {
    
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", self.scoreInt];

    
    self.lastHighScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScore"];
    self.highScoreLabel.text = [NSString stringWithFormat:@"%li", (long)self.lastHighScore];
    
    
    self.userMoney = [[NSUserDefaults standardUserDefaults] doubleForKey:@"UserBestBag"];
    self.bestBagLabel.text = [NSString stringWithFormat:@"$%.2lf", self.userMoney];
    
    
    self.currentBagLabel.text = [NSString stringWithFormat:@"$%.2lf", self.userCurrentBag];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)playAgainButton {
    
    PennyVC *pennyVC = [[PennyVC alloc] init];
    [self presentViewController:pennyVC animated:YES completion:NULL];
    
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
