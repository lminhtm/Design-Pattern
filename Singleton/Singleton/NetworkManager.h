//
//  NetworkManager.h
//  Singleton
//
//  Created by LMinh on 8/8/18.
//  Copyright © 2018 LMinh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkManager : NSObject

@property (nonatomic, strong) NSURL *baseURL;

+ (instancetype)sharedInstance;

@end
