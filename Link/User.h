//
//  User.h
//  Link
//
//  Created by Philippe Tring on 29/3/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "JSONKeyMapper.h"
#import "JSONHTTPClient.h"

@interface User : JSONModel
@property (nonatomic, strong) NSString* username;
@property (nonatomic, strong) NSString* email;
@property (nonatomic, assign) int adminId;

+(void) loginWithUserName : (NSString *)username password:(NSString *)password completion : (JSONObjectBlock)completeBlock;

@end

