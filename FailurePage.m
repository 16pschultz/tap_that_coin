//
//  FailurePage.m
//  Coin Game
//
//  Created by Peter Schultz on 4/26/15.
//  Copyright (c) 2015 Peter Schultz. All rights reserved.
//


#import "FailurePage.h"
#import "PennyVC.h"


@interface FailurePage ()

@end

@implementation FailurePage

- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.imageFailure1.image = [UIImage imageNamed:self.stringImage];

    self.scoreLabel.text = [NSString stringWithFormat:@"%i", self.scoreInt];
    
    
    
    self.lastHighScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScore"];
    
    self.highScoreLabel.text = [NSString stringWithFormat:@"%li", (long)self.lastHighScore];

    
    
    self.userMoney = [[NSUserDefaults standardUserDefaults] doubleForKey:@"UserBestBag"];
    
    self.bestBagLabel.text = [NSString stringWithFormat:@"$%.2lf", self.userMoney];
    
    
    self.currentBagLabel.text = [NSString stringWithFormat:@"$%.2lf", self.userCurrentBag];
    
}
 


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


- (void)viewDidAppear:(BOOL)animated {
    
//    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);


}

-(void)viewWillAppear:(BOOL)animated {
    
}


- (IBAction)startoverButton {
    
    PennyVC *pennyVC = [[PennyVC alloc] init];
    
    pennyVC.highScoreInt = self.highScoreInt;

    [self presentViewController:pennyVC animated:YES completion:NULL];
    
}




@end
