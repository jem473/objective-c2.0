//
//  Calculator.m
//  Ch4E08.09.10
//
//  Created by Jonathan Monreal on 5/23/22.
//  Copyright 2022 __MyCompanyName__. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

-(void) setAccumulator: (double) value {
	accumulator = value;
}

-(void) clear {
	accumulator = 0;
}

-(double) accumulator {
	return accumulator;
}

-(double) add: (double) value {
	accumulator += value;
	return accumulator;
}

-(double) subtract: (double) value {
	accumulator -= value;
	return accumulator;
}

-(double) multiply: (double) value {
	accumulator *= value;
	return accumulator;
}

-(double) divide: (double) value {
	@try {
		if (value == 0) {
			NSException *exception = [NSException
			exceptionWithName: @"Divide By Zero"
			reason: @"Attempted division by zero"
			userInfo: nil];
			@throw exception;
		}
		accumulator /= value;
	} @catch (NSException *exception) {
		NSLog(@"Caught %@: %@", [exception name], [exception reason]);
	}
	return accumulator;
}

-(double) changeSign {
	accumulator = -accumulator;
	return accumulator;
}

-(double) reciprocal {
	accumulator = 1. / accumulator;
	return accumulator;
}

-(double) xSquared {
	accumulator *= accumulator;
	return accumulator;
}

-(double) memoryClear {
	memory = 0;
	return accumulator;
}

-(double) memoryStore {
	memory = accumulator;
	return accumulator;
}

-(double) memoryRecall {
	accumulator = memory;
	return accumulator;
}

-(double) memoryAdd {
	memory += accumulator;
	return accumulator;
}

-(double) memorySubtract {
	memory -= accumulator;
	return accumulator;
}

@end
