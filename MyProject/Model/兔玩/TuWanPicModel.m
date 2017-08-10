//
//  TuWanPicModel.m
//  MyProject
//
//  Created by will on 2017/8/10.
//  Copyright © 2017年 will. All rights reserved.
//

#import "TuWanPicModel.h"

@implementation TuWanPicModel
+ (NSDictionary *)objectClassInArray{
    return @{@"showitem" : [TuWanPicShowitemModel class], @"relevant" : [TuWanPicRelevantModel class], @"content" : [TuWanPicContentModel class]};
}
+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{@"typeName":@"typename",@"desc":@"description"};
}
@end


@implementation TuWanPicInfochildModel

@end


@implementation TuWanPicShowitemModel

@end


@implementation TuWanPicShowitemInfoModel

@end


@implementation TuWanPicRelevantModel
+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{@"typeName":@"typename",@"desc":@"description"};
}
@end


@implementation TuWanPicContentModel

@end



