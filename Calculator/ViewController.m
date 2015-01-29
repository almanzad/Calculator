//
//  ViewController.m
//  Calculator
//
//  Created by blah on 1/28/15.
//  Copyright (c) 2015 Dan - UCD. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize Display;

- (IBAction)digitPressed:(UIButton *)sender
{
    NSString *digit = [sender currentTitle];
    self.Display.text = [self.Display.text stringByAppendingString:digit];
}

@end
