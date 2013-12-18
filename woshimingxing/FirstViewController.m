//
//  FirstViewController.m
//  woshimingxing
//
//  Created by athudong on 13-12-17.
//  Copyright (c) 2013年 athudong. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

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
    self.title=@"first";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonAction:(id)sender {
    UIButton *button=(UIButton *)sender;
    NSLog(@"button bounds:%@",NSStringFromCGRect(button.bounds));
    First1ViewController *first1=[[First1ViewController alloc]init];
    [self.navigationController pushViewController:first1 animated:YES];
    [first1 release];
}
@end
