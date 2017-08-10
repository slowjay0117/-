//
//  TuWanVideoModel.m
//  MyProject
//
//  Created by will on 2017/8/10.
//  Copyright © 2017年 will. All rights reserved.
//

#import "TuWanVideoModel.h"

@implementation TuWanVideoModel

+ (NSDictionary *)objectClassInArray{
    return @{@"content" : [TuWanVideoContentModel class], @"relevant" : [TuWanVideoRelevantModel class]};
}
+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{@"desc":@"description",@"typeName":@"typename"};
}

@end


@implementation TuWanVideoContentModel

@end


@implementation TuWanVideoRelevantModel
+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{@"desc":@"description",@"typeName":@"typename"};
}
@end


