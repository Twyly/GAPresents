//
//  GAGiftsTableViewController.h
//  Shopping List
//
//  Created by Teddy Wyly on 12/22/13.
//  Copyright (c) 2013 Teddy Wyly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GAGiftsTableViewController : UITableViewController

- (IBAction)unwindFromAddGiftViewControllerWithSegue:(UIStoryboardSegue *)segue;

- (IBAction)unwindWithGiftFromAddGiftViewControllerWithSegue:(UIStoryboardSegue *)segue;


@end
