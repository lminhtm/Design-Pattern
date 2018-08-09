//
//  Monster.h
//  Factory
//
//  Created by LMinh on 8/9/18.
//  Copyright © 2018 LMinh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Monster : NSObject

- (void)appear;

@end

@interface Lion : Monster

@end

@interface Dragon : Monster

@end

@interface Wolf : Monster

@end
