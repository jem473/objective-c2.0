#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    Rectangle *rect = [[Rectangle alloc] init];
	[rect setWidth: 10];
	[rect setHeight: 5];
	NSLog(@"Width: %i", [rect width]);
	NSLog(@"Height: %i", [rect height]);
	NSLog(@"Area: %i", [rect area]);
	NSLog(@"Perimeter: %i", [rect perimeter]);
	[rect release];
    [pool drain];
    return 0;
}
