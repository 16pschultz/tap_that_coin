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

    self.scoreLabel.text = [NSString stringWithFormat:@"%i", self.scoreInt];
    self.highScoreLabel.text = [NSString stringWithFormat:@"%i", self.highScoreInt];
    
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
