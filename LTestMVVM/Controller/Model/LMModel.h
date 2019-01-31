//
//  LMModel.h
//  LTestMVVM
//
//  Created by LHWen on 2018/11/19.
//  Copyright © 2018 LHWen. All rights reserved.
//

#import "BaseModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface LMModel : BaseModel

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *detailsStr;

- (NSArray *)getLMModelDataArray;

@end

NS_ASSUME_NONNULL_END
