//
//  UIWindow+Transitions.m
//  FlipRootController
//
//  Created by pronebird on 7/2/16.
//  Copyright © 2016 pronebird. All rights reserved.
//

#import "UIWindow+Transitions.h"

@implementation UIWindow (Transitions)

- (void)transitionToRootController:(UIViewController *)newRootController animationOptions:(UIViewAnimationOptions)options {
    // get references to controllers
    UIViewController *fromVC = self.rootViewController;
    UIViewController *toVC = newRootController;
    
    // setup transition view
    UIView *transitionView = [[UIView alloc] initWithFrame:self.bounds];
    
    // add subviews into transition view
    [transitionView addSubview:toVC.view];
    [transitionView addSubview:fromVC.view];
    
    // add transition view into window
    [self addSubview:transitionView];
    
    // flush any outstanding animations
    // UIButton may cancel transition if this method is called from touchUpInside, etc..
    [CATransaction flush];
    
    [UIView transitionFromView:fromVC.view
                        toView:toVC.view
                      duration:0.5
                       options:options
                    completion:^(BOOL finished) {
                        // set new root controller after animation
                        self.rootViewController = toVC;
                        
                        // move VC's view out of transition view
                        [self addSubview:toVC.view];
                        
                        // remove transition view
                        [transitionView removeFromSuperview];
                    }];
}

@end
