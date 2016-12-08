//
//  HWMineVC.m
//  个人模块图片Demo
//
//  Created by 曹航玮 on 2016/12/7.
//  Copyright © 2016年 曹航玮. All rights reserved.
//

#import "HWMineVC.h"

@interface HWMineVC () <UITableViewDelegate,UITableViewDataSource>

/**
 *  个人页面图片
 */
@property (nonatomic, strong) UIImageView * headerView;

/**
 *  设置视图
 */
@property (nonatomic, strong) UITableView * settingView;

@end

@implementation HWMineVC

+ (instancetype)mineVC {
    
    return [[self alloc] init];
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self initailHeaderView];
    [self initailSettingView];
    
}

- (void)initailHeaderView {
    
    self.headerView = [[UIImageView alloc] init];
    self.headerView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 250);
    self.headerView.contentMode = UIViewContentModeScaleAspectFill;
    self.headerView.image = [UIImage imageNamed:@"header"];
    [self.view addSubview:self.headerView];
}

- (void)initailSettingView {
    
    self.settingView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    self.settingView.backgroundColor = [UIColor clearColor];
    self.settingView.delegate = self;
    self.settingView.dataSource = self;
    self.settingView.contentInset = UIEdgeInsetsMake(200, 0, 0, 0);
    [self.settingView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellID"];
    [self.view addSubview:self.settingView];
}

#pragma mark - < UITableViewDatasource >
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell * settingCell = [tableView dequeueReusableCellWithIdentifier:@"cellID" forIndexPath:indexPath];
    settingCell.textLabel.text = @"测试ing";
    return settingCell;
}

#pragma mark - < UITableViewDelegate >
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    CGRect newFrame = self.headerView.frame;
    CGFloat settingViewOffsetY = 50 - scrollView.contentOffset.y;
    newFrame.size.height = settingViewOffsetY;
    
    if (settingViewOffsetY < 50) {
        newFrame.size.height = 50;
    }
    self.headerView.frame = newFrame;
}

@end
