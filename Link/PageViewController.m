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
    p4.question = @"What's your favorite color?";
    p4.answers = [NSArray arrayWithObjects:
                  [NSArray arrayWithObjects:@"vignette_cyan",@"vignette_cyan_clic",@"Blue",nil],
                  [NSArray arrayWithObjects:@"vignette_rouge",@"vignette_rouge_clic",@"Red",nil],
                  [NSArray arrayWithObjects:@"vignette_jaune",@"vignette_jaune_clic",@"Yellow",nil],
                  [NSArray arrayWithObjects:@"vignette_blanc",@"vignette_blanc_clic",@"White",nil],
                  [NSArray arrayWithObjects:@"vignette_noir",@"vignette_noir_clic",@"Black",nil],
                  nil];
    QuizzThumbnailViewController *p5 = [self.storyboard instantiateViewControllerWithIdentifier:@"page4"];
    p5.question = @"Pick your favorite pet";
    p5.answers = [NSArray arrayWithObjects:
                  [NSArray arrayWithObjects:@"vignette_dragon",@"vignette_dragon_clic",@"Dragon",nil],
                  [NSArray arrayWithObjects:@"vignette_oiseau",@"vignette_oiseau_clic",@"Bird",nil],
                  [NSArray arrayWithObjects:@"vignette_tigre",@"vignette_tigre_clic",@"Tiger",nil],
                  [NSArray arrayWithObjects:@"vignette_licorne",@"vignette_licorne_clic",@"Unicorn",nil],
                  [NSArray arrayWithObjects:@"vignette_tortue",@"vignette_tortue_clic",@"Turtle",nil],
                  nil];
    QuizzThumbnailViewController *p6 = [self.storyboard instantiateViewControllerWithIdentifier:@"page4"];
    p6.question = @"Choose a planet";
    p6.answers = [NSArray arrayWithObjects:
                  [NSArray arrayWithObjects:@"vignette_jupiter",@"vignette_jupiter_clic",@"Jupiter",nil],
                  [NSArray arrayWithObjects:@"vignette_mars",@"vignette_mars_clic",@"Mars",nil],
                  [NSArray arrayWithObjects:@"vignette_saturne",@"vignette_saturne_clic",@"Saturn",nil],
                  [NSArray arrayWithObjects:@"vignette_venus",@"vignette_venus_clic",@"Venus",nil],
                  [NSArray arrayWithObjects:@"vignette_mercure",@"vignette_mercure_clic",@"Mercury",nil],
                  nil];
    QuizzThumbnailViewController *p7 = [self.storyboard instantiateViewControllerWithIdentifier:@"page4"];
    p7.question = @"Select a sense";
    p7.answers = [NSArray arrayWithObjects:
                  [NSArray arrayWithObjects:@"vignette_vue",@"vignette_vue_clic",@"Sight",nil],
                  [NSArray arrayWithObjects:@"vignette_gout",@"vignette_gout_clic",@"Taste",nil],
                  [NSArray arrayWithObjects:@"vignette_toucher",@"vignette_toucher_clic",@"Touch",nil],
                  [NSArray arrayWithObjects:@"vignette_nez",@"vignette_nez_clic",@"Smell",nil],
                  [NSArray arrayWithObjects:@"vignette_oreille",@"vignette_oreille_clic",@"Audition",nil],
                  nil];
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
