//
//  NetworkManager.m
//  Singleton
//
//  Created by LMinh on 8/8/18.
//  Copyright © 2018 LMinh. All rights reserved.
//

#import "NetworkManager.h"

@implementation NetworkManager

#pragma mark - Singleton

+ (instancetype)sharedInstance {
    static NetworkManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[NetworkManager alloc] init];
    });
    return sharedInstance;
}


#pragma mark - Initialization

- (id)init {
    self = [super init];
    if (self) {
        self.baseURL = [NSURL URLWithString:@""];
    }
    return self;
}

@end
