//
//  CNLiveHomeViewController.m
//  CNLiveServices_Example
//
//  Created by CNLive-zxw on 2019/7/22.
//  Copyright © 2019 153993236@qq.com. All rights reserved.
//

#import "CNLiveHomeViewController.h"
#import "CNLiveServices.h"

@interface CNLiveHomeViewController ()

@end

@implementation CNLiveHomeViewController
- (void)backToFoundViewControllerByName:(NSString *)name{
    self.title = name;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    self.title = @"首页";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn0 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn0.frame = CGRectMake(0, 0, 100, 100);
    btn0.center = self.view.center;
    btn0.backgroundColor = [UIColor redColor];
    [btn0 setTitle:@"进入发现" forState:UIControlStateNormal];
    [btn0 addTarget:self action:@selector(testButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn0];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(0, 0, 100, 100);
    btn1.center = CGPointMake(self.view.center.x, self.view.center.y-120);
    btn1.backgroundColor = [UIColor redColor];
    [btn1 setTitle:@"进入协议" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(testButtonClicked1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
}

- (void)testButtonClicked {
//    id<CNLiveLoginServiceProtocol> login = [[BeeHive shareInstance] createService:@protocol(CNLiveLoginServiceProtocol)];
//    [login loginIfNeedWithCompleteBlock:^(BOOL succeed) {
//        if (succeed) {
////            id<CNLiveFoundServiceProtocol> found = [[BeeHive shareInstance] createService:@protocol(CNLiveFoundServiceProtocol)];
////            [found pushToFoundViewControllerByName:@"" url:@"" delegate:self];
//    
//        }
//    }];
    
}

- (void)testButtonClicked1 {
//    id<CNLiveUserAgreementServiceProtocol> agreement = [[BeeHive shareInstance] createService:@protocol(CNLiveUserAgreementServiceProtocol)];
//    [[agreement class] jumpToAgreementH5WithType:CNAgreementCancellation];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
