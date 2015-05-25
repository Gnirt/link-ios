//
//  GapFillEndModalViewController.m
//  Link
//
//  Created by Philippe Tring on 20/5/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "GapFillEndModalViewController.h"

@interface GapFillEndModalViewController ()

@end

@implementation GapFillEndModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.preferredContentSize = CGSizeMake(900, 500);
    self.textView.text = NSLocalizedString(@"You’ve completed game one.\nNext week you will have access\nto the next game with Marie !", nil);
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

- (IBAction)backToCarousel:(id)sender {
    UIViewController* home = [self.storyboard instantiateViewControllerWithIdentifier:@"home"];
    [self presentViewController:home animated:YES completion:nil];
}
@end
