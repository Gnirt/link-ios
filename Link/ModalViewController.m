//
//  ModalViewController.m
//  Link
//
//  Created by Eleve on 05/05/2015.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "ModalViewController.h"

@implementation ModalViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    [self.messageTextView setText:self.message];
    [_imageView setImage:[UIImage imageNamed:NSLocalizedString(@"avatar_marie", nil)]];
}

- (IBAction)done:(id)sender {
     [self.presentingViewController dismissViewControllerAnimated:YES completion:^{}];
}

@end
