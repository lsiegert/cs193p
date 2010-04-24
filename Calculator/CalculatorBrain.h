//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Lauren Siegert on 20/4/10.
//  Copyright 2010 Northeastern University. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CalculatorBrain : NSObject {
	double operand;
	double memory;
	double waitingOperand;
	NSString *waitingOperation;
}

- (void)setOperand:(double)aDouble;
- (double)performOperation:(NSString *)operation;
@end
