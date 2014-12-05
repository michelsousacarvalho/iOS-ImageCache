//
//  ImageSaveDisk.m
//  ImageCache
//
//  Created by Michel de Sousa Carvalho on 02/12/14.
//  Copyright (c) 2014 Michel de Sousa Carvalho. All rights reserved.
//

#import "ImageSaveDisk.h"

@implementation ImageSaveDisk

+(NSString *)filePathForImage:(NSString *)nameImage
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [documentsDirectory stringByAppendingString:nameImage];
    return filePath;
}

+(BOOL)imageExistsAtPath:(NSString *)pathImage
{
    if(![[NSFileManager defaultManager] fileExistsAtPath:pathImage]){
        return false;
    } else {
        return true;
    }
}

@end
