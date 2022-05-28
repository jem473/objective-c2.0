//
//  Fraction.m
//  
//
//  Created by Jonathan Monreal on 5/27/22.
//  Copyright 2022 __MyCompanyName__. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

+(int) gcd: (int) a: (int) b {
	int temp;
	
	while (b != 0) {
		temp = a % b;
		a = b;
		b = temp;
	}
	
	return a;
}

+(int) lcm: (int) a: (int) b {
	return abs(a * b) / [Fraction gcd: a : b];
}

@synthesize numerator, denominator;

-(void) print {
	NSLog(@"%i/%i", numerator, denominator);
}

// Exercise 2

-(void) print: (BOOL) reduceFirst {
	if (reduceFirst) {
		Fraction *temp = [[Fraction alloc] init];
		[temp setTo: numerator over: denominator];
		[temp reduce];
		[temp print];
		[temp release];
	} else {
		[self print];
	}
}

-(void) setTo: (int) n over: (int) d {
	numerator = n;
	denominator = d;
}

-(double) convertToNum {
	return (double) numerator / denominator;
}

-(Fraction *) add: (Fraction *) f {
	// a/b + c/d = ((a*d) + (b*c)) / (b * d)
	Fraction *new = [[Fraction alloc] init];
	[new setTo: numerator * f.denominator + denominator * f.numerator
		  over: denominator * f.denominator];
	
	[new reduce];
	return new;
}

-(void) reduce {
	int gcd = [Fraction gcd: numerator : denominator];
	
	numerator /= gcd;
	denominator /= gcd;
}

// Exercise 1

-(Fraction *) subtract: (Fraction *) f {
	int lcm = [Fraction lcm: denominator : f.denominator];
	
	Fraction *new = [[Fraction alloc] init];
	
	[new setTo: numerator * (lcm / denominator) - f.numerator * (lcm / f.denominator)
		  over: lcm];
	
	[new reduce];
	return new;
}

-(Fraction *) multiply: (Fraction *) f {
	Fraction *new = [[Fraction alloc] init];
	
	[new setTo: numerator * f.numerator
		  over: denominator * f.denominator];
	
	[new reduce];
	return new;
}

-(Fraction *) divide: (Fraction *) f {
	Fraction* new = [[Fraction alloc] init];
	
	[new setTo: numerator * f.denominator
		  over: denominator * f.numerator];
	
	[new reduce];
	return new;
}

@end
