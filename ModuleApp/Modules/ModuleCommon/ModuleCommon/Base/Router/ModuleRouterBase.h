//
//  ModuleRouterBase.h
//  ModuleCommon
//
//  Created by 徐梦童 on 2017/12/2.
//  Copyright © 2017年 DreamBuddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <MGJRouter.h>
#import "RouterDefinitions.h"

/**
 举个例子:
 [MGJRouter openURL:[MGJRouter generateURLWithPattern:icq_router_login parameters:nil] withUserInfo:@{iCQRouterNavigationController:self.navigationController} completion:nil];
 */
extern NSString *const RouterNavigationController;

/**
 如果需要判断登录态 才可以执行Block(大多数情况下是VC跳转)
 可选参数: Y/N (字符串哈)  友情提醒: 没事不要传这个参数。。
 */
extern NSString *const RouterLoginRestrict;
/**
 外部传入的VC的Title
 */
extern NSString *const RouterCustomTitle;
/**
 是否需要动画
 */
extern NSString *const RouterTransferAnimated;

/**
 1.使用宏定义 定义一个url字符串 : #define icq_router_login @"icq://login"
 2.regist相应Block
 3.调用方法: [MGJRouter openURL:[MGJRouter generateURLWithPattern:icq_router_login parameters:nil]];
 4.routerParameters里边三个常量
 MGJRouterParameterURL -- > URL
 MGJRouterParameterCompletion -- > 完成时可以传递信息的Block
 MGJRouterParameterUserInfo -- > 传递过来的参数 可以包含对象
 */

/**
 统一的注册方法调用
 用法示例:
 在 子类.m中 RouterManagerRegist  即可
 */
#define RouterManagerRegist \
+ (void)load{\
[self registRouters];\
}\

/**
 替代烦人的那一长串获取导航控制器代码
 
 @return UINavigationController
 */
#define RouterManagerNavigationController [self currentNavigationControllerWithRouterParameters:routerParameters]

@interface ModuleRouterBase : NSObject

/**
 注册Router的方法
 */
+ (void)registRouters;

/**
 获取导航控制器
 1.如果有传入则使用传入的
 2.如果没有传入则使用默认的：当前显示在前方的控制器
 @return 当前导航控制器
 */
+ (UINavigationController *)currentNavigationControllerWithRouterParameters:(NSDictionary *)routerParameters;

@end
