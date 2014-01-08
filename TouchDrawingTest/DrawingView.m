//
//  DrawingView.m
//  TouchDrawingTest
//
//  Created by Jinho Son on 2014. 1. 7..
//  Copyright (c) 2014년 STD1. All rights reserved.
//

#import "DrawingView.h"

@interface DrawingView()
{
    UIBezierPath *myPath;
}
@end

@implementation DrawingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        myPath = [[UIBezierPath alloc] init];
        myPath.lineWidth = 10;
        
        [[UIColor blackColor] setStroke];
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    // Drawing code
    [myPath stroke];
}

#pragma makr - Touch Methods
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *myTouch = [[touches allObjects] objectAtIndex:0];
    CGPoint point = [myTouch locationInView:self];
    [myPath moveToPoint:point];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *myTouch = [[touches allObjects] objectAtIndex:0];
    CGPoint point = [myTouch locationInView:self];
    [myPath addLineToPoint:point];
    [self setNeedsDisplay];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{

}


@end
