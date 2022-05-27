//
//  Rectangle.m
//  Ch4E07
//
//  Created by Jonathan Monreal on 5/23/22.
//  Copyright 2022 __MyCompanyName__. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

-(void) setWidth: (int) w {
	width = w;
}

-(void) setHeight: (int) h {
	height = h;
}

-(int) width {
	return width;
}

-(int) height {
	return height;
}

-(int) area {
	return width * height;
}

-(int) perimeter {
	return 2 * width + 2 * height;
}

@end
