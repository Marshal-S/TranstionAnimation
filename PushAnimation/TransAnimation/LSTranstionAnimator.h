//
//  LSTranstionAnimator.h
//  PushAnimation
//
//  Created by Marshal on 2018/2/5.
//  Copyright © 2018年 Marshal. All rights reserved.
//

#import <UIKit/UINavigationController.h>
#import <UIKit/UIViewControllerTransitioning.h>

typedef NS_ENUM(NSUInteger, QYLTranstionType) {
    QYLTranstionTypeEnter, //present
    QYLTranstionTypeOut    //dismiss
};

@interface LSTranstionModelAnimator : NSObject<UIViewControllerTransitioningDelegate>

/// @brief 动画仅支持UIView的Transition系列
+ (instancetype)animationWithTranstionType:(QYLTranstionType)transtionType animation:(UIViewAnimationOptions)animation;

@end

@interface LSTranstionNaviAnimator : NSObject<UINavigationControllerDelegate>

/// @brief 动画仅支持UIView的Transition系列
+ (instancetype)animationWithTranstionType:(QYLTranstionType)transtionType animation:(UIViewAnimationOptions)animation;

@end
