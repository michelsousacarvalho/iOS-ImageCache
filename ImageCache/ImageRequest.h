//
//  ImageRequest.h
//  ImageCache
//
//  Created by Michel de Sousa Carvalho on 02/12/14.
//  Copyright (c) 2014 Michel de Sousa Carvalho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^ImageRequestBlock)(UIImage* image);

@interface ImageRequest : NSObject


-(void) fetchImageWithUrl:(NSString *)url andNameImage:(NSString*)nameImage withcompletionBlock:(ImageRequestBlock)completionBlock;
-(void) cancelImageDownloadWithURL:(NSString *)url withCompletionBlock:(void (^)(void))completionBlock;


@end
