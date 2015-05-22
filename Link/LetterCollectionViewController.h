//
//  LetterCollectionViewController.h
//  Link
//
//  Created by Eleve on 04/05/2015.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LetterCollectionViewCell.h"
#import "HeaderCollectionReusableView.h"

@interface LetterCollectionViewController : UICollectionViewController
<UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) NSMutableArray *letterImages;
@property(nonatomic) BOOL showNewLetterModal;
- (IBAction)backToCarousel:(id)sender;
@end