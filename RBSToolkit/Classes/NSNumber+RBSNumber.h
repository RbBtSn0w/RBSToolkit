//
//  NSNumber+RBSNumber.h
//  RBSToolkit
//
//  Created by Snow.y.wu on 4/2/19.
//  Copyright © 2019 RbBtSn0w. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSNumber (RBSNumber)

+ (nullable NSNumber*)rbs_numberWithString:(NSString*)string;

@end

NS_ASSUME_NONNULL_END
