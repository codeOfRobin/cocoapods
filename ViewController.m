//
//  ViewController.m
//  cocoapods
//
//  Created by Robin Malhotra on 19/06/14.
//  Copyright (c) 2014 Robin's code kitchen. All rights reserved.
//

#import "ViewController.h"
#import <SAMGradientView/SAMGradientView.h>
@interface ViewController ()

@end

@implementation ViewController

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
    
    SAMGradientView *view=[[SAMGradientView alloc] initWithFrame:self.view.bounds];
    view.gradientColors=@[[UIColor redColor],[UIColor blueColor]];
    [self.view addSubview:view];
    // Do any additional setup after loading the view.
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

@end
