#import <Foundation/Foundation.h>
#import "Calculator.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
	Calculator *calc = [[Calculator alloc] init];
	NSLog(@"Operation: Accumulator Value");
	NSLog(@"Add 10: %f", [calc add: 10.]);
	NSLog(@"Subtract 5: %f", [calc subtract: 5.]);
	NSLog(@"Set memory: %f", [calc memoryStore]);
	NSLog(@"Multiply 10: %f", [calc multiply: 10.]);
	NSLog(@"Divide 2: %f", [calc divide: 2.]);
	NSLog(@"Change sign: %f", [calc changeSign]);
	NSLog(@"Reciprocal: %f", [calc reciprocal]);
	NSLog(@"Memory add: %f", [calc memoryAdd]);
	NSLog(@"Memory recall: %f", [calc memoryRecall]);
	NSLog(@"Memory clear: %f", [calc memoryClear]);
	NSLog(@"Memory subtract: %f", [calc memorySubtract]);
	NSLog(@"Memory recall: %f", [calc memoryRecall]);
	[calc release];
    [pool drain];
    return 0;
}
