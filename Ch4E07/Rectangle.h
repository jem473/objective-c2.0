//
//  Rectangle.h
//  Ch4E07
//
//  Created by Jonathan Monreal on 5/23/22.
//  Copyright 2022 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Rectangle : NSObject {
	int width;
	int height;
}

-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;

@end
