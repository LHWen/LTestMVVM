//
//  TableIndexViewController.m
//  LTestMVVM
//
//  Created by LHWen on 2018/11/19.
//  Copyright © 2018 LHWen. All rights reserved.
//

#import "TableIndexViewController.h"

static NSString *const kTIndexCell = @"IndexTableViewCell";

@interface TableIndexViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *indexArr;
@property (nonatomic, strong) NSMutableArray *titleArr;

@end

@implementation TableIndexViewController

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [UIView new];
        _tableView.separatorInset = UIEdgeInsetsMake(0, 13.0f, 0, 0);
        _tableView.separatorColor = [UIColor orangeColor];
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kTIndexCell];
        _tableView.showsVerticalScrollIndicator = NO;
        
        // 索引颜色
        _tableView.sectionIndexColor = [UIColor orangeColor];
        // 索引背景设置
        _tableView.sectionIndexBackgroundColor = [UIColor grayColor];
        
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
    
    self.navigationItem.title = @"table View 索引";
    
    _indexArr = [NSMutableArray new];
    _titleArr = [NSMutableArray new];
    for (char c = 'A'; c <= 'Z'; c++) {
        
        [_indexArr addObject:[NSString stringWithFormat:@"%c", c]];
        [_titleArr addObject:[NSString stringWithFormat:@"%c-----1", c]];
        [_titleArr addObject:[NSString stringWithFormat:@"%c-----2", c]];
    }
    
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _indexArr.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kTIndexCell];
    
    cell.textLabel.text = _titleArr[indexPath.section * 2 + indexPath.row];
    
    return cell;
}

// 返回索引数组
- (NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    return _indexArr;
}

// 响应点击索引时的委托方法
- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    
    NSInteger count = 0;
    for (NSString *character in _indexArr) {
        if ([[character uppercaseString] hasPrefix:title]) {
            return count;
        }
        count++;
    }
    return 0;
}

// 返回索引内容
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return _indexArr[section];
}

@end
