//
//  HomeViewController.h
//  Link
//
//  Created by Philippe Tring on 8/4/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"

@interface HomeViewController : UIViewController<iCarouselDataSource, iCarouselDelegate>

@property (nonatomic, strong) IBOutlet iCarousel *carousel;
//- (IBAction)goToMailBox:(id)sender;
//- (IBAction)goToWriteLetter:(id)sender;
//- (IBAction)goToActivity:(id)sender;

@end
