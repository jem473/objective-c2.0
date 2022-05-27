//
//  XYPoint.h
//  Ch2E7
//
//  Created by Jonathan Monreal on 5/23/22.
//  Copyright 2022 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface XYPoint : NSObject
{
	int x;
	int y;
}

-(int) x;
-(int) y;
-(void) setX: (int) n;
-(void) setY: (int) n;

@end
