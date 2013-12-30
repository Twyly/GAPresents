//
//  GAAddGiftViewController.m
//  Shopping List
//
//  Created by Teddy Wyly on 12/22/13.
//  Copyright (c) 2013 Teddy Wyly. All rights reserved.
//

#import "GAAddGiftViewController.h"

@interface GAAddGiftViewController ()



@end

@implementation GAAddGiftViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


// Called when we move the slider
- (IBAction)sliderValueDidChange:(UISlider *)sender
{
    // Change the background color according to our slider's value
    NSLog(@"The Value of my slider is %f", sender.value);
    UIColor *sliderColor = [UIColor colorWithRed:0.0 green:0.0 blue:sender.value alpha:1.0];
    self.view.backgroundColor = sliderColor;
    
    // Stop displaying the keyboard
    [self.nameTextField resignFirstResponder];
    [self.recipientTextField resignFirstResponder];
    [self.priceTextField resignFirstResponder];
    
}

@end
