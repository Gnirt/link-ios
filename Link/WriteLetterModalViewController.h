//
//  WriteLetterModalViewController.h
//  Link
//
//  Created by Philippe Tring on 16/5/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "ModalViewController.h"

@interface WriteLetterModalViewController : ModalViewController<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIImageView *avatar;
- (IBAction)sendLetterAction:(id)sender;
- (IBAction)closeModal:(id)sender;

@end
