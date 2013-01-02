//
//  UINavigationBar+SHBackgroundImage.h
//  Customize UINavigationBar's Background Image
//
//  Created by Neo Lee on 9/13/11.
//  Copyright (c) 2011 Ragnarok Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (BackgroundImage)

- (void)shInsertSubview:(UIView *)view atIndex:(NSInteger)index;
- (void)shSendSubviewToBack:(UIView *)view;
@end
