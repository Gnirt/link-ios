//
//  ModalViewController.m
//  Link
//
//  Created by Eleve on 05/05/2015.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "ModalViewController.h"

@implementation ModalViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    self.messageTextView.text = self.message;
}
- (IBAction)done:(id)sender {
     [self.presentingViewController dismissViewControllerAnimated:YES completion:^{}];
}

@end
