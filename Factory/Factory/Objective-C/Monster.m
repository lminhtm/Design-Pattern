//
//  Monster.m
//  Factory
//
//  Created by LMinh on 8/9/18.
//  Copyright © 2018 LMinh. All rights reserved.
//

#import "Monster.h"

@implementation Monster

- (void)appear {
    // For subclass
}

@end


@implementation Lion

- (void)appear {
    printf("A lion has appeared!");
}

@end


@implementation Dragon

- (void)appear {
    printf("A dragon has appeared!");
}

@end


@implementation Wolf

- (void)appear {
    printf("A wolf has appeared!");
}

@end
