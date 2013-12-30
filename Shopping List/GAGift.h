//
//  GAGift.h
//  Shopping List
//
//  Created by Teddy Wyly on 12/22/13.
//  Copyright (c) 2013 Teddy Wyly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GAGift : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) UIImage *image;
@property (nonatomic) float price;
@property (strong, nonatomic) NSString *recipient;

- (id)initWithName:(NSString *)giftName;

@end
