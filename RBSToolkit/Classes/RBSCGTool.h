//
//  RBSCGTool.h
//  RBSToolkit
//
//  Created by Snow.y.wu on 6/4/18.
//  Copyright © 2019 RbBtSn0w. All rights reserved.
//

#ifndef RBSCGTool_h
#define RBSCGTool_h

#import <CoreGraphics/CoreGraphics.h>

CG_INLINE CGFloat
RBSCGCeil (CGFloat ceilFloat)
{
#if defined(__LP64__) && __LP64__
    return ceil(ceilFloat);
#else
    return ceilf(ceilFloat);
#endif
}

CG_INLINE CGFloat
RBSCGFloor (CGFloat floorFloat)
{
#if defined(__LP64__) && __LP64__
    return floor(floorFloat);
#else
    return floorf(floorFloat);
#endif
}


CG_INLINE CGSize
RBSCGSize (CGSize size)
{
    return CGSizeMake(RBSCGCeil(size.width), RBSCGCeil(size.height));
}


#endif /* RBSCGTool_h */
