#import "Fraction.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	Fraction *a = [[Fraction alloc] init];
	Fraction *b = [[Fraction alloc] init];
	[a setTo: 4 over: 2];
	[b setTo: 5 over: 2];
	
	[a print];
	[b print];
	
	[a release];
	[b release];
    [pool drain];
    return 0;
}
