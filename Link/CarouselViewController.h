//
//  ViewController.h
//  StoryboardExample
//
//  Created by Nick Lockwood on 08/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"


@interface CarouselViewController : UIViewController <iCarouselDataSource, iCarouselDelegate>

@property (nonatomic, strong) IBOutlet iCarousel *carousel;
@property (weak, nonatomic) IBOutlet UIButton *nextWorldButton;
@property (weak, nonatomic) IBOutlet UIButton *currentWorldButton;
@property (weak, nonatomic) IBOutlet UIButton *previousWorldButton;
- (IBAction)goToWorld:(id)sender;

@end
