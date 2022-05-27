//
//  Fraction.m
//  
//
//  Created by Jonathan Monreal on 5/27/22.
//  Copyright 2022 __MyCompanyName__. All rights reserved.
//

#import "Fraction.h"


@implementation Fraction

@synthesize numerator, denominator;

-(void) print {
	NSLog(@"%i/%i", numerator, denominator);
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
	int u = numerator;
	int v = denominator;
	int temp;
	
	while (v != 0) {
		temp = u % v;
		u = v;
		v = temp;
	}
	
	numerator /= u;
	denominator /= u;
}

@end
