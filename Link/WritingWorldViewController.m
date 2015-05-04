//
//  WritingWorldViewController.m
//  Link
//
//  Created by Eleve on 04/05/2015.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "WritingWorldViewController.h"

@implementation WritingWorldViewController

- (void)viewDidLoad {
    _postItTextView.backgroundColor = [UIColor clearColor];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:_postItTextView.frame];
    imageView.image = [UIImage imageNamed:@"post_it_petit"];
    [self.view addSubview:imageView];
    [self.view bringSubviewToFront:_postItTextView];
    
    _letterTextView.backgroundColor = [UIColor clearColor];
    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:_letterTextView.frame];
    imageView2.image = [UIImage imageNamed:@"papier_lettre"];
    [self.view addSubview:imageView2];
    [self.view bringSubviewToFront:_letterTextView];
}
@end
