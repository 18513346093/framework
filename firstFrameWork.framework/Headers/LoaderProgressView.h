//
//  LoaderProgressView.h
//  Yochi_OriginalProject
//
//  Created by Yochi·Kung on 2017/7/12.
//  Copyright © 2017年 gongyouqiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoaderProgressView : UIView

@property (assign, nonatomic, readonly) bool isProgressing;
@property (assign, nonatomic, readonly) bool isComplete;
@property (assign, nonatomic, readonly) CGFloat progress;

- (void) setNextProgress: (CGFloat)nextProgress;
+ (LoaderProgressView *)loaderViewFrame:(CGRect)frame
                             parentView:(UIView *)parentView
                      shareProgressView:(void(^)(LoaderProgressView *progressView))progressViewBlock;


+ (UIImageView *)loaderViewFrame:(CGRect)frame parentView:(UIView *)parentView;


@end
