//
//  CSViewController.m
//  CS252HWTemplate
//
//  Created by Henry T Kirk on 3/8/14.
//  Copyright (c) 2014 Henry T Kirk. All rights reserved.
//

#import "CSViewController.h"

@interface CSViewController ()

/*
 * The label that displays title of homework on view
 */
@property (nonatomic, weak) IBOutlet UILabel *titleLabel;

/*
 * The label that displays results on view
 */
@property (nonatomic, weak) IBOutlet UILabel *resultLabel;

/*
 * Function that's defined in assembly
 */
extern int add2(int i, int j);

@end

@implementation CSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Set homework's title
    NSString *titleString = @"Homework 1";
    
    // Set view title
    self.titleLabel.text = titleString;

    // Insert your C Code here and set the output to Log and View.
    int i = 5;
	int j = 10;
	int result;
    
	result = add2(i, j);
    
    // Output result to Log window
	NSLog(@"\n%@\n\nResult: %d", titleString, result);
    
    // Output result to view
    self.resultLabel.text = [NSString stringWithFormat:@"%i", result];
}

@end
