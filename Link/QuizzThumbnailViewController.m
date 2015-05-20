//
//  QuizzThumbnailViewController.m
//  Link
//
//  Created by Philippe Tring on 20/5/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "QuizzThumbnailViewController.h"

@interface QuizzThumbnailViewController ()

@end

@implementation QuizzThumbnailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.questionLabel.text = self.question;
    [self.answer1 setImage:[UIImage imageNamed:self.answers[0][0]] forState:UIControlStateNormal];
    [self.answer1 setImage:[UIImage imageNamed:self.answers[0][1]] forState:UIControlStateSelected];
    [self.answer1 setTitle:self.answers[0][2] forState:UIControlStateNormal];
    [self.answer2 setImage:[UIImage imageNamed:self.answers[1][0]] forState:UIControlStateNormal];
    [self.answer2 setImage:[UIImage imageNamed:self.answers[1][1]] forState:UIControlStateSelected];
    [self.answer2 setTitle:self.answers[1][2] forState:UIControlStateNormal];
    [self.answer3 setImage:[UIImage imageNamed:self.answers[2][0]] forState:UIControlStateNormal];
    [self.answer3 setImage:[UIImage imageNamed:self.answers[2][1]] forState:UIControlStateSelected];
    [self.answer3 setTitle:self.answers[2][2] forState:UIControlStateNormal];
    [self.answer4 setImage:[UIImage imageNamed:self.answers[3][0]] forState:UIControlStateNormal];
    [self.answer4 setImage:[UIImage imageNamed:self.answers[3][1]] forState:UIControlStateSelected];
    [self.answer4 setTitle:self.answers[3][2] forState:UIControlStateNormal];
    [self.answer5 setImage:[UIImage imageNamed:self.answers[4][0]] forState:UIControlStateNormal];
    [self.answer5 setImage:[UIImage imageNamed:self.answers[4][1]] forState:UIControlStateSelected];
    [self.answer5 setTitle:self.answers[4][2] forState:UIControlStateNormal];
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

- (IBAction)changeButtonState:(UIButton*)sender {
    [sender setSelected:!sender.selected];
}

- (IBAction)goToCarousel:(id)sender {
    UIViewController* home = [self.storyboard instantiateViewControllerWithIdentifier:@"home"];
    [self presentViewController:home animated:YES completion:nil];
}
@end
