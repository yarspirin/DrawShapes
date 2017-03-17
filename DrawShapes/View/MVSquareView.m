//
//  MVSquareView.m
//  DrawShapes
//
//  Created by whoami on 3/16/17.
//  Copyright © 2017 Mountain Viewer. All rights reserved.
//

#import "MVSquareView.h"

@implementation MVSquareView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect: (CGRect)rect {
  
  int maxSideLength = rect.size.width - 1;
  int sideLength = arc4random() % maxSideLength + 1;
  
  CGPoint center = CGPointMake(rect.size.width / 2, rect.size.height / 2);
  
  CGRect rectToDraw = CGRectMake(center.x - sideLength / 2, center.y - sideLength / 2,
                                 sideLength, sideLength);
  
  UIBezierPath *path = [UIBezierPath bezierPathWithRect: rectToDraw];
  
  if ([super colored]) {
    
    // Configuring colors
    CGFloat red = (arc4random() % 255) * 1.0 / 255;
    CGFloat green = (arc4random() % 255) * 1.0 / 255;
    CGFloat blue = (arc4random() % 255)  * 1.0 / 255;
    
    CGFloat alpha = (arc4random() % 255) * 1.0 / 255;
    
    [[UIColor colorWithRed: red green: green blue: blue alpha: alpha] setStroke];
  } else {
    [[UIColor blackColor] setStroke];
  }
  
  [path stroke];
}


@end
