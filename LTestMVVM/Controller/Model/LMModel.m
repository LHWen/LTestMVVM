//
//  LMModel.m
//  LTestMVVM
//
//  Created by LHWen on 2018/11/19.
//  Copyright © 2018 LHWen. All rights reserved.
//

#import "LMModel.h"

@implementation LMModel

- (instancetype)initWithTitle:(NSString *)title details:(NSString *)details {
    self = [super init];
    if (self) {
        _title = title;
        _detailsStr = details;
    }
    return self;
}

- (NSArray *)getLMModelDataArray {
    
    return [@[
             [[LMModel alloc] initWithTitle:@"A" details:@"the first letter of the English alphabet"],
             [[LMModel alloc] initWithTitle:@"B" details:@"the second letter of the English alphabet"],
             [[LMModel alloc] initWithTitle:@"C" details:@"a mark given to a student’s work to show that it is of average quality"],
             [[LMModel alloc] initWithTitle:@"D" details:@"a mark given to a student’s work to show that it is not very good"],
             [[LMModel alloc] initWithTitle:@"E" details:@"the fifth letter of the English alphabet"],
             [[LMModel alloc] initWithTitle:@"F" details:@"the six letter of the English alphabet"],
             [[LMModel alloc] initWithTitle:@"H" details:@"the seven letter of the English alphabet"],
             [[LMModel alloc] initWithTitle:@"I" details:@"the eighth letter of the English alphabet"],
             [[LMModel alloc] initWithTitle:@"G" details:@"I moved to this city two years ago"],
             [[LMModel alloc] initWithTitle:@"K" details:@"the ten letter of the English alphabet"],
             [[LMModel alloc] initWithTitle:@"L" details:@"the written abbreviation of"],
             [[LMModel alloc] initWithTitle:@"M" details:@"the second letter of the English alphabet"],
             [[LMModel alloc] initWithTitle:@"N" details:@"a mark given to a student’s work to show that it is of average quality"],
             [[LMModel alloc] initWithTitle:@"O" details:@"a mark given to a student’s work to show that it is not very good"],
             [[LMModel alloc] initWithTitle:@"P" details:@"the fifth letter of the English alphabet"],
             [[LMModel alloc] initWithTitle:@"Q" details:@"the six letter of the English alphabet"],
             [[LMModel alloc] initWithTitle:@"R" details:@"the seven letter of the English alphabet"],
             [[LMModel alloc] initWithTitle:@"S" details:@"the eighth letter of the English alphabet"],
             [[LMModel alloc] initWithTitle:@"T" details:@"I moved to this city two years ago"],
             [[LMModel alloc] initWithTitle:@"U" details:@"the ten letter of the English alphabet"],
             [[LMModel alloc] initWithTitle:@"V" details:@"the written abbreviation of"]
             ] copy];
}

@end
