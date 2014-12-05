//
//  ImageRequest.m
//  ImageCache
//
//  Created by Michel de Sousa Carvalho on 02/12/14.
//  Copyright (c) 2014 Michel de Sousa Carvalho. All rights reserved.
//

#import "ImageRequest.h"
#import "ImageSaveDisk.h"

@interface ImageRequest()

@property (nonatomic, strong) NSMutableDictionary *imagesCache;
@property (nonatomic, strong) NSMutableDictionary *operationCache;
@property (nonatomic, strong) NSOperationQueue *queue;
@property (nonatomic, strong) ImageRequestBlock completionBlock;

@end


@implementation ImageRequest
-(id) init
{
    self = [super init];
    if(self)
    {
        self.imagesCache = [[NSMutableDictionary alloc] init];
        self.operationCache = [[NSMutableDictionary alloc] init];
        self.queue = [[NSOperationQueue alloc]init];
    }
    return self;
}

-(void) fetchImageWithUrl:(NSString *)url andNameImage:(NSString*)nameImage withcompletionBlock:(ImageRequestBlock)completionBlock
{
    UIImage *imageOfCache = self.imagesCache[nameImage];
    if(imageOfCache) {
        self.completionBlock(imageOfCache);
    } else {
        NSBlockOperation *retrievalBlock = [[NSBlockOperation alloc] init];
        __weak NSBlockOperation *weakOperation = retrievalBlock;
        [retrievalBlock addExecutionBlock:^{
            NSString *pathImage = [ImageSaveDisk filePathForImage:nameImage];
            // se não existir imagem no device realizar request e armazenar imagem
            if(![ImageSaveDisk imageExistsAtPath:pathImage]){
                
            }
        }];
    }
    
}


-(void)cancelImageDownloadWithURL:(NSString *)url withCompletionBlock:(void (^)(void))completionBlock
{
    
}



@end
