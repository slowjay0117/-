//
//  RankingListModel.m
//  MyProject
//
//  Created by will on 2017/7/26.
//  Copyright © 2017年 will. All rights reserved.
//

#import "RankingListModel.h"

@implementation RankingListModel


+ (NSDictionary *)objectClassInArray{
    return @{@"list" : [RankListListModel class]};
}
@end
@implementation RankListListModel

+ (NSDictionary *)replacedKeyFromPropertyName{
    return @{@"ID": @"id"};
}

@end
