//
//  ViewController.m
//  ATTapCounter
//
//  Created by Aashish Tamsya on 25/07/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.resetButton.tintColor = [UIColor redColor];
    self.tapButton.tintColor = [UIColor blackColor];
    self.resetButton.backgroundColor = [UIColor yellowColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString *)increaseCounter:(NSString *)text {
    
    int value = text.intValue;
    value = value + 1;
    NSString *incrementValue = [NSString stringWithFormat:@"%d",value];
    return incrementValue;
}


- (IBAction)resetAction:(id)sender {
    self.countLabel.text = @"0";
}

- (IBAction)tapAction:(id)sender {
    NSString *newValue = [self increaseCounter:self.countLabel.text];
    self.countLabel.text = newValue;
}
@end
