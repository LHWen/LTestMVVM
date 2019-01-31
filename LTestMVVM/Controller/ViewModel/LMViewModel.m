//
//  LMViewModel.m
//  LTestMVVM
//
//  Created by LHWen on 2018/11/19.
//  Copyright © 2018 LHWen. All rights reserved.
//

#import "LMViewModel.h"
#import "LMModel.h"

@interface LMViewModel()

@property (nonatomic, strong) NSArray *data;

@end

@implementation LMViewModel

- (NSArray *)data {
    
    if (!_data) {
        _data = [NSArray new];
    }
    return _data;
}

- (LMModel *)modelDataRow:(NSInteger)row {
    return self.data[row];
}

- (void)getDataArray {
    self.data = [[[LMModel alloc] init].getLMModelDataArray copy];
}

- (NSInteger)dataCount {
    return [[LMModel alloc] init].getLMModelDataArray.count;
}

- (NSString *)getDataTitleRow:(NSInteger)row {
    return [self modelDataRow:row].title;
}

- (NSString *)getDataDetailsRow:(NSInteger)row {
    return [self modelDataRow:row].detailsStr;
}

@end
