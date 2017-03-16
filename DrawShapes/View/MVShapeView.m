//
//  MVShapeView.m
//  DrawShapes
//
//  Created by whoami on 3/16/17.
//  Copyright © 2017 Mountain Viewer. All rights reserved.
//

#import "MVShapeView.h"

@implementation MVShapeView

- (instancetype) initWithFrame: (CGRect)frame {
  self = [super initWithFrame: frame];
  
  if (self) {
    self.backgroundColor = [UIColor clearColor];
  }
  
  return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
