//
//  ViewController.m
//  Factory
//
//  Created by LMinh on 8/9/18.
//  Copyright © 2018 LMinh. All rights reserved.
//

#import "ViewController.h"
#import "MonsterFactory.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Monster *lion = [MonsterFactory createMonsterWithType:MonsterType_Lion];
    Monster *dragon = [MonsterFactory createMonsterWithType:MonsterType_Dragon];
    Monster *wolf = [MonsterFactory createMonsterWithType:MonsterType_Wolf];
    
    [lion appear];
    [dragon appear];
    [wolf appear];
    
    int randomType = arc4random_uniform(3);
    Monster *randomMonster = [MonsterFactory createMonsterWithType:randomType];
    [randomMonster appear];
}

@end
