#import "Calculator.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    Calculator *calc = [[Calculator alloc] init];
	[calc setAccumulator: 1];
	NSLog(@"%g", [calc divide: 0.]);
	[calc release];
    [pool drain];
    return 0;
}
