//
//  CNLiveIntegralServiceProtocol.h
//  CNLiveServices
//
//  Created by 153993236@qq.com on 07/22/2019.
//  Copyright (c) 2019 153993236@qq.com. All rights reserved.
//

/**
 * 积分模块
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BHServiceProtocol.h"

#pragma mark - Block
typedef void(^RequestCompleted) (BOOL isSuccess, NSString *desc, NSString *score);

#pragma mark - 协议
// 增加积分
@protocol CNLiveAddScoreViewDelegate <NSObject>
@optional
- (void)loginNow;
@end

@protocol CNLiveIntegralServiceProtocol <NSObject, BHServiceProtocol>

#pragma mark - 任务列表
// 任务列表
- (UIViewController *)getTaskListViewController;
- (void)pushToTaskListViewController;
- (void)pushToTaskListViewController:(NSString *)isFrom;

#pragma mark - 增加积分
// 请求
//延时调用
- (void)requestTime:(NSInteger)time taskId:(NSString *)taskId contentId:(NSString *)contentId block:(RequestCompleted _Nullable)block;
//取消延时
- (void)cancelSendRequest;

//首次登录加积分
- (void)firstLogin:(RequestCompleted _Nullable)block;

//直接调用
- (void)requestTaskId:(NSString *)taskId contentId:(NSString *)contentId block:(RequestCompleted _Nullable)block;


// 视图
// 默认展示添加积分视图
- (void)showAddScoreViewWithDesc:(NSString *)desc score:(NSString *)score;

// 游客模式浏览加积分
- (void)showAddScoreViewWithDesc:(NSString *)desc score:(NSString *)score delegate:(id<CNLiveAddScoreViewDelegate>)delegate;

- (void)hideAddScoreView;

#pragma mark - 金币下落
// 游客模式浏览加积分
- (void)showGoldWhereaboutsViewWithDesc:(NSString *)desc delegate:(id)delegate;

// 默认展示添加积分视图
- (void)showGoldWhereaboutsViewWithDesc:(NSString *)desc score:(NSString *)score;

// 默认签到
- (void)showGoldWhereaboutsViewWithDic:(NSDictionary *)dic;

- (void)hideGoldWhereaboutsView;

#pragma mark - 签到
- (void)showSignInViewWithDic:(NSDictionary *)dic;

@end

