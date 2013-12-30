//
//  GAGift.m
//  Shopping List
//
//  Created by Teddy Wyly on 12/22/13.
//  Copyright (c) 2013 Teddy Wyly. All rights reserved.
//

#import "GAGift.h"

@implementation GAGift

- (id)initWithName:(NSString *)giftName
{
    self = [self init];
    if (self) {
        _name = giftName;
    }
    return self;
}


@end
