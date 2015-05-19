//
//  ActivityCollectionViewController.h
//  Link
//
//  Created by Philippe Tring on 9/4/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ActivityCollectionViewCell.h"
#import "HeaderCollectionReusableView.h"

@interface ActivityCollectionViewController : UICollectionViewController
<UICollectionViewDataSource, UICollectionViewDelegate>

- (IBAction)backToCarousel:(id)sender;
@property (strong, nonatomic) NSMutableArray *activityImages;
@end
