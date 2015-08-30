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

@end
