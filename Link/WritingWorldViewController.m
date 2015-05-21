//
//  WritingWorldViewController.m
//  Link
//
//  Created by Eleve on 04/05/2015.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "WritingWorldViewController.h"
#import "WriteLetterModalViewController.h"
@implementation WritingWorldViewController

- (void)viewDidLoad {
    _postItTextView.backgroundColor = [UIColor clearColor];
    _postItTextView.textContainerInset = UIEdgeInsetsMake(10, 20, 0, 20);
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:_postItTextView.frame];
    imageView.image = [UIImage imageNamed:@"post_it_petit"];
    [self.view addSubview:imageView];
    [self.view bringSubviewToFront:_postItTextView];
    
    _letterTextView.backgroundColor = [UIColor clearColor];
    _letterTextView.textContainerInset = UIEdgeInsetsMake(10, 20, 0, 20);
    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:_letterTextView.frame];
    imageView2.image = [UIImage imageNamed:@"papier_lettre"];
    [self.view addSubview:imageView2];
    [self.view bringSubviewToFront:_letterTextView];
    
    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(textViewTapped)];
    [_letterTextView addGestureRecognizer:gestureRecognizer];
    [self.titleLabel labelMultipleColor:self.titleLabel changeColor:[UIColor colorWithRed:0.408 green:0.349 blue:0.678 alpha:1] forString:@"MARIE"];
    [self.optionLabel labelMultipleColor:self.optionLabel changeColor:[UIColor colorWithRed:0.408 green:0.349 blue:0.678 alpha:1] forString:@"my letter"];
}

- (void)textViewTapped {
    WriteLetterModalViewController *modalViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"WriteLetterModalViewController"];
    [modalViewController setModalPresentationStyle:UIModalPresentationFormSheet];
    [self presentViewController:modalViewController animated:YES completion:nil];
}
- (IBAction)backToCarousel:(id)sender {
    UIViewController* home = [self.storyboard instantiateViewControllerWithIdentifier:@"home"];
    [self presentViewController:home animated:YES completion:nil];
}
@end
