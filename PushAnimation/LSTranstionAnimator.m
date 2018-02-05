//
//  LSTranstionAnimator.m
//  PushAnimation
//
//  Created by Marshal on 2018/2/5.
//  Copyright © 2018年 Marshal. All rights reserved.
//

#import "LSTranstionAnimator.h"

@interface LSTranstionAnimator : NSObject<UIViewControllerAnimatedTransitioning>
{
    @package;
    QYLTranstionType _transtionType;
    UIViewAnimationOptions _animation;
}

@end

@implementation LSTranstionAnimator

- (NSTimeInterval)transitionDuration:(nullable id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.5;
}

- (void)animateTransition:(nonnull id<UIViewControllerContextTransitioning>)transitionContext {
    switch (_transtionType) {
        case QYLTranstionTypeEnter:
            [self enterWithTranstion:transitionContext];
            break;
        case QYLTranstionTypeOut:
            [self outWithTranstion:transitionContext];
            break;
    }
}

- (void)enterWithTranstion:(nullable id<UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *fromVc = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVc = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    CGRect frame = fromVc.view.frame;
    toVc.view.frame = CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame));
    [[transitionContext containerView] addSubview:toVc.view];
    [UIView transitionFromView:fromVc.view toView:toVc.view duration:[self transitionDuration:transitionContext] options:_animation completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];
    }];
}

- (void)outWithTranstion:(nullable id<UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *fromVc = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVc = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    CGRect frame = [transitionContext finalFrameForViewController:toVc];
    fromVc.view.frame = CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame));
    [[transitionContext containerView] addSubview:toVc.view];
    [UIView transitionFromView:fromVc.view toView:toVc.view duration:[self transitionDuration:transitionContext] options:_animation completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];
    }];
}

@end

@interface LSTranstionModelAnimator ()

@property (nonatomic, strong) LSTranstionAnimator *modelTransiton;

@end

@implementation LSTranstionModelAnimator

+ (instancetype)animationWithTranstionType:(QYLTranstionType)transtionType animation:(UIViewAnimationOptions)animation {
    LSTranstionModelAnimator *trans = [self new];
    if (trans) {
        LSTranstionAnimator *animator = [LSTranstionAnimator new];
        animator->_transtionType = transtionType;
        animator->_animation = animation;
        trans.modelTransiton = animator;
    }
    return trans;
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    return _modelTransiton;
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    return _modelTransiton;
}

@end

@interface LSTranstionNaviAnimator ()

@property (nonatomic, strong) LSTranstionAnimator *modelTransiton;

@end

@implementation LSTranstionNaviAnimator

+ (instancetype)animationWithTranstionType:(QYLTranstionType)transtionType animation:(UIViewAnimationOptions)animation {
    LSTranstionNaviAnimator *trans = [self new];
    if (trans) {
        LSTranstionAnimator *animator = [LSTranstionAnimator new];
        animator->_transtionType = transtionType;
        animator->_animation = animation;
        trans.modelTransiton = animator;
    }
    return trans;
}

- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC {
    return _modelTransiton;
}

@end
