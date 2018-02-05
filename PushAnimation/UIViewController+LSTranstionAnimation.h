//
//  UIViewController+LSTranstionAnimation.h
//  PushAnimation
//
//  Created by Marshal on 2018/2/3.
//  Copyright © 2018年 Marshal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (LSTranstionAnimation)

- (void)present:(UIViewController *)toVc animation:(UIViewAnimationOptions)animation;
- (void)dismissWithAnimation:(UIViewAnimationOptions)animation;

- (void)push:(UIViewController *)toVc animation:(UIViewAnimationOptions)animation;
- (void)popWithAnimation:(UIViewAnimationOptions)animation;

@end
