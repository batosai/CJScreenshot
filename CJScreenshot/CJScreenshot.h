//
//  CJScreenshot.h
//  IRedmine
//
//  Created by Jeremy on 19/09/12.
//  Copyright (c) 2012 opsone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CJScreenshot : NSObject {
    UIView *view;
}


@property (readonly) UIImage *image;

- (id)initWhitWiew:(UIView*)view;
- (void)saveToPhotosAlbum;

@end
