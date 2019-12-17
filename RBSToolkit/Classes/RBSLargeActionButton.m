//
//  RBSLargeActionButton.m
//  Pods-RBSToolkit_Example
//
//  Created by Snow.y.wu on 12/17/19.
//

#import "RBSLargeActionButton.h"

@implementation RBSLargeActionButton
{
    CALayer *_debugLayer;
}

- (void)setActionEdgeInsets:(UIEdgeInsets)actionEdgeInsets {
    if (!UIEdgeInsetsEqualToEdgeInsets(_actionEdgeInsets, actionEdgeInsets)) {
        _actionEdgeInsets = actionEdgeInsets;
    }
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self crateDefulat];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self crateDefulat];
    }
    return self;
}

- (void)crateDefulat{
    CGFloat offset = 0;
    self.actionEdgeInsets = UIEdgeInsetsMake(-1*offset, -1*offset, -1*offset, -1*offset);
}

- (void)setNeedsDisplayDebugView:(CGRect)hitFrame {
    
#ifdef DEBUG
    if (self.debugModule == NO) {
        return;
    }
    
    if (_debugLayer == nil) {
        _debugLayer = [[CALayer alloc] init];
        [self.layer addSublayer:_debugLayer];
    }
    _debugLayer.frame = hitFrame;
    
    _debugLayer.borderWidth = 1.0;
    _debugLayer.borderColor = [UIColor greenColor].CGColor;
#endif
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    if(!self.enabled || self.hidden) {
        return [super pointInside:point withEvent:event];
    }
    
    CGRect hitFrame = [self actionFrame];
    
    if (CGRectContainsPoint(hitFrame, point)) {
        [self setNeedsDisplayDebugView:hitFrame];
        return YES;
    } else {
        return [super pointInside:point withEvent:event];
    }
}

static CGFloat const kMinWidthOfButton = 44.0f;
static CGFloat const kMinHeightOfButton = 44.0f;

- (CGRect)actionFrame {
    CGRect relativeFrame = self.bounds;
    CGRect hitFrame = UIEdgeInsetsInsetRect(relativeFrame, self.actionEdgeInsets);
    
    if (hitFrame.size.width < kMinWidthOfButton) {
        hitFrame.size .width = kMinWidthOfButton;
        hitFrame.origin.x = CGRectGetMidX(relativeFrame) - CGRectGetWidth(hitFrame)/2;
        hitFrame.origin.y = CGRectGetMidY(relativeFrame) - CGRectGetHeight(hitFrame)/2;
    }
    if (hitFrame.size.height < kMinHeightOfButton) {
        hitFrame.size .height = kMinHeightOfButton;
        hitFrame.origin.x = CGRectGetMidX(relativeFrame) - CGRectGetWidth(hitFrame)/2;
        hitFrame.origin.y = CGRectGetMidY(relativeFrame) - CGRectGetHeight(hitFrame)/2;
    }
    
    return hitFrame;
}
@end
