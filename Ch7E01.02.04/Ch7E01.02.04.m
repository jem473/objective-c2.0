#import "Fraction.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    Fraction *a = [[Fraction alloc] init];
	Fraction *b = [[Fraction alloc] init];
	Fraction *result;
	[a setTo: 1 over: 2];
	[b setTo: 1 over: 4];
	
	// Subtraction
	result = [a subtract: b];
	[a print];
	NSLog(@"-");
	[b print];
	NSLog(@"=");
	[result print];
	
	NSLog(@"--------------------");
	
	// Addition
	result = [a add: b];
	[a print];
	NSLog(@"+");
	[b print];
	NSLog(@"=");
	[result print];
	
	NSLog(@"--------------------");
	
	// Multiplication
	result = [a multiply: b];
	[a print];
	NSLog(@"*");
	[b print];
	NSLog(@"=");
	[result print];
	
	NSLog(@"--------------------");
	
	// Division
	result = [a divide: b];
	[a print];
	NSLog(@"/");
	[b print];
	NSLog(@"=");
	[result print];
	
	NSLog(@"--------------------");
	
	// Exercise 4
	[a setTo: -1 over: 4];
	[b setTo: -1 over: 2];
	result = [a subtract: b];
	[a print];
	NSLog(@"-");
	[b print];
	NSLog(@"=");
	[result print];
	
	[a release];
	[b release];
	[result release];
    [pool drain];
    return 0;
}
