//
//  ActivityModalViewController.m
//  Link
//
//  Created by Philippe Tring on 16/5/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "ActivityModalViewController.h"

@interface ActivityModalViewController ()

@end

@implementation ActivityModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.preferredContentSize = CGSizeMake(900, 500);
    [self.titleLabel labelMultipleColor:self.titleLabel changeColor:[UIColor colorWithRed:0.259 green:0.271 blue:0.486 alpha:1] forString:@"right word"];
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

- (IBAction)closeModal:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)playActivity:(id)sender {
    UIViewController* game = [self.storyboard instantiateViewControllerWithIdentifier:@"fill_gap"];
    [self presentViewController:game animated:YES completion:nil];
}

@end
