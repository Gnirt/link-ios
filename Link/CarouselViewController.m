//
//  ViewController.m
//  StoryboardExample
//
//  Created by Nick Lockwood on 08/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CarouselViewController.h"

@interface CarouselViewController ()

@property (nonatomic, strong) NSMutableArray *items;

@end


@implementation CarouselViewController

@synthesize carousel;
@synthesize nextWorldLabel;
@synthesize currentWorldButton;
@synthesize previousWorldLabel;
@synthesize items;

- (void)awakeFromNib
{
    //set up data
    //your carousel should always be driven by an array of
    //data of some kind - don't store data in your item views
    //or the recycling mechanism will destroy your data once
    //your item views move off-screen
    self.items = [NSMutableArray array];
    for (int i = 0; i < 3; i++)
    {
        [items addObject:@(i)];
    }
}

- (void)dealloc
{
    //it's a good idea to set these to nil here to avoid
    //sending messages to a deallocated viewcontroller
    carousel.delegate = nil;
    carousel.dataSource = nil;
}

#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //configure carousel
    carousel.type = iCarouselTypeRotary;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    //free up memory by releasing subviews
    self.carousel = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

#pragma mark -
#pragma mark iCarousel methods

- (NSInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    //return the total number of items in the carousel
    return [items count];
}

- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view
{
    UILabel *label = nil;
    
    //create new view if no view is available for recycling
    if (view == nil)
    {
        view = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 530.0f, 400.0f)];
        NSMutableArray *arr_images = [[NSMutableArray alloc] init];
        index = index + 1;
        int count = 200;
        if (index == 3)
            count = 191;
        for (int i = 0; i < count; i++) {
            [arr_images addObject: [UIImage imageNamed:[NSString stringWithFormat:@"carte%ld_%d", (long)index, i]]];
        }
        UIImage *animatedImage = [UIImage animatedImageWithImages:arr_images duration:5];
        ((UIImageView *)view).image = animatedImage;
        view.contentMode = UIViewContentModeCenter;
        label = [[UILabel alloc] initWithFrame:view.bounds];
        label.backgroundColor = [UIColor clearColor];
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [label.font fontWithSize:50];
        label.tag = 1;
        [view addSubview:label];
    }
    else
    {
        //get a reference to the label in the recycled view
        label = (UILabel *)[view viewWithTag:1];
    }
    
    //set item label
    //remember to always set any properties of your carousel item
    //views outside of the `if (view == nil) {...}` check otherwise
    //you'll get weird issues with carousel item content appearing
    //in the wrong place in the carousel
    //label.text = [items[index] stringValue];
    
    return view;
}

- (CGFloat)carousel:(iCarousel *)carousel valueForOption:(iCarouselOption)option withDefault:(CGFloat)value
{
    switch (option)
    {
        case iCarouselOptionWrap:
        {
            return YES;
        }
        case iCarouselOptionRadius:
        {
            return value * 1;
        }
        case iCarouselOptionSpacing:
        {
            return value * 1;
        }
        default:
        {
            return value;
        }
    }
}

- (void)carouselCurrentItemIndexDidChange:(iCarousel *)carousel2
{
    switch (carousel2.currentItemIndex)
    {
        case 0: //Writing World
        {
            [currentWorldButton setTitle:@"Writing world" forState:UIControlStateNormal];
            [nextWorldLabel setText:@"Game world"];
            [previousWorldLabel setText:@"Words world"];
            break;
        }
        case 1: //Game World
        {
            [currentWorldButton setTitle:@"Game world" forState:UIControlStateNormal];
            [nextWorldLabel setText:@"Words world"];
            [previousWorldLabel setText:@"Writing world"];
            break;
        }
        case 2: //Words World
        {
            [currentWorldButton setTitle:@"Words world" forState:UIControlStateNormal];
            [nextWorldLabel setText:@"Writing world"];
            [previousWorldLabel setText:@"Game world"];
            break;
        }
        default:
        {

        }
    }
}

- (void)carousel:(iCarousel *)carousel2 didSelectItemAtIndex:(NSInteger)index
{
    if (index == carousel2.currentItemIndex) {
        switch (carousel2.currentItemIndex) {
            case 0://Writing World
            {
                UIViewController* writeLetter = [self.storyboard instantiateViewControllerWithIdentifier:@"writeLetter"];
                [self presentViewController:writeLetter animated:YES completion:nil];
                break;
            }
            case 1://Game World
            {
                UIViewController* activity = [self.storyboard instantiateViewControllerWithIdentifier:@"activity"];
                [self presentViewController:activity animated:YES completion:nil];
                break;
            }
            case 2://Words World
            {
                UIViewController* mailbox = [self.storyboard instantiateViewControllerWithIdentifier:@"mailbox"];
                [self presentViewController:mailbox animated:YES completion:nil];
                break;
            }
            default:
                break;
        }
    }
}

@end
