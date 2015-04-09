//
//  HomeViewController.m
//  Link
//
//  Created by Philippe Tring on 8/4/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "HomeViewController.h"
@interface HomeViewController ()

@end

@implementation HomeViewController
//
//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//    // Do any additional setup after loading the view, typically from a nib.
//    
//    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapDetected)];
//    singleTap.numberOfTapsRequired = 1;
//    self.mailboxImage.userInteractionEnabled = YES;
//    [self.mailboxImage addGestureRecognizer:singleTap];
//    
//}
//
//-(void)tapDetected{
//    NSLog(@"single Tap on imageview");
//    
//}
- (IBAction)goToMailBox:(id)sender {
    UIViewController* mailbox = [self.storyboard instantiateViewControllerWithIdentifier:@"mailbox"];
    [self presentViewController:mailbox animated:YES completion:nil];
}

- (IBAction)goToWriteLetter:(id)sender {
    UIViewController* writeLetter = [self.storyboard instantiateViewControllerWithIdentifier:@"writeLetter"];
    [self presentViewController:writeLetter animated:YES completion:nil];
}

- (IBAction)goToActivity:(id)sender {
    UIViewController* activity = [self.storyboard instantiateViewControllerWithIdentifier:@"activity"];
    [self presentViewController:activity animated:YES completion:nil];
}

@end
