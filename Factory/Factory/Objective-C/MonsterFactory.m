//
//  MonsterFactory.m
//  Factory
//
//  Created by LMinh on 8/9/18.
//  Copyright © 2018 LMinh. All rights reserved.
//

#import "MonsterFactory.h"

@implementation MonsterFactory

+ (Monster *)createMonsterWithType:(MonsterType)type {
    switch (type) {
        case MonsterType_Lion:
            return [Lion new];
        case MonsterType_Dragon:
            return [Dragon new];
        case MonsterType_Wolf:
            return [Wolf new];
    }
}

@end
