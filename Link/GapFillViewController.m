//
//  GapFillViewController.m
//  Link
//
//  Created by Philippe Tring on 18/5/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "GapFillViewController.h"
#import "GapFillEndModalViewController.h"
@interface GapFillViewController ()
@end

@implementation GapFillViewController

@synthesize sentenceLabel;
@synthesize answerButton1;
@synthesize answerButton2;
@synthesize answerButton3;
@synthesize answerButton4;
@synthesize resultLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sentenceLabel.text = self.originalSentence;
    [self.answerButton1 setTitle:self.answers[0] forState:UIControlStateNormal];
    self.answerButton1.correctAnswer = [[self.correctAnswers objectAtIndex:0] boolValue];
    [self.answerButton2 setTitle:self.answers[1] forState:UIControlStateNormal];
    self.answerButton2.correctAnswer = [[self.correctAnswers objectAtIndex:1] boolValue];
    [self.answerButton3 setTitle:self.answers[2] forState:UIControlStateNormal];
    self.answerButton3.correctAnswer = [[self.correctAnswers objectAtIndex:2] boolValue];
    [self.answerButton4 setTitle:self.answers[3] forState:UIControlStateNormal];
    self.answerButton4.correctAnswer = [[self.correctAnswers objectAtIndex:3] boolValue];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)answerTap:(id)sender {
    if (![sender isKindOfClass:[FillGapAnswerButton class]])
        return;
    [answerButton1 setTitleColor:[UIColor colorWithRed:0.38 green:0.373 blue:0.671 alpha:1] forState:UIControlStateNormal];
    [answerButton2 setTitleColor:[UIColor colorWithRed:0.38 green:0.373 blue:0.671 alpha:1] forState:UIControlStateNormal];
    [answerButton3 setTitleColor:[UIColor colorWithRed:0.38 green:0.373 blue:0.671 alpha:1] forState:UIControlStateNormal];
    [answerButton4 setTitleColor:[UIColor colorWithRed:0.38 green:0.373 blue:0.671 alpha:1] forState:UIControlStateNormal];
    NSRange originalRange = [self.originalSentence rangeOfString:@"_"];
    sentenceLabel.text = [self.originalSentence stringByReplacingOccurrencesOfString:@"_" withString:[(UIButton *)sender currentTitle]];
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithAttributedString: sentenceLabel.attributedText];
    NSRange range = [sentenceLabel.text rangeOfString:[(UIButton *)sender currentTitle]];
    [text addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:0.38 green:0.373 blue:0.671 alpha:1] range:NSMakeRange(originalRange.location, range.length)];
    [sentenceLabel setAttributedText: text];
    [(FillGapAnswerButton *)sender setTitleColor:[UIColor colorWithRed:0.812 green:0.235 blue:0.565 alpha:1] forState:UIControlStateNormal];
    if ([(FillGapAnswerButton *)sender correctAnswer]) {
        [resultLabel setTextColor:[UIColor colorWithRed:0.812 green:0.235 blue:0.565 alpha:1]];
        resultLabel.text = NSLocalizedString(@"- Well done, go to the next question -", nil);
    } else {
        [resultLabel setTextColor:[UIColor colorWithRed:0.718 green:0.671 blue:0.831 alpha:1]];
        resultLabel.text = NSLocalizedString(@"- Try again -", nil);
    }
}

- (IBAction)GapFillEnd:(id)sender {
    GapFillEndModalViewController *modalViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"GapFillEndModalViewController"];
    [modalViewController setModalPresentationStyle:UIModalPresentationFormSheet];
    [self presentViewController:modalViewController animated:YES completion:nil];
}
@end
