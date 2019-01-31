//
//  LMViewModel.h
//  LTestMVVM
//
//  Created by LHWen on 2018/11/19.
//  Copyright © 2018 LHWen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LMViewModel : NSObject

- (void)getDataArray;
- (NSInteger)dataCount;
- (NSString *)getDataTitleRow:(NSInteger)row;
- (NSString *)getDataDetailsRow:(NSInteger)row;

@end

NS_ASSUME_NONNULL_END
