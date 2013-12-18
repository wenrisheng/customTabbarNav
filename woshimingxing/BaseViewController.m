//
//  BaseViewController.m
//  woshimingxing
//
//  Created by athudong on 13-12-17.
//  Copyright (c) 2013年 athudong. All rights reserved.
//

#import "BaseViewController.h"
#import "MainViewController.h"
@interface BaseViewController ()

@end

@implementation BaseViewController

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
   // self.navigationController.navigationBarHidden=YES;
    if (SystemVersion>=7.0) {
        self.edgesForExtendedLayout=UIRectEdgeNone;
    }
    }
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self hideSystemTabBar:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - tabbar
- (void)hideSystemTabBar:(BOOL)hidden{
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0];
    
    for(UIView *view in self.tabBarController.view.subviews)
    {
        if([view isKindOfClass:[UITabBar class]])
        {
            if (hidden) {
                [view setFrame:CGRectMake(view.frame.origin.x, UIScreenHeight, view.frame.size.width, view.frame.size.height)];
            } else {
                [view setFrame:CGRectMake(view.frame.origin.x, UIScreenHeight-TabBarViewHight, view.frame.size.width, view.frame.size.height)];
            }
        }
        else
        {
//            if (hidden) {
//                [view setFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y, view.frame.size.width, 320)];
//            } else {
//                [view setFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y, view.frame.size.width, 320-49)];
//            }
        }
    }
    
    [UIView commitAnimations];
}

- (void)removeSystemTabBar{
    
    for(UIView *view in self.tabBarController.view.subviews){
        
        if([view isKindOfClass:[UITabBar class]]){   //处理UITabBar视图
            
            
            [view removeFromSuperview];
            // [view setFrame:CGRectMake(view.frame.origin.x,UIScreenHeight,view.frame.size.width,view.frame.size.height)];
            
            NSLog(@"BaseViewController 删除系统tabbar");
            
        }else{   //处理其它视图
        }
        
    }
    
    
}
-(void)hideCostomTabbar{
    MainViewController *mainVC=(MainViewController *)self.tabBarController;
    UIView *tabBarView=mainVC.tabBarView;
    tabBarView.frame=CGRectMake(0, UIScreenHeight, tabBarView.frame.size.width,TabBarViewHight);
    
    NSLog(@"hideCostomTabbar");
    
}
-(void)showCostomTabbar{
    NSLog(@"showCostomTabbar");
    MainViewController *mainVC=(MainViewController *)self.tabBarController;
    UIView *tabBarView=mainVC.tabBarView;
    tabBarView.frame=CGRectMake(0,20, tabBarView.frame.size.width,TabBarViewHight);
}

@end
