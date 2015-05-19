//
//  GapFillViewController.h
//  Link
//
//  Created by Philippe Tring on 18/5/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FillGapAnswerButton.h"

@interface GapFillViewController : UIViewController
@property (nonatomic, strong) NSString *originalSentence;
@property (nonatomic, strong) NSArray *answers;
@property (nonatomic, strong) NSArray *correctAnswers;
@property (weak, nonatomic) IBOutlet UILabel *sentenceLabel;
@property (weak, nonatomic) IBOutlet FillGapAnswerButton *answerButton1;
@property (weak, nonatomic) IBOutlet FillGapAnswerButton *answerButton2;
@property (weak, nonatomic) IBOutlet FillGapAnswerButton *answerButton3;
@property (weak, nonatomic) IBOutlet FillGapAnswerButton *answerButton4;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;
- (IBAction)answerTap:(id)sender;

@end
    