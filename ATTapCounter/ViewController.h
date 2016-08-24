//
//  ViewController.h
//  ATTapCounter
//
//  Created by Aashish Tamsya on 25/07/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSString *myName;
    UILabel *label;
}
@property (weak, nonatomic) IBOutlet UIButton *tapButton;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;
- (IBAction)resetAction:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;

- (IBAction)tapAction:(id)sender;
@end

