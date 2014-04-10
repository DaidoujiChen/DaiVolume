//
//  DaiVolume+Invocation.h
//  MusicPlayer
//
//  Created by 啟倫 陳 on 2014/4/10.
//  Copyright (c) 2014年 YuLiang. All rights reserved.
//

#import "DaiVolume.h"

@interface DaiVolume (Invocation)

NSInvocation* getCurrentVolumeInvocation(id self);
NSInvocation* setCurrentVolumeInvocation(id self, float volumeValue);

@end
