//
//  CNLiveOrderServiceProtocol.h
//  CNLiveServices
//
//  Created by 153993236@qq.com on 07/22/2019.
//  Copyright (c) 2019 153993236@qq.com. All rights reserved.
//

/**
 * 订单模块
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BHServiceProtocol.h"

@protocol CNLiveOrderServiceProtocol <NSObject, BHServiceProtocol>

// 订单
- (UIViewController *)getOrderViewController;
- (void)pushToOrderViewController:(NSInteger)index;

// 售后
- (UIViewController *)getRefundViewController;
- (void)pushToRefundViewController:(NSInteger)index;

// 地址
- (UIViewController *)getAddressViewController;
- (void)pushToAddressViewController;

// 我的礼盒
- (UIViewController *)getGiftBoxViewController;
- (void)pushToGiftBoxViewController;

@end
