//
//  MVMainViewController.m
//  DrawShapes
//
//  Created by whoami on 3/16/17.
//  Copyright © 2017 Mountain Viewer. All rights reserved.
//

#import "MVMainViewController.h"
#import "MVImageViewController.h"

@interface MVMainViewController ()

@property (weak, nonatomic) IBOutlet UITextField *pointsNumber;
@property (weak, nonatomic) IBOutlet UITextField *squaresNumber;
@property (weak, nonatomic) IBOutlet UITextField *circlesNumber;

@property (weak, nonatomic) IBOutlet UIButton *drawButton;

@property (weak, nonatomic) IBOutlet UISwitch *shapeSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *backgroundSwitch;

@end

@implementation MVMainViewController

#pragma mark - Delegate methods -

- (BOOL) textFieldShouldReturn: (UITextField *) textField {
  [textField resignFirstResponder];
  return YES;
}

#pragma mark - Configure methods -

- (void) configureDelegate {
  self.pointsNumber.delegate = self;
  self.squaresNumber.delegate = self;
  self.circlesNumber.delegate = self;
}

- (void) configureDrawButton {
  self.drawButton.layer.cornerRadius = 5.0;
  self.drawButton.layer.borderWidth = 2.0;
  self.drawButton.layer.borderColor = [[UIColor whiteColor] CGColor];
}

- (void) configureTextFields {
  self.pointsNumber.layer.cornerRadius = 3.0;
  self.squaresNumber.layer.cornerRadius = 3.0;
  self.circlesNumber.layer.cornerRadius = 3.0;
}

#pragma mark - State methods -

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  
  [self configureDrawButton];
  [self configureTextFields];
  [self configureDelegate];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  // Get the new view controller using [segue destinationViewController].
  // Pass the selected object to the new view controller.
  
  MVImageViewController *imageVC = [segue destinationViewController];
  
  NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
  
  formatter.numberStyle = NSNumberFormatterDecimalStyle;
  
  imageVC.points = [formatter numberFromString: _pointsNumber.text];
  imageVC.squares = [formatter numberFromString: _squaresNumber.text];
  imageVC.circles = [formatter numberFromString: _circlesNumber.text];
  
  imageVC.shapeColored = [_shapeSwitch isOn];
  imageVC.backgroundColored = [_backgroundSwitch isOn];
}


@end
