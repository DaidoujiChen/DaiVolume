//
//  DaiVolume+AccessObject.m
//  MusicPlayer
//
//  Created by 啟倫 陳 on 2014/4/10.
//  Copyright (c) 2014年 YuLiang. All rights reserved.
//

#import "DaiVolume+AccessObject.h"

#import <MediaPlayer/MediaPlayer.h>
#import <objc/runtime.h>

@implementation DaiVolume (AccessObject)

static const char VOLUMEOBJECTPOINTER;

#pragma mark - class method

id volumeObject(id self) {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        MPVolumeView *volumeView = [MPVolumeView new];
        for (NSObject *obj in volumeView.subviews) {
            if ([obj isKindOfClass:NSClassFromString(@"MPVolumeSlider")]) {
                objc_setAssociatedObject(self, &VOLUMEOBJECTPOINTER, obj, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
                break;
            }
        }
        
    });
    
    return objc_getAssociatedObject(self, &VOLUMEOBJECTPOINTER);
    
}

@end
