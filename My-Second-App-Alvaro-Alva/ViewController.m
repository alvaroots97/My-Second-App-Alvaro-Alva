//
//  ViewController.m
//  My-Second-App-Alvaro-Alva
//
//  Created by Alvaro Alva on 9/12/20.
//  Copyright © 2020 Alvaro Alva. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UILabel *notificationLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //[self.notificationLabel setText:@"This is a notification"];
    [self.passwordTextField setSecureTextEntry:YES];
}
- (IBAction)logMeIn:(id)sender {
    if([self.usernameTextField.text isEqualToString:@"alvaro"] &&
       [self.passwordTextField.text isEqualToString:@"alva"]) {
        [self.notificationLabel setText:@"Success!"];
    } else {
        [self.notificationLabel setText:@"Failed!"];
    }
    NSLog(@"username %@", [self.usernameTextField text]);
    NSLog(@"password %@", [self.passwordTextField text]);
}


@end
