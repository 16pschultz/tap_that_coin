//
//  OneDollar.h
//  Coin Game
//
//  Created by Peter Schultz on 4/29/15.
//  Copyright (c) 2015 Peter Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <iAd/iAd.h>


@interface OneDollar : UIViewController <ADBannerViewDelegate> {
    
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


- (IBAction)onedollarButton;

@end
