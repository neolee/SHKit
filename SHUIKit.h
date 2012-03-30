//
//  SHUIKit.h
//  SH UIKit
//
//  Created by Neo Lee on 9/13/11.
//  Copyright (c) 2011 Ragnarok Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kSCNavigationBarBackgroundImageTag 6183746

@interface SHUIKit : NSObject

+ (BOOL)canConfigureAppearanceOfClass:(Class)c;
+ (void)customizeNavigationBar:(UINavigationController *)navController backgroundImage:(UIImage *)image tintColor:(UIColor *)color;
@end
