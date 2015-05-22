//
//  ImageModalViewController.m
//  Link
//
//  Created by Philippe Tring on 22/5/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "ImageModalViewController.h"

@interface ImageModalViewController ()

@end

@implementation ImageModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        self.preferredContentSize = CGSizeMake(512, 384);
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
    [self.presentingViewController dismissViewControllerAnimated:YES completion:^{}];
}
@end
