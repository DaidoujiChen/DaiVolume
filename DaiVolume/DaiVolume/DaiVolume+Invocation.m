//
//  DaiVolume+Invocation.m
//  MusicPlayer
//
//  Created by 啟倫 陳 on 2014/4/10.
//  Copyright (c) 2014年 YuLiang. All rights reserved.
//

#import "DaiVolume+Invocation.h"

#import "DaiVolume+AccessObject.h"

@implementation DaiVolume (Invocation)

#pragma mark - class method

NSInvocation* getCurrentVolumeInvocation(id self) {
    
    static NSInvocation *invocation;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        NSMethodSignature *signature = [volumeObject(self) methodSignatureForSelector:NSSelectorFromString(@"value")];
        
        invocation = [NSInvocation invocationWithMethodSignature:signature];
        [invocation setTarget:volumeObject(self)];
        [invocation setSelector:NSSelectorFromString(@"value")];
        
    });
    
    return invocation;
    
}

NSInvocation* setCurrentVolumeInvocation(id self, float volumeValue) {
    
    static NSInvocation *invocation;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        NSMethodSignature *signature = [volumeObject(self) methodSignatureForSelector:NSSelectorFromString(@"setValue:")];
        
        invocation = [NSInvocation invocationWithMethodSignature:signature];
        [invocation setTarget:volumeObject(self)];
        [invocation setSelector:NSSelectorFromString(@"setValue:")];
        
    });
    
    [invocation setArgument:&volumeValue atIndex:2];
    
    return invocation;
    
}

@end
