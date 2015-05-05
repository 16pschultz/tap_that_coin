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

@property (nonatomic, assign) IBOutlet UILabel *scoreLabel;

@property (nonatomic, assign) int scoreInt;

@property (nonatomic, assign) IBOutlet UILabel *highScoreLabel;

@property (nonatomic, assign) int highScoreInt;



@property (nonatomic, assign) IBOutlet UIButton *pennyButton;

@property (nonatomic, assign) IBOutlet UIButton *NickelButton;

@property (nonatomic, assign) IBOutlet UIButton *dimeButton;

@property (nonatomic, assign) IBOutlet UIButton *quarterButton;

@property (nonatomic, assign) IBOutlet UIButton *halfDollarButton;

@property (nonatomic, assign) IBOutlet UIButton *oneDollarButton;


@end
