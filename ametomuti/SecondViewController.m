//
//  SecondViewController.m
//  ametomuti
//
//  Created by kotepe on H26/09/16.
//  Copyright (c) 平成26年 kotepe. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()



@end

@implementation SecondViewController
{
    
    //int  seikou;
    //int  shippai;
    
    
    
}
//int seikou = 1;
//int shippai = 0;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //_successImage.image= [UIImage imageNamed:@"taihen_youkudekimashita@2x.peg"];
    /*
    if (>= seikou)
    {_successImage.image= [UIImage imageNamed:@"taihen_youkudekimashita@2x.peg"];
        
    }
    else
    {
        NSLog(@"check point");
    }
    
    */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backTop:(id)sender
{
    [self dismissViewControllerAnimated:YES
                             completion:NULL];
    
}
@end
