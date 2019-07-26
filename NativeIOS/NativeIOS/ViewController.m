//
//  ViewController.m
//  NativeIOS
//
//  Created by Malav Soni on 12/07/19.
//  Copyright © 2019 Malav Soni. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)showUnity_Clicked:(id)sender {
    [((AppDelegate *)[[UIApplication sharedApplication] delegate]) initUnity];
    [((AppDelegate *)[[UIApplication sharedApplication] delegate]) ShowMainView];

}


@end
