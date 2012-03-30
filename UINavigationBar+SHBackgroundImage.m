//
//  UINavigationBar+SHBackgroundImage.m
//  Customize UINavigationBar's Background Image
//
//  Created by Neo Lee on 9/13/11.
//  Copyright (c) 2011 Ragnarok Studio. All rights reserved.
//

#import "UINavigationBar+SHBackgroundImage.h"
#import "SHUIKit.h"

@implementation UINavigationBar (SHBackgroundImage)

- (void)shInsertSubview:(UIView *)view atIndex:(NSInteger)index {
    [self shInsertSubview:view atIndex:index];
    
    UIView *backgroundImageView = [self viewWithTag:kSCNavigationBarBackgroundImageTag];
    if (backgroundImageView != nil)
    {
        [self shSendSubviewToBack:backgroundImageView];
    }
}

- (void)shSendSubviewToBack:(UIView *)view {
    [self shSendSubviewToBack:view];
    
    UIView *backgroundImageView = [self viewWithTag:kSCNavigationBarBackgroundImageTag];
    if (backgroundImageView != nil)
    {
        [self shSendSubviewToBack:backgroundImageView];
    }
}

@end
