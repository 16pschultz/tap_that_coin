//
//  VictoryPage.h
//  Coin Game
//
//  Created by Peter Schultz on 4/29/15.
//  Copyright (c) 2015 Peter Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VictoryPage : UIViewController 

@property (assign, nonatomic) NSInteger lastHighScore;



//Together, both get best bag score.
@property (nonatomic, assign) double userMoney;
@property (strong, nonatomic) IBOutlet UILabel *currentBagLabel;

@property (nonatomic, assign) double userCurrentBag;
@property (strong, nonatomic) IBOutlet UILabel *bestBagLabel;




@property (nonatomic, assign) int scoreInt;
@property (nonatomic, assign) IBOutlet UILabel *scoreLabel;

@property (nonatomic, assign) int highScoreInt;
@property (nonatomic, assign) IBOutlet UILabel *highScoreLabel;


- (IBAction)playAgainButton;

@end
