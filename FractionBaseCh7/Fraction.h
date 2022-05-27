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

@property int numerator, denominator;

-(void)			print;
-(double)		convertToNum;
-(Fraction *)	add: (Fraction *) f;
-(void)			reduce;

@end
