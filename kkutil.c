//
//  kkutil.c
//  sysTools
//
//  Created by 孔祥波 on 15/2/15.
//  Copyright (c) 2015年 Kong XiangBo. All rights reserved.
//

#include "kkutil.h"

#include <sys/sysctl.h>

 time_t uptime()
{
    struct timeval boottime;
    
    int mib[2] = {CTL_KERN, KERN_BOOTTIME};
    
    size_t size = sizeof(boottime);
    
    time_t now;
    
    time_t uptime = -1;
    
    (void)time(&now);
    
    if (sysctl(mib, 2, &boottime, &size, NULL, 0) != -1 && boottime.tv_sec != 0)
        
    {
        
        uptime =  boottime.tv_sec;
        
    }
    
    
    
    return uptime;
    
}