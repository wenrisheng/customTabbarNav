//
//  SecondViewController.m
//  woshimingxing
//
//  Created by athudong on 13-12-17.
//  Copyright (c) 2013年 athudong. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
    // Do any additional setup after loading the view from its nib.
    self.title=@"second";

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonAction:(id)sender {
    Second1ViewController *second1VC=[[Second1ViewController alloc]init];
    [self.navigationController pushViewController:second1VC animated:YES];
    [second1VC release];
}
@end
