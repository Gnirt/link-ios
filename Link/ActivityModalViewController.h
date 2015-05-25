//
//  ActivityModalViewController.h
//  Link
//
//  Created by Philippe Tring on 16/5/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "ModalViewController.h"
#import "CustomLabelWithDifferentColor.h"
@interface ActivityModalViewController : ModalViewController
@property (weak, nonatomic) IBOutlet CustomLabelWithDifferentColor *titleLabel;
@property (weak, nonatomic) IBOutlet UITextView *catchPhraseTextView;

- (IBAction)closeModal:(id)sender;
- (IBAction)playActivity:(id)sender;

@end
