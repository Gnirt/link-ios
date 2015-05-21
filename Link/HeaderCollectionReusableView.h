//
//  HeaderCollectionReusableView.h
//  Link
//
//  Created by Philippe Tring on 10/4/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomLabelWithDifferentColor.h"
@interface HeaderCollectionReusableView : UICollectionReusableView
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet CustomLabelWithDifferentColor *titleLabel;

@end
