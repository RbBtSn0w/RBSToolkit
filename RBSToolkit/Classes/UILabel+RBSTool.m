//
//  UILabel+RBSTool.m
//  RBSToolkit
//
//  Created by Snow.y.wu on 4/2/19.
//  Copyright © 2019 RbBtSn0w. All rights reserved.
//

#import "UILabel+RBSTool.h"
#import "RBSCGTool.h"

@implementation UILabel (RBSTool)

- (CGSize) rbs_sizeThatOddSize:(CGSize)oddSize {
    self.preferredMaxLayoutWidth = oddSize.width;
    CGSize resultSize = [self sizeThatFits:oddSize];
    /*
    if (self.numberOfLines > 0) {
        CGFloat eachLineOfHeight = RBSCGCeil(resultSize.height/self.numberOfLines);
        if ( (resultSize.width < oddSize.width) && (resultSize.height > eachLineOfHeight)) {
            resultSize.width = oddSize.width;
        }
    }
    */
    if (resultSize.width > oddSize.width) {
        resultSize.width = oddSize.width;
    }
    if (resultSize.height > oddSize.height) {
        resultSize.height = oddSize.height;
    }
    return RBSCGSize(resultSize);
    
}


- (CGSize) rbs_systemLayoutSizeOddSize:(CGSize)oddSize {
    self.preferredMaxLayoutWidth = oddSize.width;
    CGSize resultSize = [self systemLayoutSizeFittingSize:oddSize];
    /*
    if (self.numberOfLines > 0) {
        CGFloat eachLineOfHeight = RBSCGCeil(resultSize.height/self.numberOfLines);
        if ( (resultSize.width < oddSize.width) && (resultSize.height > eachLineOfHeight)) {
            resultSize.width = oddSize.width;
        }
    }
    */
    if (resultSize.width > oddSize.width) {
        resultSize.width = oddSize.width;
    }
    if (resultSize.height > oddSize.height) {
        resultSize.height = oddSize.height;
    }
    return RBSCGSize(resultSize);

}
@end
