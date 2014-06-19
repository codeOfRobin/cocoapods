//
//  xViewController.m
//  cocoapods
//
//  Created by Robin Malhotra on 19/06/14.
//  Copyright (c) 2014 Robin's code kitchen. All rights reserved.
//

#import "xViewController.h"

@interface xViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation xViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfItemsInSlidingMenu
{
    return 10;
}

- (void)customizeCell:(RPSlidingMenuCell *)slidingMenuCell forRow:(NSInteger)row
{
    slidingMenuCell.textLabel.text = @"Some Title";
    slidingMenuCell.detailTextLabel.text = @"Some longer description that is like a subtitle!";
    slidingMenuCell.backgroundImageView.image = [UIImage imageNamed:@"a"];

}

- (void)slidingMenu:(RPSlidingMenuViewController *)slidingMenu didSelectItemAtRow:(NSInteger)row {
    // when a row is tapped do some action like go to another view controller
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Row Tapped"
                                                    message:[NSString stringWithFormat:@"Row %d tapped.", row]
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
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
