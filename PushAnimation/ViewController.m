//
//  ViewController.m
//  PushAnimation
//
//  Created by Marshal on 2018/2/3.
//  Copyright © 2018年 Marshal. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "UIViewController+LSTranstionAnimation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)onClickToPresent:(id)sender {
    [self present:[[FirstViewController alloc] init] animation:UIViewAnimationOptionTransitionFlipFromRight];
}

- (IBAction)onClickToPush:(id)sender {
    [self push:[[FirstViewController alloc] init] animation:UIViewAnimationOptionTransitionFlipFromRight];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
