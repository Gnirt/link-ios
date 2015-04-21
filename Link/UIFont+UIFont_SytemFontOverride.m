//
//  UIFont+UIFont_SytemFontOverride.m
//  Link
//
//  Created by Eleve on 21/04/2015.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "UIFont+UIFont_SytemFontOverride.h"

@implementation UIFont (SytemFontOverride)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"
//
//+ (UIFont *)boldSystemFontOfSize:(CGFloat)fontSize {
//    return [UIFont fontWithName:@"TeluguSangamMN-Bold" size:fontSize];
//}

+ (UIFont *)systemFontOfSize:(CGFloat)fontSize {
    return [UIFont fontWithName:@"Bosque-Regular" size:fontSize];
}

#pragma clang diagnostic pop

@end
