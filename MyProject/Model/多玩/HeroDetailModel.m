//
//  HeroDetailModel.m
//  MyProject
//
//  Created by will on 2017/7/26.
//  Copyright © 2017年 will. All rights reserved.
//

#import "HeroDetailModel.h"

@implementation HeroDetailModel


+ (NSDictionary *)objectClassInArray{
    return @{@"like" : [HeroDetailLikeModel class], @"hate" : [HeroDetailHateModel class]};
}

+ (NSDictionary *)replacedKeyFromPropertyName{
    return @{@"ID": @"id", @"desc": @"description"};
}

@end

@implementation HeroDetailBraumModel
+ (NSDictionary *)replacedKeyFromPropertyName{
    return @{@"ID": @"id", @"desc": @"description"};
}
@end

@implementation HeroDetailLikeModel

@end


@implementation HeroDetailHateModel

@end
