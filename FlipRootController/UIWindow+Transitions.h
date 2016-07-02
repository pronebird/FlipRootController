//
//  UIWindow+Transitions.h
//  FlipRootController
//
//  Created by pronebird on 7/2/16.
//  Copyright © 2016 pronebird. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIWindow (Transitions)

- (void)transitionToRootController:(UIViewController *)newRootController animationOptions:(UIViewAnimationOptions)options;

@end
