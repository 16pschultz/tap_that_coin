//
//  PennyVC.h
//  Coin Game
//
//  Created by Peter Schultz on 4/25/15.
//  Copyright (c) 2015 Peter Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <iAd/iAd.h>


@interface PennyVC : UIViewController <ADBannerViewDelegate> {
    
    
    IBOutlet UILabel *labelTimer;
    
    NSTimer *timer;
    
    NSTimer *timer2;

    SystemSoundID SoundID;
        
    IBOutlet UIImageView *pointerTouch;

    IBOutlet UIImageView *arrowGoal;
    
    int example;
}

@property (strong, nonatomic) IBOutlet UIView *translucentView;

- (IBAction)pennyButton;


- (IBAction)translucentButton;


@property (nonatomic, assign) int scoreInt;

@property (nonatomic, assign) int highScoreInt;



@property (nonatomic, assign) double userMoney;

@property (nonatomic, assign) IBOutlet UILabel *labelGoal;


@property (nonatomic, assign) int countdownTimer;

@property (nonatomic, assign) int animationTimer;


@end
