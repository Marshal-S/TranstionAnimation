//
//  UIViewController+LSTranstionAnimation.h
//  PushAnimation
//
//  Created by Marshal on 2018/2/3.
//  Copyright © 2018年 Marshal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (LSTranstionAnimation)

- (void)present:(UIViewController *)toVc animation:(UIViewAnimationOptions)animation;//present
- (void)dismissWithAnimation:(UIViewAnimationOptions)animation;//dismiss

- (void)push:(UIViewController *)toVc animation:(UIViewAnimationOptions)animation;//push
- (void)popWithAnimation:(UIViewAnimationOptions)animation;//返回一次
- (void)popToViewController:(UIViewController *)toVc animation:(UIViewAnimationOptions)animation;//返回到前面的指定控制器
- (void)popToRootWithAnimation:(UIViewAnimationOptions)animation;//返回到根控制器

@end
