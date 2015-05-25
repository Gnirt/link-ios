//
//  WriteLetterModalViewController.m
//  Link
//
//  Created by Philippe Tring on 16/5/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "WriteLetterModalViewController.h"
#import "ImageModalViewController.h"
@interface WriteLetterModalViewController ()

@end

@implementation WriteLetterModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.textView.delegate = self;
    [_avatar setImage:[UIImage imageNamed:NSLocalizedString(@"avatar_dave", nil)]];
    self.textView.text = NSLocalizedString(@"Tap and start writing to Marie", nil);
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

- (IBAction)sendLetterAction:(id)sender {
    ImageModalViewController *modalViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"afterEmailSendModal"];
    [modalViewController setModalPresentationStyle:UIModalPresentationFormSheet];
    [self presentViewController:modalViewController animated:YES completion:nil];
}

- (IBAction)closeModal:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)textViewDidBeginEditing:(UITextView *)textView {
    textView.text = @"";
}

@end
