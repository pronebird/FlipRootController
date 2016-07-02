//
//  ViewController2.m
//  FlipRootController
//
//  Created by pronebird on 7/2/16.
//  Copyright © 2016 pronebird. All rights reserved.
//

#import "ViewController2.h"
#import "UIWindow+Transitions.h"

@implementation ViewController2

- (IBAction)flip:(id)sender {
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    
    UIViewController *newController = [self.storyboard instantiateInitialViewController];
    
    [window transitionToRootController:newController animationOptions:UIViewAnimationOptionTransitionFlipFromLeft];
}

@end
