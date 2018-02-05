//
//  UIViewController+LSTranstionAnimation.m
//  PushAnimation
//
//  Created by Marshal on 2018/2/3.
//  Copyright © 2018年 Marshal. All rights reserved.
//

#import "UIViewController+LSTranstionAnimation.h"
#import "LSTranstionAnimator.h"

@implementation UIViewController (LSTranstionAnimation)

- (void)present:(UIViewController *)toVc animation:(UIViewAnimationOptions)animation {
    LSTranstionModelAnimator *animator = [LSTranstionModelAnimator animationWithTranstionType:QYLTranstionTypeEnter animation:animation];
    toVc.modalPresentationStyle = UIModalPresentationCustom;
    toVc.transitioningDelegate = animator;
    [self presentViewController:toVc animated:YES completion:nil];
}

- (void)dismissWithAnimation:(UIViewAnimationOptions)animation {
     LSTranstionModelAnimator *animator = [LSTranstionModelAnimator animationWithTranstionType:QYLTranstionTypeOut animation:animation];
    self.transitioningDelegate = animator;
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)push:(UIViewController *)toVc animation:(UIViewAnimationOptions)animation {
    LSTranstionNaviAnimator *animator = [LSTranstionNaviAnimator animationWithTranstionType:QYLTranstionTypeEnter animation:animation];
    self.navigationController.delegate = animator;
    [self.navigationController pushViewController:toVc animated:YES];
}

- (void)popWithAnimation:(UIViewAnimationOptions)animation {
    LSTranstionNaviAnimator *animator = [LSTranstionNaviAnimator animationWithTranstionType:QYLTranstionTypeOut animation:animation];
    self.navigationController.delegate = animator;
    [self.navigationController popViewControllerAnimated:YES];
}


@end
