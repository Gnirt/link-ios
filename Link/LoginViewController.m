//
//  ViewController.m
//  Link
//
//  Created by Philippe Tring on 29/3/15.
//  Copyright (c) 2015 Philippe Tring. All rights reserved.
//

#import "LoginViewController.h"
#import "User.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender {
    [User loginWithUserName:self.emailInput.text password:self.passwordInput.text completion:^(id json, JSONModelError *err) {
        NSLog(@"%@", json);
        //Todo save the token to reuse it later
    }];
    
    
}
@end
