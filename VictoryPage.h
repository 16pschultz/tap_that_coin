//
//  VictoryPage.h
//  Coin Game
//
//  Created by Peter Schultz on 4/29/15.
//  Copyright (c) 2015 Peter Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VictoryPage : UIViewController {
 
}

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


@end
