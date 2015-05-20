//
//  QuizzThumbnailViewController.h
//  Link
//
//  Created by Philippe Tring on 20/5/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizzThumbnailViewController : UIViewController
@property (nonatomic, strong) NSString *question;
@property (nonatomic, strong) NSArray *answers;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UIButton *answer1;
@property (weak, nonatomic) IBOutlet UIButton *answer2;
@property (weak, nonatomic) IBOutlet UIButton *answer3;
@property (weak, nonatomic) IBOutlet UIButton *answer4;
@property (weak, nonatomic) IBOutlet UIButton *answer5;
- (IBAction)changeButtonState:(id)sender;

@end
