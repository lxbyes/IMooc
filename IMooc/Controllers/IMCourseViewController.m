//
//  IMCourseViewController.m
//  IMooc
//
//  Created by 赖显波 on 9/23/15.
//  Copyright © 2015 Leckie. All rights reserved.
//

#import "IMCourseViewController.h"
#import "UIImage+FontAwesome.h"
#import "UIViewController+RESideMenu.h"

@interface IMCourseViewController ()

@end

@implementation IMCourseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置TintColor（决定按钮颜色）
    [self.navigationController.navigationBar setTintColor:[UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1]];
    
    UIImage *leftIcon = [UIImage imageWithIcon:@"fa-bars" backgroundColor:[UIColor clearColor] iconColor:[UIColor blackColor] fontSize:20];
    UIBarButtonItem *leftBarButton = [[UIBarButtonItem alloc] initWithImage:leftIcon style:UIBarButtonItemStylePlain target:self action:@selector(presentLeftMenuViewController:)];
    self.navigationItem.leftBarButtonItem = leftBarButton;
    
    self.title = @"All Course";
    
    UIImage *rightIcon = [UIImage imageWithIcon:@"fa-search" backgroundColor:[UIColor clearColor] iconColor:[UIColor blackColor] fontSize:20];
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc] initWithImage:rightIcon style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.rightBarButtonItem = rightBarButton;
}

@end
