//
//  InfoPage.m
//  Coin Game
//
//  Created by Peter Schultz on 4/28/15.
//  Copyright (c) 2015 Peter Schultz. All rights reserved.
//

#import "InfoPage.h"
#import "PennyVC.h"

@interface InfoPage ()

@end

@implementation InfoPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)goButton {
    
    PennyVC *pennyVC = [[PennyVC alloc] init];
    [self presentViewController:pennyVC animated:YES completion:NULL];
    
}





@end
