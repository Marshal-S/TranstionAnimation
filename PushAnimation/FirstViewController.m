//
//  FirstViewController.m
//  PushAnimation
//
//  Created by Marshal on 2018/2/3.
//  Copyright © 2018年 Marshal. All rights reserved.
//

#import "FirstViewController.h"
#import "UIViewController+LSTranstionAnimation.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)onClickToDismiss:(id)sender {
    [self dismissWithAnimation:UIViewAnimationOptionTransitionFlipFromLeft];
}

- (IBAction)onClickToPop:(id)sender {
    [self popWithAnimation:UIViewAnimationOptionTransitionFlipFromLeft];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
