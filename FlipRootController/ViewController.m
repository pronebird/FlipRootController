//
//  ViewController.m
//  FlipRootController
//
//  Created by pronebird on 7/2/16.
//  Copyright © 2016 pronebird. All rights reserved.
//

#import "ViewController.h"
#import "UIWindow+Transitions.h"

@implementation ViewController

- (IBAction)flip:(id)sender {
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    
    UIViewController *newController = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
    
    [window transitionToRootController:newController animationOptions:UIViewAnimationOptionTransitionFlipFromRight];
}

@end
