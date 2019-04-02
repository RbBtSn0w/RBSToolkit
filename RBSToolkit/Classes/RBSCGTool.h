//
//  RBSCGTool.h
//  Pods
//
//  Created by Snow.y.wu on 6/4/18.
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



#endif /* RBSCGTool_h */
