//
//  NSBundle+RBSTool.m
//  RBSToolkit
//
//  Created by Snow.y.wu on 4/18/22.
//

#import "NSBundle+RBSTool.h"

@implementation NSBundle (RBSTool)

+ (nullable NSBundle*)rbs_resourceBundleForClass:(Class)aClass withAppendingPathComponent:(NSString *)str{
    
    // 由于采取了Static Library而没有使用use_framework!，因此此时[NSBundle bundleForClass:]和mainBundle是相同的，原因是类其实在mainBundle的二进制中，而不是Framework中。
    NSString *bundlePath = [[[NSBundle bundleForClass:aClass] resourcePath] stringByAppendingPathComponent:str];
    if (bundlePath == nil) {
        return nil;
    }
    
    NSBundle *resource_bundle = [NSBundle bundleWithPath:bundlePath];
    if (resource_bundle == nil) {
        return nil;
    }
    
    return resource_bundle;
}


@end
