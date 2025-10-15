//
//  CNLiveLoginServiceProtocol.h
//  CNLiveServices
//
//  Created by 153993236@qq.com on 07/22/2019.
//  Copyright (c) 2019 153993236@qq.com. All rights reserved.
//

/**
 * 登录模块
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BHServiceProtocol.h"

@protocol CNLiveLoginServiceProtocol <NSObject, BHServiceProtocol>
@optional
- (UIViewController *)getLoginViewController;
- (void)pushToLoginViewController;
- (void)pushToLoginViewController:(BOOL)isShowClose;

- (void)presentToLoginViewController;
- (void)presentToLoginViewController:(BOOL)isShowClose;

- (void)loginIfNeedWithCompleteBlock:(void (^)(BOOL))completeBlock;

@end

