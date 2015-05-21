//
//  CustomLabelWithDifferentColor.m
//  Link
//
//  Created by Philippe Tring on 21/5/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "CustomLabelWithDifferentColor.h"

@implementation CustomLabelWithDifferentColor

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)labelMultipleColor:(UILabel*)label changeColor:(UIColor *)color forString:(NSString*)coloredString {
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithAttributedString: label.attributedText];
    NSRange range = [label.text rangeOfString:coloredString];
    [text addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:0.38 green:0.373 blue:0.671 alpha:1] range:NSMakeRange(range.location, range.length)];
    [label setAttributedText: text];
}

@end
