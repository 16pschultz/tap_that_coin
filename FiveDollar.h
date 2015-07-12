//
//  FiveDollar.h
//  Coin Game
//
//  Created by Peter Schultz on 6/25/15.
//  Copyright (c) 2015 Peter Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <iAd/iAd.h>

@interface FiveDollar : UIViewController {
    
    NSTimer *timer;
    
    IBOutlet UILabel *labelTimer;
    
    SystemSoundID SoundID;
}


@property (nonatomic, assign) int scoreInt;

@property (nonatomic, assign) int highScoreInt;


@property (nonatomic, assign) int countdownTimer;

@property (nonatomic, assign) double userMoney;

@property (nonatomic, assign) IBOutlet UILabel *labelGoal;

@property (nonatomic, assign) IBOutlet UILabel *scoreLabel;


@property (nonatomic, assign) IBOutlet UIImageView* dollarSign1;

@property (nonatomic, assign) IBOutlet UIImageView* dollarSign2;

@property (nonatomic, assign) IBOutlet UIImageView* dollarSign3;

@property (nonatomic, assign) IBOutlet UIImageView* dollarSign4;

@property (nonatomic, assign) IBOutlet UIImageView* dollarSign5;

@property (nonatomic, assign) IBOutlet UIImageView* dollarSign6;

@property (nonatomic, assign) IBOutlet UIImageView* dollarSign7;

@property (nonatomic, assign) IBOutlet UIImageView* dollarSign8;

@property (nonatomic, assign) IBOutlet UIImageView* dollarSign9;

@property (nonatomic, assign) IBOutlet UIImageView* dollarSign10;

@property (nonatomic, assign) IBOutlet UIImageView* dollarSign11;

@property (nonatomic, assign) IBOutlet UIImageView* dollarSign12;

@property (nonatomic, assign) IBOutlet UIImageView* dollarSign13;

@property (nonatomic, assign) IBOutlet UIImageView* dollarSign14;

@property (nonatomic, assign) IBOutlet UIImageView* dollarSign15;


- (IBAction)fiveDollarCoin;


@end
