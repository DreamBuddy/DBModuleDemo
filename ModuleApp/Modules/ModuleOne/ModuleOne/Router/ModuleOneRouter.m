//
//  ModuleOneRouter.m
//  ModuleOne
//
//  Created by 徐梦童 on 2017/12/2.
//  Copyright © 2017年 DreamBuddy. All rights reserved.
//

#import "ModuleOneRouter.h"
#import "ModuleOneViewController.h"

@implementation ModuleOneRouter

RouterManagerRegist

+ (void)registRouters{
    [MGJRouter registerURLPattern:Module_OneViewController toHandler:^(NSDictionary *routerParameters) {
        UIViewController *viewController = ModuleOneViewController.new;
        [RouterManagerNavigationController pushViewController:viewController animated:YES];
    }];
}

@end
