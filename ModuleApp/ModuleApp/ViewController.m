//
//  ViewController.m
//  ModuleApp
//
//  Created by 徐梦童 on 2017/12/1.
//  Copyright © 2017年 DreamBuddy. All rights reserved.
//

#import "ViewController.h"
#import <ModuleCommon/ModuleCommon.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [CommonTool commonFunction];
    
    [MGJRouter openURL:Module_OneViewController];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
