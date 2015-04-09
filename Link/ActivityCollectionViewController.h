//
//  ActivityCollectionViewController.h
//  Link
//
//  Created by Philippe Tring on 9/4/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ActivityCollectionViewCell.h"
@interface ActivityCollectionViewController : UICollectionViewController
<UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) NSMutableArray *activityImages;
@end
