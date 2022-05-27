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

-(double) convertToNum {
	return (double) numerator / denominator;
}

-(Fraction *) add: (Fraction *) f {
	// a/b + c/d = ((a*d) + (b*c)) / (b * d)
	numerator = numerator * f.denominator + denominator * f.numerator;
	denominator = denominator * f.denominator;
	
	[self reduce];
}

-(void) reduce {
	int u = nunerator;
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
