//
//  MVImageViewController.m
//  DrawShapes
//
//  Created by whoami on 3/16/17.
//  Copyright © 2017 Mountain Viewer. All rights reserved.
//

#import "MVImageViewController.h"

#import "MVPointView.h"
#import "MVCircleView.h"
#import "MVSquareView.h"

@interface MVImageViewController ()

@end

@implementation MVImageViewController

#pragma mark - Draw methods -

- (void) configureView {
  if (self.backgroundColored) {
    // Configuring colors
    CGFloat red = (arc4random() % 255) * 1.0 / 255;
    CGFloat green = (arc4random() % 255) * 1.0 / 255;
    CGFloat blue = (arc4random() % 255) * 1.0 / 255;
    
    self.view.backgroundColor = [UIColor colorWithRed: red green: green blue: blue alpha: 1.0];
  } else {
    self.view.backgroundColor = [UIColor blackColor];
  }
}

- (void) drawPoints {
  for (int i = 0; i < [_points intValue]; ++i) {
    CGPoint point = [self generatePointInsideView];
    int pointSize = [self generatePointSize];
    
    CGRect rect = CGRectMake(point.x, point.y, pointSize, pointSize);
    
    MVPointView *pointView = [[MVPointView alloc] initWithFrame: rect];
    [pointView setColored: _shapeColored];
    
    [self.view addSubview: pointView];
  }
}

- (void) drawCircles {
  for (int i = 0; i < [_circles intValue]; ++i) {
    CGPoint center = [self generatePointInsideView];
    int radius = [self generateRadius];
    
    CGRect rect = CGRectMake(center.x - radius, center.y - radius, 2 * radius, 2 * radius);
    
    MVCircleView *circleView = [[MVCircleView alloc] initWithFrame: rect];
    [circleView setColored: _shapeColored];
    
    [self.view addSubview: circleView];
  }
}

- (void) drawSquares {
  for (int i = 0; i < [_squares intValue]; ++i) {
    CGPoint upperLeft = [self generatePointInsideView];
    int sideLength = [self generateRadius];
    
    CGRect rect = CGRectMake(upperLeft.x, upperLeft.y, sideLength, sideLength);
    
    MVSquareView *squareView = [[MVSquareView alloc] initWithFrame: rect];
    [squareView setColored: _shapeColored];
    
    [self.view addSubview: squareView];
  }
}

#pragma mark - Generate methods -

- (int) generatePointSize {
  int maxSize = 5;
  return arc4random() % maxSize + 1;
}

- (CGPoint) generatePointInsideView {
  int width = self.view.bounds.size.width;
  int height = self.view.bounds.size.height;
  
  int horizontal = arc4random() % width;
  int vertical = arc4random() % height;
  
  return CGPointMake(horizontal, vertical);
}

- (int) generateRadius {
  int width = self.view.bounds.size.width;
  int height = self.view.bounds.size.height;
  
  int radius = MIN(width, height);
  
  return (int)sqrt(radius);
}

#pragma mark - State methods -

- (void)viewDidLoad {
  [super viewDidLoad];
  
  [self drawPoints];
  [self drawCircles];
  [self drawSquares];
  [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation
/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
