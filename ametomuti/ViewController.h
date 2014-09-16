//
//  ViewController.h
//  ametomuti
//
//  Created by ビザンコムマック０４ on 2014/09/12.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)button1:(UIButton *)sender;
- (IBAction)button2:(UIButton *)sender;
- (IBAction)creabutton1:(UIButton *)sender;
- (IBAction)creabutton2:(UIButton *)sender;
- (IBAction)stopbutton:(UIButton *)sender;
- (IBAction)value:(UISlider *)sender;
- (IBAction)creabutton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *countdownlabel;
@property (weak, nonatomic) IBOutlet UILabel *sliderlabel;



@end
