//
//  ViewController.m
//  Calculator
//
//  Created by blah on 1/28/15.
//  Copyright (c) 2015 Dan - UCD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController()
@property (nonatomic) BOOL UserIsInTheMiddleOfEnteringANumber;
@end

@implementation ViewController

@synthesize Display;

- (IBAction)digitPressed:(UIButton *)sender
{
    NSString *digit = [sender currentTitle];
    if (self.UserIsInTheMiddleOfEnteringANumber)    {
    self.Display.text = [self.Display.text stringByAppendingString:digit];
    } else {
        self.Display.text = digit;
        self.UserIsInTheMiddleOfEnteringANumber = YES;
    }
}

@end
