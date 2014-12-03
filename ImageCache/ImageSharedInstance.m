//
//  ImageSharedIntance.m
//  ImageCache
//
//  Created by Michel de Sousa Carvalho on 02/12/14.
//  Copyright (c) 2014 Michel de Sousa Carvalho. All rights reserved.
//

#import "ImageSharedInstance.h"

@implementation ImageSharedInstance

static ImageSharedInstance *sharedInstance;

+(id)sharedInstance
{
    if(!sharedInstance) {
        sharedInstance = [[super allocWithZone:nil] init];
    }
    return sharedInstance;
}

+(id)allocWithZone:(struct _NSZone *)zone
{
    return [ImageSharedInstance sharedInstance];
}


@end
