//
//  IMLeftMenuViewController.m
//  IMooc
//
//  Created by 赖显波 on 9/23/15.
//  Copyright © 2015 Leckie. All rights reserved.
//

#import "IMLeftMenuViewController.h"
#import "UIImage+FontAwesome.h"
#import "UIViewController+RESideMenu.h"
#import "RESideMenu.h"

@interface IMLeftMenuViewController ()

@end

@implementation IMLeftMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *settingView = [[UIImageView alloc] initWithFrame:CGRectMake(20, self.view.bounds.size.height - 40, 20, 20)];
    settingView.image = [UIImage imageWithIcon:@"fa-cog" backgroundColor:[UIColor clearColor] iconColor:[UIColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:1] fontSize:20];
    [self.view addSubview:settingView];
    self.view.backgroundColor = [UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:1];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    } else {
        return 6;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSArray *items = @[@"全部课程", @"我的课程", @"离线缓存", @"我的消息", @"我的笔记", @"文章"];
    NSArray *icons = @[@"fa-film", @"fa-files-o", @"fa-bell-o", @"fa-comment-o", @"fa-bookmark-o", @"fa-envelope-o"];
    if (indexPath.section == 0) {
        //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LeftMenuHeaderTabelViewCell"];
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"LeftMenuItem"];
        cell.backgroundColor = [UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:1];
        cell.selectedBackgroundView = [[UIView alloc] init];
        cell.textLabel.text = @"Hello";
        return cell;
    } else {
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"LeftMenuItem"];
        cell.backgroundColor = [UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:1];
        cell.textLabel.textColor = [UIColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:1];
        cell.textLabel.text = items[indexPath.row];
        cell.selectedBackgroundView = [[UIView alloc] init];
        cell.selectedBackgroundView.backgroundColor = [UIColor purpleColor];
        
        cell.imageView.image = [UIImage imageWithIcon:icons[indexPath.row] backgroundColor:[UIColor clearColor] iconColor:[UIColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:1] andSize:CGSizeMake(20, 20)];
        return cell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 1) {
        [self.sideMenuViewController hideMenuViewController];
        switch (indexPath.row) {
            case 0:
            {
                UIViewController *vc = [[UIViewController alloc] init];
                vc.view.backgroundColor = [UIColor orangeColor];
                UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc];
                [self.sideMenuViewController setContentViewController:nvc animated:YES];
                break;
            }
            default:
                break;
        }
    }
}



@end
