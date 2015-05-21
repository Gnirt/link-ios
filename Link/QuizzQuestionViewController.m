//
//  QuizzQuestionViewController.m
//  Link
//
//  Created by Philippe Tring on 21/5/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "QuizzQuestionViewController.h"

@interface QuizzQuestionViewController ()

@end

@implementation QuizzQuestionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.questionLabel labelMultipleColor:self.questionLabel changeColor:[UIColor colorWithRed:0.408 green:0.349 blue:0.678 alpha:1] forString:@"NAME"];
    [self.questionLabel labelMultipleColor:self.questionLabel changeColor:[UIColor colorWithRed:0.408 green:0.349 blue:0.678 alpha:1] forString:@"PASSWORD"];
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

@end
