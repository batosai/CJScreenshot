//
//  CJScreenshot.m
//  IRedmine
//
//  Created by Jeremy on 19/09/12.
//  Copyright (c) 2012 opsone. All rights reserved.
//

#import "CJScreenshot.h"
#import <QuartzCore/QuartzCore.h>

@implementation CJScreenshot

@synthesize image = _image;

- (id)initWhitWiew:(UIView*)v {
    self = [super init];
    
    if (self) {
        view = v;

        UIGraphicsBeginImageContext(v.bounds.size);
        CALayer *layer = v.layer;
        [layer renderInContext:UIGraphicsGetCurrentContext()];
        _image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    }

    return self;
}

- (void)saveToPhotosAlbum {
    UIImageWriteToSavedPhotosAlbum(_image, nil, nil, nil);
}

@end
