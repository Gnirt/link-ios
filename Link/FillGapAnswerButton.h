//
//  FillGapAnswerButton.h
//  Link
//
//  Created by Philippe Tring on 19/5/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FillGapAnswerButton : UIButton {
    BOOL correctAnswer;
}

@property (nonatomic, assign) BOOL correctAnswer;

@end
