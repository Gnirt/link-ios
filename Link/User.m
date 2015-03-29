//
//  User.m
//  Link
//
//  Created by Philippe Tring on 29/3/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "User.h"

@implementation User

+(void) loginWithUserName : (NSString *)username password:(NSString *)password completion : (JSONObjectBlock)completeBlock{
    NSString* params = [NSString stringWithFormat:@"{email: %@, password: %@}", username, password];
    
    [JSONHTTPClient postJSONFromURLWithString:@"http://locahost:3000/api/v1/user" bodyString:params  completion:completeBlock];
}

+(JSONKeyMapper*)keyMapper
{
    return [JSONKeyMapper mapperFromUnderscoreCaseToCamelCase];
}

@end
