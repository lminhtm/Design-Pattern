//
//  ViewController.m
//  Singleton
//
//  Created by LMinh on 8/8/18.
//  Copyright © 2018 LMinh. All rights reserved.
//

#import "ViewController.h"
#import "NetworkManager.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Access NetworkManager
    NSLog(@"%@", [NetworkManager sharedInstance].baseURL);
}

@end
