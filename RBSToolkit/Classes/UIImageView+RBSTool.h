//
//  UIImageView+RBSTool.h
//  RBSToolkit
//
//  Created by Snow.y.wu on 8/7/19.
//  Copyright © 2019 RbBtSn0w. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (RBSTool)

- (CGSize) rbs_fittingSizeByFittingWidth:(CGFloat)fittingWidth;

- (CGSize) rbs_fittingSizeByFittingHeight:(CGFloat)fittingHeight;

- (void) rbs_setFittingSizeByFittingHeight:(CGFloat)fittingHeight;

@end

NS_ASSUME_NONNULL_END
