//
//  MVPointView.m
//  DrawShapes
//
//  Created by whoami on 3/16/17.
//  Copyright © 2017 Mountain Viewer. All rights reserved.
//

#import "MVPointView.h"

@implementation MVPointView

- (instancetype) initWithFrame:(CGRect)frame {
  self = [super initWithFrame: frame];
  
  if (self) {
    self.backgroundColor = [UIColor clearColor];
  }
  
  return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect:(CGRect)rect {
  UIBezierPath *path = [UIBezierPath bezierPathWithRect: rect];
  
  if ([super colored]) {
    
    // Configuring colors
    CGFloat red = (arc4random() % 255) * 1.0 / 255;
    CGFloat green = (arc4random() % 255) * 1.0 / 255;
    CGFloat blue = (arc4random() % 255) * 1.0 / 255;
    
    CGFloat alpha = (arc4random() % 255) * 1.0 / 255;
    
    [[UIColor colorWithRed: red green: green blue: blue alpha: alpha] setFill];
  } else {
    [[UIColor blackColor] setFill];
  }
  
  [path fill];
}

@end
