//
//  LetterCollectionViewController.m
//  Link
//
//  Created by Eleve on 04/05/2015.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "LetterCollectionViewController.h"
#import "ModalViewController.h"
#import "ImageModalViewController.h"
#import "Parse/Parse.h"
@interface LetterCollectionViewController ()

@end

@implementation LetterCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    
    //Todo change with json api pictures
    _letterImages = [@[@[@"enveloppe_ferme.png", NSLocalizedString(@"15 nov", nil)],
                         @[@"enveloppe_ouverte.png", @"9 nov"],
                         @[@"enveloppe_ouverte.png", @"28 oct"],
                         @[@"enveloppe_ouverte.png", @"21 oct"],
                         @[@"enveloppe_ouverte.png", @"15 oct"],
                         @[@"enveloppe_ouverte.png", @"8 oct"],
                         @[@"enveloppe_ouverte.png", @"26 sept"],
                         @[@"enveloppe_ouverte.png", @"20 sept"],
                         @[@"enveloppe_ouverte.png", @"13 sept"],
                         @[@"enveloppe_ouverte.png", @"6 sept"]
                       ] mutableCopy];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    if (self.showNewLetterModal) {
        ImageModalViewController *modalViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"newLetterModal"];
        [modalViewController setModalPresentationStyle:UIModalPresentationFormSheet];
        [self presentViewController:modalViewController animated:YES completion:nil];
    }
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *reusableview = nil;
    
    if (kind == UICollectionElementKindSectionHeader) {
        HeaderCollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header" forIndexPath:indexPath];
        UIImage *headerImage = [UIImage imageNamed:@"logo"];
        headerView.image.image = headerImage;
        [headerView.titleLabel labelMultipleColor:headerView.titleLabel changeColor:[UIColor colorWithRed:0.259 green:0.271 blue:0.486 alpha:1] forString:@"MARIE"];
        reusableview = headerView;
    }
    
    return reusableview;
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _letterImages.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LetterCollectionViewCell *letterCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"LetterCell" forIndexPath:indexPath];
    
    UIImage *image;
    long row = [indexPath row];
    
    image = [UIImage imageNamed:_letterImages[row][0]];
    
    letterCell.imageView.image = image;
    letterCell.dateLabel.text = _letterImages[row][1];
    letterCell.message = _letterImages[row][1];
    
    return letterCell;
}

#pragma mark <UICollectionViewDelegate>

/*
 // Uncomment this method to specify if the specified item should be highlighted during tracking
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
 }
 */

/*
 // Uncomment this method to specify if the specified item should be selected
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
 return YES;
 }
 */

/*
 // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
 }
 
 - (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
 }
 
 - (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
 }
 */


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    // If you need to use the touched cell, you can retrieve it like so
    //LetterCollectionViewCell *letterCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"LetterCell" forIndexPath:indexPath];
    //NSLog(@"touched cell %@ at indexPath %@", letterCell, indexPath);
    ModalViewController *modalViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ModalViewController"];
    long row = [indexPath row];
    modalViewController.message = _letterImages[row][1];
    [modalViewController setModalPresentationStyle:UIModalPresentationFormSheet];
    [self presentViewController:modalViewController animated:YES completion:nil];
}

//#pragma mark - Segue
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if ([segue.identifier isEqualToString:@"ShowLetterModal"]) {
//        ModalViewController *modalViewController = segue.destinationViewController;
//    }
//}

- (IBAction)backToCarousel:(id)sender {
    UIViewController* home = [self.storyboard instantiateViewControllerWithIdentifier:@"home"];
    [self presentViewController:home animated:YES completion:nil];
}
@end
