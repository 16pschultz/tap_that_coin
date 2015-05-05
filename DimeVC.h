//
//  DimeVC.h
//  Coin Game
//
//  Created by Peter Schultz on 4/25/15.
//  Copyright (c) 2015 Peter Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface DimeVC : UIViewController {
    
    IBOutlet UILabel *labelTimer;
    
    NSTimer *timer;
    
    SystemSoundID SoundID;

}


@property (nonatomic, assign) double userMoney;

@property (nonatomic, assign) int countdownTimer;



@property (nonatomic, assign) int scoreInt;

@property (nonatomic, assign) int highScoreInt;




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


- (IBAction)dimeButton;



@end
