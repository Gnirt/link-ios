//
//  ModalViewController.h
//  Link
//
//  Created by Eleve on 05/05/2015.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ModalViewController : UIViewController

@property (weak) IBOutlet UIImageView *imageView;
@property (nonatomic) NSString* message;
-(IBAction)done:(id) sender;
@property (weak, nonatomic) IBOutlet UITextView *messageTextView;

@end
