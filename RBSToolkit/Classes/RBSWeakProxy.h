//
//  RBSWeakProxy.h
//  RBSToolkit
//
//  Created by Snow.y.wu on 8/7/19.
//  Copyright © 2019 RbBtSn0w. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RBSWeakProxy <__covariant NSOBJECT : NSObject*> : NSProxy

@property (nonatomic, weak) NSOBJECT weakTarget;

+ (instancetype)proxyWithTarget:(NSOBJECT)weakTarget;

- (instancetype)initWithTarget:(NSOBJECT)weakTarget;

@end

NS_ASSUME_NONNULL_END
