//
//  Fraction.h
//  
//
//  Created by Jonathan Monreal on 5/27/22.
//  Copyright 2022 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Fraction : NSObject {
	int numerator;
	int denominator;
}

+(int)			gcd: (int) a: (int) b;
+(int)			lcm: (int) a: (int) b;

@property int numerator, denominator;

-(void)			print;
-(void)			print: (BOOL) reduceFirst; // Exercise 2
-(void)			setTo: (int) n over: (int) d;
-(double)		convertToNum;
-(Fraction *)	add: (Fraction *) f;
-(void)			reduce;

// Exercise 1

-(Fraction *)	subtract: (Fraction *) f;
-(Fraction *)	multiply: (Fraction *) f;
-(Fraction *)	divide: (Fraction *) f;

@end
