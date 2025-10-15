//
//  CNLiveQrCodeServiceProtocol.h
//  CNLiveServices
//
//  Created by 153993236@qq.com on 07/22/2019.
//  Copyright (c) 2019 153993236@qq.com. All rights reserved.
//

/**
 * 二维码模块
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BHServiceProtocol.h"

@protocol CNLiveQrCodeServiceProtocol <NSObject, BHServiceProtocol>

// 扫一扫
- (UIViewController *)getScanQrCodeController;
- (void)pushToScanQrCodeController:(BOOL)isMyCode;

// 我的二维码
- (UIViewController *)getMyQrCodeController;
- (void)pushToMyQrCodeController:(BOOL)isScanCode;

// 群组二维码
- (UIViewController *)getGroupQrCodeController;
- (void)pushToGroupQrCodeController;

// 生成二维码
- (UIViewController *)getGenerateQrCodeController;
- (void)pushToGenerateQrCodeController:(NSString *)ID;

@end
