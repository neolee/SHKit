//
//  SHNavigationBarTitleView.m
//  iClojureDocs
//
//  Created by Neo on 5/15/13.
//  Copyright (c) 2013 Paradigm X. All rights reserved.
//

#import "SHNavigationBarTitleView.h"

@interface SHNavigationBarTitleView()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *detailLabel;
@end

@implementation SHNavigationBarTitleView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)init {
    self = [super initWithFrame:CGRectMake(0, 0, 200, 44)];
    
    if (self) {
        [self setBackgroundColor: [UIColor clearColor]];
        [self setAutoresizesSubviews:YES];
        
        CGRect titleFrame = CGRectMake(0, 2, 200, 24);
        _titleLabel = [[UILabel alloc] initWithFrame:titleFrame];
        [_titleLabel setBackgroundColor:[UIColor clearColor]];
        [_titleLabel setFont:[UIFont boldSystemFontOfSize:20]];
        [_titleLabel setTextAlignment:NSTextAlignmentCenter];
        [_titleLabel setTextColor:[UIColor whiteColor]];
        [_titleLabel setShadowColor:[UIColor darkGrayColor]];
        [_titleLabel setShadowOffset:CGSizeMake(0, -1)];
        [_titleLabel setText:@""];
        [_titleLabel setAdjustsFontSizeToFitWidth:YES];
        [self addSubview:_titleLabel];
        
        CGRect detailFrame = CGRectMake(0, 24, 200, 44-24);
        _detailLabel = [[UILabel alloc] initWithFrame:detailFrame];
        [_detailLabel setBackgroundColor:[UIColor clearColor]];
        [_detailLabel setFont:[UIFont systemFontOfSize:13]];
        [_detailLabel setTextAlignment:NSTextAlignmentCenter];
        [_detailLabel setTextColor:[UIColor whiteColor]];
        [_detailLabel setShadowColor:[UIColor darkGrayColor]];
        [_detailLabel setShadowOffset:CGSizeMake(0, -1)];
        [_detailLabel setText:@""];
        [_detailLabel setAdjustsFontSizeToFitWidth:YES];
        [self addSubview:_detailLabel];
        
        [self setAutoresizingMask : (UIViewAutoresizingFlexibleLeftMargin |
                                     UIViewAutoresizingFlexibleRightMargin |
                                     UIViewAutoresizingFlexibleTopMargin |
                                     UIViewAutoresizingFlexibleBottomMargin)];
    }
    
    return self;  
}  


- (void) setTitleText:(NSString *)text {
    [self.titleLabel setText:text];
}

- (void) setDetailText:(NSString *)text {
    [self.detailLabel setText:text];
}

@end
