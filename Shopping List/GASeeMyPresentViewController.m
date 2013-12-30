//
//  GASeeMyPresentViewController.m
//  Shopping List
//
//  Created by Teddy Wyly on 12/22/13.
//  Copyright (c) 2013 Teddy Wyly. All rights reserved.
//

#import "GASeeMyPresentViewController.h"

@interface GASeeMyPresentViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation GASeeMyPresentViewController

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
    
    // Update UI from Model
    self.imageView.image = self.image;
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
