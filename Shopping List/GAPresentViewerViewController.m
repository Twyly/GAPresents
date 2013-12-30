//
//  GAPresentViewerViewController.m
//  Shopping List
//
//  Created by Teddy Wyly on 12/22/13.
//  Copyright (c) 2013 Teddy Wyly. All rights reserved.
//

#import "GAPresentViewerViewController.h"
#import "GASeeMyPresentViewController.h"

@interface GAPresentViewerViewController ()

@end

@implementation GAPresentViewerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[GASeeMyPresentViewController class]]) {
        GASeeMyPresentViewController *targetVC = segue.destinationViewController;
        targetVC.image = self.image;
    }
}

@end
