//
//  MVCircleView.m
//  DrawShapes
//
//  Created by whoami on 3/16/17.
//  Copyright © 2017 Mountain Viewer. All rights reserved.
//

#import "MVCircleView.h"

@implementation MVCircleView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
  CGPoint center;
  
  center.x = rect.size.width / 2;
  center.y = rect.size.height / 2;
  
  int radius = rect.size.width / 2;
  
  UIBezierPath *path = [[UIBezierPath alloc] init];
  
  [path addArcWithCenter: center
                  radius: radius
              startAngle: 0.0
                endAngle: 2 * M_PI
               clockwise: YES];
  
  if ([super colored]) {
    
    // Configuring colors
    CGFloat red = (arc4random() % 255) * 1.0 / 255;
    CGFloat green = (arc4random() % 255) * 1.0 / 255;
    CGFloat blue = (arc4random() % 255) * 1.0 / 255;
    
    CGFloat alpha = (arc4random() % 255) * 1.0 / 255;
    
    [[UIColor colorWithRed: red green: green blue: blue alpha: alpha] setStroke];
  } else {
    [[UIColor blackColor] setStroke];
  }
  
  [path stroke];
}


@end
