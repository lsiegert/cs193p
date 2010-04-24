//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Lauren Siegert on 20/4/10.
//  Copyright 2010 Northeastern University. All rights reserved.
//

#import "CalculatorBrain.h"


@implementation CalculatorBrain
- (void)setOperand:(double)aDouble{
	operand = aDouble;
}

- (void)performWaitingOperation{
	if ([@"+" isEqual:waitingOperation]){
		operand = waitingOperand + operand;
	}
	else if ([@"*" isEqual:waitingOperation]){
		operand = waitingOperand * operand;
	}
	else if ([@"-" isEqual:waitingOperation]){
		operand = waitingOperand - operand;
	}
	else if ([@"/" isEqual:waitingOperation]){
		if (operand) {
			operand = waitingOperand / operand;
		}
	}
}

- (double)performOperation:(NSString *)operation{
	if ([@"sqrt" isEqual:operation]){
		operand = sqrt(operand);
	}
	else if ([@"sin" isEqual:operation]){
		operand =  sin(operand);
	}
	else if ([@"cos" isEqual:operation]){
		operand =  cos(operand);
	}
	else if ([@"1/x" isEqual:operation]){
		operand = 1/operand;
	}
	else if ([@"+/-" isEqual:operation]){
		operand = - operand;
	}
	else if ([@"store" isEqual:operation]){
		memory = operand;
	}
	else if ([@"recall" isEqual:operation]){
		operand = memory;
	}
	else if ([@"mem+" isEqual:operation]){
		memory = memory + operand;
	}
	else if ([@"c" isEqual:operation]){
		memory = 0;
		operand = 0;
		waitingOperand = 0;
		waitingOperation = NULL;
	}
	else {
		[self performWaitingOperation];
		waitingOperation = operation;
		waitingOperand = operand;
	}
	return operand;
}
@end
