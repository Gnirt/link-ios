//
//  GapFillViewController.h
//  Link
//
//  Created by Philippe Tring on 18/5/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GapFillViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *sentenceLabel;
@property (weak, nonatomic) IBOutlet UIButton *answerButton1;
@property (weak, nonatomic) IBOutlet UIButton *answerButton2;
@property (weak, nonatomic) IBOutlet UIButton *answerButton3;
@property (weak, nonatomic) IBOutlet UIButton *answerButton4;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;
- (IBAction)answerTap:(id)sender;

@end
