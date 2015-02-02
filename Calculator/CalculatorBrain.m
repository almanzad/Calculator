//
//  CalculatorBrain.m
//  Calculator
//
//  Created by blah on 2/2/15.
//  Copyright (c) 2015 Dan - UCD. All rights reserved.
//

#import "CalculatorBrain.h"

@interface CalculatorBrain()
@property (nonatomic, strong) NSMutableArray *operandStack;
@end

@implementation CalculatorBrain

@synthesize operandStack;

-(NSMutableArray *)operandStack
{
    if (!operandStack)
    {
        operandStack = [[NSMutableArray alloc]init];
    }
    return operandStack;
}

-(void)setOperandStack:(NSMutableArray *)anArray
{
    operandStack = anArray;
}

-(void)pushOperand:(double)operand
{
    NSNumber *operandObject = [NSNumber numberWithDouble:operand];
    [self.operandStack addObject:operandObject];
}

-(double)performOperation:(NSString *)operation
{
    double result = 0;
    
    return result;
}

@end
