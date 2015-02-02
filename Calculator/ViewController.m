//
//  ViewController.m
//  Calculator
//
//  Created by blah on 1/28/15.
//  Copyright (c) 2015 Dan - UCD. All rights reserved.
//

#import "ViewController.h"
#import "CalculatorBrain.h"

@interface ViewController()
@property (nonatomic) BOOL UserIsInTheMiddleOfEnteringANumber;
@property (nonatomic, strong) CalculatorBrain *brain;
@end

@implementation ViewController

@synthesize Display;
@synthesize UserIsInTheMiddleOfEnteringANumber;
@synthesize brain = _brain;

-(CalculatorBrain*)brain
{
    if(!_brain)_brain = [[CalculatorBrain alloc]init];
    return _brain;
}

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

- (IBAction)enterPressed
{
    [self.brain pushOperand:[self.Display.text doubleValue]];
    self.UserIsInTheMiddleOfEnteringANumber = NO;
}

- (IBAction)operationPressed:(UIButton *)sender
{
    if (self.UserIsInTheMiddleOfEnteringANumber)    {
        [self enterPressed];
    }
    NSString *operation = [sender currentTitle];
    double result = [self.brain performOperation:operation];
    self.Display.text = [NSString stringWithFormat:@"%g", result];
}

@end
