//
//  CNLiveADServiceProtocol.h
//  CNLiveNetAdd
//
//  Created by 张旭 on 2020/1/6.
//  Copyright © 2020 cnlive. All rights reserved.
//  广告模块接口协议

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CNLiveBeeHive/CNLiveBeeHive.h>

#import "BHServiceProtocol.h"

@protocol CNLiveADServiceProtocol <NSObject,BHServiceProtocol>

@optional
/** 获取广告页 */
- (UIViewController *)getConnectServerVC;

@end
