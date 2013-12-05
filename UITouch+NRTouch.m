//
//  UITouch+NRTouch.m
//  NRTouchPoints
//
//  Created by Natan Rolnik on 06/12/13.
//  Copyright (c) 2013 Natan Rolnik. All rights reserved.
//

//solution from http://stackoverflow.com/a/14899909/675486 and http://oleb.net/blog/2011/05/faking-ivars-in-objc-categories-with-associative-references/

#import "UITouch+NRTouch.h"
#import <objc/runtime.h>

static void * TouchImageViewKey;

@implementation UITouch (NRTouch)

- (UIView *)touchRepresentationView {
    return objc_getAssociatedObject(self, TouchImageViewKey);
}

- (void)setTouchRepresentationView:(UIView *)newTouchRepresentationView {
    objc_setAssociatedObject(self, TouchImageViewKey, newTouchRepresentationView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
