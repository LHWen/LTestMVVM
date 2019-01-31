//
//  LMViewController.m
//  LTestMVVM
//
//  Created by LHWen on 2018/11/19.
//  Copyright © 2018 LHWen. All rights reserved.
//

#import "LMViewController.h"
#import "LMViewModel.h"
#import "TableIndexViewController.h"

static NSString *const kTLMCell = @"LMTableViewCell";

@interface LMViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) LMViewModel *lmModeView;

@end

@implementation LMViewController

- (LMViewModel *)lmModeView {
    if (!_lmModeView) {
        _lmModeView = [[LMViewModel alloc] init];
    }
    return _lmModeView;
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [UIView new];
        _tableView.separatorInset = UIEdgeInsetsMake(0, 13.0f, 0, 0);
        _tableView.separatorColor = [UIColor orangeColor];
        _tableView.showsVerticalScrollIndicator = NO;
        
        _tableView.estimatedRowHeight = 0;
        _tableView.estimatedSectionFooterHeight = 0;
        _tableView.estimatedSectionHeaderHeight = 0;
        if (@available(iOS 11.0, *)) {
            _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
            if ([UIScreen mainScreen].bounds.size.height >= 812.0) { // iPhone X
                _tableView.contentInset = UIEdgeInsetsMake(0, 0, 34.0f, 0);
            }
        }
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.lmModeView getDataArray];
    
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.lmModeView.dataCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kTLMCell];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:kTLMCell];
    }
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = [self.lmModeView getDataTitleRow:indexPath.row];
    cell.detailTextLabel.text = [self.lmModeView getDataDetailsRow:indexPath.row];
    cell.detailTextLabel.textColor = [UIColor grayColor];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 54.0f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    TableIndexViewController *vc = [[TableIndexViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

/**
 技术选择：
 1、接触过的技术
 a. iOS
 b. go
 c. Swift
 ------- 以上可以直接写 ----- 以下需要继续学习练习 -----
 d. html
 e. 小程序
 f. java
 g. flutter
 
 2、回桂林要会技术
 a. Java
 b. html

 d. vue
 e. React Native
 ---- 回桂林条件 --- 学 Java、HTML（必须会，能使用来开发） 需要了解 Vue、React Native
 
 3、技术前沿
 a. go
 b. 跨平台开发（比如：flutter、cordova）
 */


@end
