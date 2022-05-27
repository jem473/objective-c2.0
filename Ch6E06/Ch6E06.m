#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
	int toSpell;
    NSLog(@"Enter a number to spell out digits:");
	scanf("%i", &toSpell);
	NSString *spellString = [NSString stringWithFormat: @"%i", toSpell];
	
	for (int i = 0; i < [spellString length]; i++) {
		switch ([spellString characterAtIndex: i]) {
			case '1':
				NSLog(@"One");
				break;
			case '2':
				NSLog(@"Two");
				break;
			case '3':
				NSLog(@"Three");
				break;
			case '4':
				NSLog(@"Four");
				break;
			case '5':
				NSLog(@"Five");
				break;
			case '6':
				NSLog(@"Six");
				break;
			case '7':
				NSLog(@"Seven");
				break;
			case '8':
				NSLog(@"Eight");
				break;
			case '9':
				NSLog(@"Nine");
				break;
			case '0':
				NSLog(@"Zero");
				break;
		}
	}
    [pool drain];
    return 0;
}
