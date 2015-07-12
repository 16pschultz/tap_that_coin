//
//  FailurePage.h
//  Coin Game
//
//  Created by Peter Schultz on 4/26/15.
//  Copyright (c) 2015 Peter Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface FailurePage : UIViewController {
    
    
}


- (IBAction)startoverButton;


@property (assign, nonatomic) NSInteger lastHighScore;



//Together, both get best bag score.

@property (nonatomic, assign) double userMoney;

@property (nonatomic, assign) double userCurrentBag;


@property (strong, nonatomic) IBOutlet UILabel *currentBagLabel;

@property (strong, nonatomic) IBOutlet UILabel *bestBagLabel;


@property (strong, nonatomic) NSString *stringImage;

@property (strong, nonatomic) IBOutlet UIImageView *imageFailure1;


@property (nonatomic, assign) IBOutlet UILabel *scoreLabel;

@property (nonatomic, assign) int scoreInt;

@property (nonatomic, assign) IBOutlet UILabel *highScoreLabel;

@property (nonatomic, assign) int highScoreInt;

@property (nonatomic, assign) int savedHighScoreInt;



@end
