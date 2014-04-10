//
//  DaiVolume.m
//  MusicPlayer
//
//  Created by 啟倫 陳 on 2014/4/10.
//  Copyright (c) 2014年 YuLiang. All rights reserved.
//

#import "DaiVolume.h"

#import "DaiVolume+Invocation.h"

@interface DaiVolume ()
float getCurrentVolume(id self);
@end

@implementation DaiVolume

#pragma mark - class method

+(float) volume {
    return getCurrentVolume(self);
}

+(void) setVolume : (float) volume {
    [setCurrentVolumeInvocation(self, volume) invoke];
}

#pragma mark - private

float getCurrentVolume(id self) {
    NSInvocation *invocation = getCurrentVolumeInvocation(self);
    [invocation invoke];
    float currentVolume;
    [invocation getReturnValue:&currentVolume];
    return currentVolume;
}

@end
