//
//  ModuleRouterBase.m
//  ModuleCommon
//
//  Created by 徐梦童 on 2017/12/2.
//  Copyright © 2017年 DreamBuddy. All rights reserved.
//

#import "ModuleRouterBase.h"

NSString *const RouterNavigationController = @"RouterNavigationController";
NSString *const RouterLoginRestrict = @"RouterLoginRestrict";
NSString *const RouterCustomTitle = @"RouterCustomTitle";
NSString *const RouterTransferAnimated = @"RouterTransferAnimated";

@implementation ModuleRouterBase

+ (void)registRouters{};

/**
 获取导航控制器
 1.如果有传入则使用传入的
 2.如果没有传入则使用默认的：当前显示在前方的控制器
 @return 当前导航控制器
 */
+ (UINavigationController *)currentNavigationControllerWithRouterParameters:(NSDictionary *)routerParameters{
    UINavigationController *navigationController = routerParameters[MGJRouterParameterUserInfo][RouterNavigationController];
    if (navigationController && [navigationController isKindOfClass:[UINavigationController class]]) {
        return navigationController;
    } else {
        UIWindow *keyWindow = [[UIApplication sharedApplication].delegate window];
        UIViewController *rootVC = keyWindow.rootViewController;
        if ([rootVC isKindOfClass:UITabBarController.class]) {
            UITabBarController *tabbarVC = (UITabBarController *)rootVC;
            return tabbarVC.selectedViewController;
        } else {
            UINavigationController *navagationVC = (UINavigationController *)rootVC;
            return navagationVC;
        }
    }
}

@end
