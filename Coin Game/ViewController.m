//
//  ViewController.m
//  Coin Game
//
//  Created by Peter Schultz on 4/24/15.
//  Copyright (c) 2015 Peter Schultz. All rights reserved.
//

#import "ViewController.h"
#import "PennyVC.h"
#import <GameKit/GameKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    PennyVC *pennyVC = [[PennyVC alloc] init];
    [self presentViewController:pennyVC animated:NO completion:nil];
    
//    [self presentViewController:pennyVC animated:YES completion:NULL];
    
    
    NSURL *buttonUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Coin Sound" ofType:@"mp3"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)buttonUrl, &SoundID);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)launchPennyButton {
    
    AudioServicesPlaySystemSound(SoundID);
    
    PennyVC *pennyVC = [[PennyVC alloc] init];
    [self presentViewController:pennyVC animated:YES completion:NULL];
    
}



@end
