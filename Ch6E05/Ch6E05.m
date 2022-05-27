#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
	int toReverse;
	NSMutableString *reversed = [[NSMutableString alloc] init];
    NSLog(@"Enter a number to reverse:");
	scanf("%i", &toReverse);
	for (int reversing = abs(toReverse); reversing > 0; reversing /= 10) {
		[reversed appendString: [NSString stringWithFormat: @"%i", reversing % 10]];
	}
	if (toReverse < 0)
		[reversed appendString: @"-"];
	NSLog(reversed);
    [pool drain];
    return 0;
}
