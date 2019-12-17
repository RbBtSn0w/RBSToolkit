//
//  RBSWeakProxy.m
//  RBSToolkit
//
//  Created by Snow.y.wu on 4/2/19.
//  Copyright © 2019 RbBtSn0w. All rights reserved.
//

#import "RBSWeakProxy.h"

@implementation RBSWeakProxy

+ (instancetype)proxyWithTarget:(id)weakTarget {
    return [[self alloc] initWithTarget:weakTarget];
}

- (instancetype)initWithTarget:(id)weakTarget {
    self.weakTarget = weakTarget;
    return self;
}

- (void)forwardInvocation:(NSInvocation *)invocation{
    SEL sel = [invocation selector];
    if ([self.weakTarget respondsToSelector:sel]) {
        [invocation invokeWithTarget:self.weakTarget];
    }
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    return [self.weakTarget methodSignatureForSelector:aSelector];
}

- (BOOL)respondsToSelector:(SEL)aSelector{
    return [self.weakTarget respondsToSelector:aSelector];
}


@end
