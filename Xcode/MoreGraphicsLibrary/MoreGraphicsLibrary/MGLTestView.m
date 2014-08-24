//
//  MGLTestView.m
//  MoreGraphicsLibrary
//
//  Created by Ricardo on 8/24/14.
//  Copyright (c) 2014 Idean. All rights reserved.
//

#import "MGLTestView.h"
#import "MGLRect.h"
#import "MGLColor.h"

@implementation MGLTestView

- (void)shadeRect:(CGRect)rect
{
    [self testRectWithRect:rect];
}

- (void)testRectWithRect:(CGRect)rect
{
    MGLRect* mglRect = [[MGLRect alloc] initWithRect:rect inFrame:self.frame];
    mglRect.fillColor = [MGLColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
    [mglRect fillRect];
    mglRect.strokeColor = [MGLColor colorWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];
    mglRect.strokeWidth = 16.0;
    [mglRect strokeRect];
    mglRect.cornerColor = [MGLColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];
    mglRect.cornerSize = 32.0;
    [mglRect cornerRect];
}

@end