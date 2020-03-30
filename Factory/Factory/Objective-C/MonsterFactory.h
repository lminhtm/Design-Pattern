//
//  MonsterFactory.h
//  Factory
//
//  Created by LMinh on 8/9/18.
//  Copyright © 2018 LMinh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Monster.h"

typedef enum : NSUInteger {
    MonsterType_Lion,
    MonsterType_Dragon,
    MonsterType_Wolf,
} MonsterType;

@interface MonsterFactory : NSObject

+ (Monster *)createMonsterWithType:(MonsterType)type;

@end
