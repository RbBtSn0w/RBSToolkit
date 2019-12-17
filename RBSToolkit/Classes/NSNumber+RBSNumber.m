//
//  NSNumber+RBSNumber.m
//  RBSToolkit
//
//  Created by Snow.y.wu on 4/2/19.
//  Copyright © 2019 RbBtSn0w. All rights reserved.
//

#import "NSNumber+RBSNumber.h"


@implementation NSNumber (RBSNumber)

+ (BOOL)rbs_isPureInt:(NSString *)string{
    NSScanner* scan = [NSScanner scannerWithString:string];
    int val;
    return [scan scanInt:&val] && [scan isAtEnd];
}

+ (BOOL)rbs_isPureInteger:(NSString *)string{
    NSScanner* scan = [NSScanner scannerWithString:string];
    NSInteger val;
    return [scan scanInteger:&val] && [scan isAtEnd];
}

+ (BOOL)rbs_isPureLongLong:(NSString *)string{
    NSScanner* scan = [NSScanner scannerWithString:string];
    long long val;
    return [scan scanLongLong:&val] && [scan isAtEnd];
}


+ (nullable NSNumber*)rbs_numberWithString:(NSString*)string {
    if (string == nil) {
        return nil;
    }
    BOOL isPure = [NSNumber rbs_isPureInt:string];
    if (isPure) {
        return @(string.intValue);
    } else {
        isPure = [NSNumber rbs_isPureInteger:string];
        if (isPure) {
            return @(string.integerValue);
        } else {
            isPure = [NSNumber rbs_isPureLongLong:string];
            if (isPure) {
                return @(string.longLongValue);
            }
        }
    }
    return nil;
}

@end
