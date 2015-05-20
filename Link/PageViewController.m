//
//  PageViewController.m
//  Link
//
//  Created by Philippe Tring on 7/4/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "PageViewController.h"
#import "QuizzThumbnailViewController.h"

@interface PageViewController () <UIPageViewControllerDataSource, UIPageViewControllerDelegate>

@property (nonatomic) NSArray *pageViewControllers;

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.delegate = self;
    self.dataSource = self;
    
    UIViewController *p1 = [self.storyboard instantiateViewControllerWithIdentifier:@"page1"];
    UIViewController *p2 = [self.storyboard instantiateViewControllerWithIdentifier:@"page2"];
    UIViewController *p3 = [self.storyboard instantiateViewControllerWithIdentifier:@"page3"];
    QuizzThumbnailViewController *p4 = [self.storyboard instantiateViewControllerWithIdentifier:@"page4"];
    p4.question = @"une premiere question";
    p4.answers = [NSArray arrayWithObjects:
                  [NSArray arrayWithObjects:@"vignette_cyan",@"vignette_cyan_clic",nil],
                  [NSArray arrayWithObjects:@"vignette_rouge",@"vignette_rouge_clic",nil],
                  [NSArray arrayWithObjects:@"vignette_jaune",@"vignette_jaune_clic",nil],
                  [NSArray arrayWithObjects:@"vignette_blanc",@"vignette_blanc_clic",nil],
                  [NSArray arrayWithObjects:@"vignette_noir",@"vignette_noir_clic",nil],
                  nil];
    UIViewController *p5 = [self.storyboard instantiateViewControllerWithIdentifier:@"page5"];
    UIViewController *p6 = [self.storyboard instantiateViewControllerWithIdentifier:@"page6"];
    UIViewController *p7 = [self.storyboard instantiateViewControllerWithIdentifier:@"page7"];
    self.pageViewControllers = @[p1, p2, p3, p4, p5, p6, p7];
    // begin with first page
    [self setViewControllers:@[p1] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger currentIndex = [self.pageViewControllers indexOfObject:viewController];
    if (currentIndex > 0)	{
        return self.pageViewControllers[currentIndex - 1];
    }
    return nil;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger currentIndex = [self.pageViewControllers indexOfObject:viewController];
    currentIndex++;
    if (currentIndex < [self.pageViewControllers count])	{
        return self.pageViewControllers[currentIndex];
    }
    return nil;
}

// Both following methods must be implemented to display a page control
// (only works with forward-scrolling PageViewController, not in page-corner mode)

// how many dots in pagecontrol
- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return [self.pageViewControllers count];
}
// index of a page
- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    //	return [self.pageViewControllers indexOfObject:pageViewController];
    return 0;
}

@end
