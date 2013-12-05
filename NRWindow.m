//
//  NRWindow.m
//  NRTouchPoints
//
//  Created by Natan Rolnik on 06/12/13.
//  Copyright (c) 2013 Natan Rolnik. All rights reserved.
//

#import "NRWindow.h"
#import "UITouch+NRTouch.h"

@implementation NRWindow

- (void)sendEvent:(UIEvent *)event
{
    [super sendEvent:event];
    
    if (event.type == UIEventTypeTouches)
    {
        for (UITouch *touch in [event allTouches])
        {
            if (touch.phase == UITouchPhaseBegan)
            {
                UIImageView *imageView = [[UIImageView alloc] initWithImage:[self imageForTouch]];
                imageView.contentMode = UIViewContentModeRedraw;
                touch.touchRepresentationView = imageView;
                CGPoint point = [touch locationInView:self];
                imageView.frame = CGRectMake(point.x - 20, point.y - 20, 40, 40);
                [self addSubview:imageView];
            }
            else if (touch.phase == UITouchPhaseCancelled || touch.phase == UITouchPhaseEnded)
            {
                [touch.touchRepresentationView removeFromSuperview];
            }
            else if (touch.phase == UITouchPhaseMoved)
            {
                CGPoint point = [touch locationInView:self];
                touch.touchRepresentationView.frame = CGRectMake(point.x - 20, point.y - 20, 40, 40);
            }
        }
    }
}

-(UIImage *)imageForTouch
{
    UIImage *imageForTouch = self.touchRepresentationCustomImage ? self.touchRepresentationCustomImage : [UIImage imageNamed:@"NRTouchImage"];
    return imageForTouch;
}
@end
