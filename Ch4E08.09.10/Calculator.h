//
//  Calculator.h
//  Ch4E08.09.10
//
//  Created by Jonathan Monreal on 5/23/22.
//  Copyright 2022 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject {
	double accumulator;
	double memory; // exercise 10
}

// accumulator methods
-(void)		setAccumulator: (double) value;
-(void)		clear;
-(double)	accumulator;

// arithmetic methods
-(double) add: (double) value;
-(double) subtract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;
// exercise 9
-(double) changeSign;
-(double) reciprocal;
-(double) xSquared;

// memory
// exercise 10
-(double) memoryClear;
-(double) memoryStore;
-(double) memoryRecall;
-(double) memoryAdd;
-(double) memorySubtract;

@end
