//
//  UIImageView+RBSTool.m
//  RBSToolkit
//
//  Created by Snow.y.wu on 8/7/19.
//  Copyright © 2019 RbBtSn0w. All rights reserved.
//

#import "UIImageView+RBSTool.h"
#import "RBSCGTool.h"

@implementation UIImageView (RBSTool)


- (CGSize) rbs_fittingSizeByFittingWidth:(CGFloat)fittingWidth {
    CGSize imageSize = self.image.size;
    CGSize imageFittingSize = CGSizeZero;
    if (imageSize.width> 0 && imageSize.height > 0) {
        CGFloat imageFittingHeight = (imageSize.height / imageSize.width) * fittingWidth;
        imageFittingSize = CGSizeMake(fittingWidth, imageFittingHeight);
    }
    return RBSCGSize(imageFittingSize);
}

- (CGSize) rbs_fittingSizeByFittingHeight:(CGFloat)fittingHeight {
    CGSize imageSize = self.image.size;
    CGSize imageFittingSize = CGSizeZero;
    if (imageSize.width> 0 && imageSize.height > 0) {
        CGFloat imageFittingWidth = (imageSize.width / imageSize.height) * fittingHeight;
        imageFittingSize = CGSizeMake(imageFittingWidth, fittingHeight);
    }
    return RBSCGSize(imageFittingSize);
}

- (void) rbs_setFittingSizeByFittingHeight:(CGFloat)fittingHeight {
    CGRect frame = self.frame;
    frame.size = [self rbs_fittingSizeByFittingHeight:fittingHeight];
    self.frame = frame;
}

@end
