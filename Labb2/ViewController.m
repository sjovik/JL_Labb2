//
//  ViewController.m
//  Labb2
//
//  Created by Johannes on 2015-01-26.
//  Copyright (c) 2015 Johannes. All rights reserved.
//

#import "ViewController.h"
#import "JLIStoryGenerator.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *storyText;
@property (weak, nonatomic) IBOutlet UISegmentedControl *storyModeSwitch;
@property (weak, nonatomic) IBOutlet UIStepper *storyLengthStepper;
@property (weak, nonatomic) IBOutlet UISwitch *bloodOnSwitch;

@property (nonatomic) JLIStoryGenerator *storyGenerator;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.storyGenerator = [[JLIStoryGenerator alloc] init];

}

- (IBAction)newStoryButtonClicked:(id)sender {
    
    BOOL isFantasy = [self.storyModeSwitch selectedSegmentIndex] == 1;
    
    self.storyText.text = [self.storyGenerator generateStoryWithGenre:isFantasy ofLength:self.storyLengthStepper.value  isBloody:self.bloodOnSwitch.isOn];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
