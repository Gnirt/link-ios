//
//  ImageModalViewController.h
//  Link
//
//  Created by Philippe Tring on 22/5/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageModalViewController : UIViewController
- (IBAction)closeModal:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIImageView *avatar;
@end
