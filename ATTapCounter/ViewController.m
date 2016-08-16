//
//  ViewController.m
//  ATTapCounter
//
//  Created by Felix ITs 01 on 25/07/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    myName = [[NSString alloc]init];
    
    myName = @"aashish tamsya";
    
    
    
    [self changeBackground];
    
    
    
    label = [[UILabel alloc]init];
    
    [label setFrame:CGRectMake(100, 100, 200, 50)];
    
    [label setText:myName];
    [label setTextColor:[UIColor whiteColor]];
    
    [label setBackgroundColor:[UIColor redColor]];
    
    [label setTextAlignment:NSTextAlignmentCenter];
    
    [self.view addSubview:label];
    
    
    UIButton *changeNameButton = [[UIButton alloc]initWithFrame:CGRectMake(100, 160, 200, 50)];
    
    [changeNameButton setBackgroundColor:[UIColor blueColor]];
    
    [changeNameButton setTitle:@"Uppercase" forState:UIControlStateNormal];
    
    [self.view addSubview:changeNameButton];
    
    [changeNameButton addTarget:self action:@selector(changeNameMethod:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)changeNameMethod:(id)sender {
    
    UIButton *button = sender;  //typecasting of sender to UIButton instance
    
    if ([button.titleLabel.text isEqualToString:@"Uppercase"]) {
        //change name to uppercase
        
        label.text = [label.text uppercaseString];
        
        [button setTitle:@"Lowercase" forState:UIControlStateNormal];
        
    }
    else if ([button.titleLabel.text isEqualToString:@"Lowercase"]) {
        
        //change name to lowercase
        
        label.text = [label.text lowercaseString];
        
        [button setTitle:@"Uppercase" forState:UIControlStateNormal];
    }
    
}

-(void)changeBackground {
    
    UIColor *customColor = [UIColor colorWithRed:100.0/255.0 green:44.0/255.0 blue:128.0/255.0 alpha:1];
    
    
    UIColor *backgroundColor = [UIColor greenColor];
    
    [self.view setBackgroundColor:backgroundColor];
    
    [self.view setBackgroundColor:customColor];
    
    self.view.backgroundColor = [UIColor blackColor];
}

@end
