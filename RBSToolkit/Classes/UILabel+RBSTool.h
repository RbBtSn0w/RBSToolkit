//
//  UILabel+RBSTool.h
//  RBSToolkit
//
//  Created by Snow.y.wu on 4/2/19.
//  Copyright © 2019 RbBtSn0w. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (RBSTool)

- (CGSize) rbs_sizeThatOddSize:(CGSize)oddSize;

- (CGSize) rbs_systemLayoutSizeOddSize:(CGSize)oddSize;
@end

NS_ASSUME_NONNULL_END
