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


@property (nonatomic, assign) IBOutlet UILabel *scoreLabel;

@property (nonatomic, assign) int scoreInt;

@property (nonatomic, assign) IBOutlet UILabel *highScoreLabel;

@property (nonatomic, assign) int highScoreInt;

- (IBAction)playAgainButton;


@end
