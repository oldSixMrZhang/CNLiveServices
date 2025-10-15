//
//  CNLiveMineServiceProtocol.h
//  CNLiveServices
//
//  Created by 153993236@qq.com on 07/22/2019.
//  Copyright (c) 2019 153993236@qq.com. All rights reserved.
//

/**
 * 我的模块
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BHServiceProtocol.h"

@protocol CNLiveMineServiceProtocol <NSObject, BHServiceProtocol>
@optional
- (UIViewController *)getMineViewController;


@end
