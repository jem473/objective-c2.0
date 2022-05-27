#import "XYPoint.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    XYPoint *test = [[XYPoint alloc] init];
	[test setX: 5];
	[test setY: 10];
	NSLog(@"x is %i and y is %i", [test x], [test y]);
	[test release];
    [pool drain];
    return 0;
}