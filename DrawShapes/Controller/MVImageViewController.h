//
//  MVImageViewController.h
//  DrawShapes
//
//  Created by whoami on 3/16/17.
//  Copyright © 2017 Mountain Viewer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MVImageViewController : UIViewController

@property (nonatomic, copy) NSNumber *points;
@property (nonatomic, copy) NSNumber *squares;
@property (nonatomic, copy) NSNumber *circles;

@property (nonatomic) BOOL shapeColored;
@property (nonatomic) BOOL backgroundColored;

@end
