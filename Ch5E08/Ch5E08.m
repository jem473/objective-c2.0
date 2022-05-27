#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
	int sum = 0;
	int n;
    NSLog(@"Please enter a number to sum the digits...");
	scanf("%i", &n);
	if (n < 0)
		n = -n;
	while (n > 0) {
		sum += n % 10;
		n /= 10;
	}
	NSLog(@"The sum of the digits is %i.", sum);
    [pool drain];
    return 0;
}
