//
//  ImageSaveDisk.h
//  ImageCache
//
//  Created by Michel de Sousa Carvalho on 02/12/14.
//  Copyright (c) 2014 Michel de Sousa Carvalho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ImageSaveDisk : NSObject

+(NSString *) filePathForImage:(NSString *) nameImage;
+(BOOL) imageExistsAtPath:(NSString*) nameImage;

@end
