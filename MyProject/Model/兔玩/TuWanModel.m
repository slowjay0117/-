//
//  TuWanModel.m
//  MyProject
//
//  Created by will on 2017/7/25.
//  Copyright © 2017年 will. All rights reserved.
//

#import "TuWanModel.h"

@implementation TuWanModel

@end
@implementation TuWanDataModel

+ (NSDictionary *)objectClassInArray{
    return @{@"indexpic" : [TuWanDataIndexpicModel class], @"list" : [TuWanDataIndexpicModel class]};
}

@end


@implementation TuWanDataIndexpicModel

+ (NSDictionary *)objectClassInArray{
    return @{@"showitem" : [TuWanDataIndexpicShowitemModel class]};
}
+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{@"typeName" : @"typename", @"desc" : @"description"};
}

@end


@implementation TuWanDataIndexpicInfochildModel

@end


@implementation TuWanDataIndexpicShowitemModel

@end


@implementation TuWanDataIndexpicShowitemInfoModel

@end


