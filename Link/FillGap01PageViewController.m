//
//  FillGap01PageViewController.m
//  Link
//
//  Created by Philippe Tring on 16/5/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "FillGap01PageViewController.h"
#import "GapFillViewController.h"

@interface FillGap01PageViewController ()<UIPageViewControllerDataSource, UIPageViewControllerDelegate>

@property (nonatomic) NSArray *pageViewControllers;

@end

@implementation FillGap01PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.delegate = self;
    self.dataSource = self;
    
    GapFillViewController *p1 = [self.storyboard instantiateViewControllerWithIdentifier:@"fill_gap_page01"];
    p1.originalSentence = NSLocalizedString(@"C'est l'été, il y _ du soleil.", nil);
    p1.answers = [NSArray arrayWithObjects:NSLocalizedString(@"être", nil),NSLocalizedString(@"a", nil),NSLocalizedString(@"est", nil),NSLocalizedString(@"avoir", nil),nil];
    p1.correctAnswers = [NSArray arrayWithObjects:[NSNumber numberWithBool:NO],[NSNumber numberWithBool:YES],[NSNumber numberWithBool:NO],[NSNumber numberWithBool:NO],nil];
    GapFillViewController *p2 = [self.storyboard instantiateViewControllerWithIdentifier:@"fill_gap_page01"];
    p2.originalSentence = NSLocalizedString(@"Aujourd'hui c'est lundi, je _ à l'école.", nil);
    p2.answers = [NSArray arrayWithObjects:NSLocalizedString(@"donner", nil),NSLocalizedString(@"pris", nil),NSLocalizedString(@"aller", nil),NSLocalizedString(@"vais", nil),nil];
    p2.correctAnswers = [NSArray arrayWithObjects:[NSNumber numberWithBool:NO],[NSNumber numberWithBool:NO],[NSNumber numberWithBool:NO],[NSNumber numberWithBool:YES],nil];
    self.pageViewControllers = @[p1, p2];
    // begin with first page
    [self setViewControllers:@[p1] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger currentIndex = [self.pageViewControllers indexOfObject:viewController];
    if (currentIndex > 0) {
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
