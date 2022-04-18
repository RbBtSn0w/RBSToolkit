//
//  NSBundle+RBSTool.h
//  RBSToolkit
//
//  Created by Snow.y.wu on 4/18/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (RBSTool)


/// Returns the NSBundle object with which the specified class is associated.
/// 由于采取了Static Library而没有使用use_framework!，因此此时[NSBundle bundleForClass:]和mainBundle是相同的，原因是类其实在mainBundle的二进制中，而不是Framework中。
/// @param aClass Classes in Bunbundles
/// @param str bundle 的名称例如: "TargetResource.bundle"
+ (nullable NSBundle*)rbs_resourceBundleForClass:(Class)aClass withAppendingPathComponent:(NSString *)str;

@end

NS_ASSUME_NONNULL_END
