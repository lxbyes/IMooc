//
//  ViewController.m
//  IMooc
//
//  Created by 赖显波 on 9/23/15.
//  Copyright © 2015 Leckie. All rights reserved.
//

#import "IMRootViewController.h"

@interface IMRootViewController ()

@end

@implementation IMRootViewController

- (void)awakeFromNib {
    self.contentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"contentViewController"];
    self.leftMenuViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"leftMenuViewController"];
    
    self.scaleMenuView = NO;
    self.scaleContentView = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

@end
