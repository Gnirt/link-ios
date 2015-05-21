//
//  WritingWorldViewController.h
//  Link
//
//  Created by Eleve on 04/05/2015.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomLabelWithDifferentColor.h"

@interface WritingWorldViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *postItTextView;
@property (weak, nonatomic) IBOutlet UITextView *letterTextView;
@property (weak, nonatomic) IBOutlet CustomLabelWithDifferentColor *titleLabel;
@property (weak, nonatomic) IBOutlet CustomLabelWithDifferentColor *optionLabel;
- (IBAction)backToCarousel:(id)sender;

@end
