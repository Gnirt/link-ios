//
//  GapFillViewController.m
//  Link
//
//  Created by Philippe Tring on 18/5/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "GapFillViewController.h"

@interface GapFillViewController ()
@property (nonatomic, strong) NSString *originalSentence;
@end

@implementation GapFillViewController

@synthesize sentenceLabel;
@synthesize answerButton1;
@synthesize answerButton2;
@synthesize answerButton3;
@synthesize answerButton4;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.originalSentence = self.sentenceLabel.text;
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
    if (![sender isKindOfClass:[UIButton class]])
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
    [(UIButton *)sender setTitleColor:[UIColor colorWithRed:0.812 green:0.235 blue:0.565 alpha:1] forState:UIControlStateNormal];
}
@end
