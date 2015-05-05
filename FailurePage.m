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
    
    
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", self.scoreInt];
    self.highScoreLabel.text = [NSString stringWithFormat:@"%i", self.highScoreInt];



    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


- (void)viewDidAppear:(BOOL)animated {
    
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);

}


- (IBAction)startoverButton {
    
    PennyVC *pennyVC = [[PennyVC alloc] init];
    [self presentViewController:pennyVC animated:YES completion:NULL];
    
}




@end
