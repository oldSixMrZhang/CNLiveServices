//
//  CNLiveHomeModule.m
//  CNLiveServices_Example
//
//  Created by CNLive-zxw on 2019/7/22.
//  Copyright © 2019 153993236@qq.com. All rights reserved.
//

#import "CNLiveHomeModule.h"
#import "CNLiveServices.h"

@BeeHiveMod(CNLiveHomeModule)
@interface CNLiveHomeModule()<BHModuleProtocol>

@end

@implementation CNLiveHomeModule
- (id)init {
    if (self = [super init]) {
        
    }
    return self;
    
}

- (NSUInteger)moduleLevel {
    return 0;
    
}

- (void)modSetUp:(BHContext *)context {
    switch (context.env) {
        case BHEnvironmentDev:
            //....初始化开发环境
            break;
        case BHEnvironmentProd:
            //....初始化生产环境
        default:
            break;
    }
    
}

- (void)modInit:(BHContext *)context {
//    NSLog(@"CNLiveHomeModule init");
    
}

@end
