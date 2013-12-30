//
//  GAGiftsTableViewController.m
//  Shopping List
//
//  Created by Teddy Wyly on 12/22/13.
//  Copyright (c) 2013 Teddy Wyly. All rights reserved.
//

#import "GAGiftsTableViewController.h"
#import "GAGift.h"
#import "GAAddGiftViewController.h"
#import "GAPresentViewerViewController.h"


@interface GAGiftsTableViewController ()

@property (strong, nonatomic) NSMutableArray *gifts; // Of GAGift


@end

@implementation GAGiftsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray *giftStrings = @[@"Pony", @"Spaceship", @"Legos", @"Easy Bake"];
    
    self.gifts = [[NSMutableArray alloc] init];
    
    // Create one GAGift for each gitString in the giftStrings array instantiated above
    for (NSString *stringName in giftStrings) {
        GAGift *gift = [[GAGift alloc] initWithName:stringName];
        // Form an image name in the form of present.jpeg.  For example: Ponly.jpeg
        NSString *imageName = [[NSString alloc] initWithFormat:@"%@.jpeg", stringName];
        // Find the image from your Files Directory with the corresponding name
        UIImage *image = [UIImage imageNamed:imageName];
        // Set your Gift's image to this new image
        gift.image = image;
        // Add the gift to our container
        [self.gifts addObject:gift];
    }

}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // returns the number of gifts we have in our array
    return [self.gifts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Gift Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    GAGift *gift = self.gifts[indexPath.row];
    cell.textLabel.text = gift.name;

    // Apply a gradient to our cells by parameterizing our background color by our indexPath
    float redNumber = (float)indexPath.row / [self.gifts count];
    UIColor *myColor = [UIColor colorWithRed:redNumber green:1.0 blue:1.0 alpha:1.0];
    cell.backgroundColor = myColor;
    
    return cell;
}

# pragma mark - Navigation


// Unwind segues are called when transitioning back to a viewcontroller
- (IBAction)unwindFromAddGiftViewControllerWithSegue:(UIStoryboardSegue *)segue
{
    
}

- (IBAction)unwindWithGiftFromAddGiftViewControllerWithSegue:(UIStoryboardSegue *)segue
{
    NSLog(@"Gift Added!");
    GAAddGiftViewController *myViewController = segue.sourceViewController;
    NSString *nameText = myViewController.nameTextField.text;
    NSString *recipientText = myViewController.recipientTextField.text;
    float price = [myViewController.priceTextField.text floatValue];
    
    GAGift *newGift = [[GAGift alloc] initWithName:nameText];
    newGift.recipient = recipientText;
    newGift.price = price;
    
    [self.gifts addObject:newGift];
    [self.tableView reloadData];
    
    
}

// Get called right before transitioning to a new viewcontroller
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[GAPresentViewerViewController class]]) {
        GAPresentViewerViewController *targetVC = segue.destinationViewController;

        // Get the selected row's gift
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        GAGift *gift = self.gifts[indexPath.row];
        
        // Pass the gift's image forward
        targetVC.image = gift.image;
    }
}




@end
