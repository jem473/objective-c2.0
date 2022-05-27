#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int		p, d;
	BOOL	isPrime;
	
	for (p = 2; p <= 50; p += p > 2 ? 2 : 1) {
		isPrime = YES;
		
		for (d = 3; d <= p / 2 && isPrime; d += 2) {
			if (p % d == 0)
				isPrime = NO;
		}
		
		if (isPrime == YES)
			NSLog(@"%i", p);
	}
    [pool drain];
    return 0;
}
