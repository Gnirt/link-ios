//
//  WritingWorldViewController.h
//  Link
//
//  Created by Eleve on 04/05/2015.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WritingWorldViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *postItTextView;
@property (weak, nonatomic) IBOutlet UITextView *letterTextView;
- (IBAction)backToCarousel:(id)sender;

@end
