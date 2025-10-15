//
//  CNLiveHomeService.m
//  CNLiveServices_Example
//
//  Created by CNLive-zxw on 2019/7/22.
//  Copyright © 2019 153993236@qq.com. All rights reserved.
//

#import "CNLiveHomeService.h"
#import "CNLiveServices.h"
#import "CNLiveHomeViewController.h"
#import "CNLiveDetailsViewController.h"

@BeeHiveService(CNLiveNetHomeServiceProtocol,CNLiveHomeService)
@interface CNLiveHomeService ()<CNLiveNetHomeServiceProtocol>

@end

@implementation CNLiveHomeService

- (UIViewController *)getNetHomeViewController{
    CNLiveHomeViewController *vc = [CNLiveHomeViewController new];
    return vc;
    
}

- (void)pushToNetHomeViewController{
//    UITabBarController *tab = (UITabBarController *)[UIApplication sharedApplication].delegate.window.rootViewController;
//    UINavigationController *nav = tab.selectedViewController;
//    CNLiveHomeViewController *vc = [CNLiveHomeViewController new];
//    [nav pushViewController:vc animated:YES];
    
    UINavigationController *nav = (UINavigationController *)[UIApplication sharedApplication].delegate.window.rootViewController;
    CNLiveHomeViewController *vc = [CNLiveHomeViewController new];
    [nav pushViewController:vc animated:YES];
    
}

- (UIViewController *)getDetailsViewController{
    CNLiveDetailsViewController *vc = [CNLiveDetailsViewController new];
    return vc;
    
}

- (void)pushToDetailsViewController{
    UITabBarController *tab = (UITabBarController *)[UIApplication sharedApplication].delegate.window.rootViewController;
    UINavigationController *nav = tab.selectedViewController;
    CNLiveDetailsViewController *vc = [CNLiveDetailsViewController new];
    [nav pushViewController:vc animated:YES];
    
}


@end
