//
//  CNLiveBalanceServiceProtocol.h
//  CNLiveServices
//
//  Created by 153993236@qq.com on 07/22/2019.
//  Copyright (c) 2019 153993236@qq.com. All rights reserved.
//

/**
 * 余额模块
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BHServiceProtocol.h"

@protocol CNLiveBalanceServiceProtocol <NSObject, BHServiceProtocol>

// 补贴余额
- (UIViewController *)getBalanceViewControllerWithType:(NSString *)type ID:(NSString *)ID;

- (void)pushToBalanceViewControllerWithType:(NSString *)type ID:(NSString *)ID;


@end
