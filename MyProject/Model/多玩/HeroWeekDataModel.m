//
//  HeroWeekDataModel.m
//  MyProject
//
//  Created by will on 2017/7/26.
//  Copyright © 2017年 will. All rights reserved.
//

#import "HeroWeekDataModel.h"

@implementation HeroWeekDataModel

@end
@implementation HeroWeekDataDataModel

+ (NSDictionary *)objectClassInArray{
    return @{@"charts" : [HeroWeekDataDataChartsModel class]};
}

+ (NSString *)replacedKeyFromPropertyName121:(NSString *)propertyName{
    return [propertyName mj_underlineFromCamel];
}

@end


@implementation HeroWeekDataDataChartsModel

+ (NSDictionary *)objectClassInArray{
    return @{@"ratio_data" : [HeroWeekDataDataChartsRatioDataModel class]};
}

+ (NSString *)replacedKeyFromPropertyName121:(NSString *)propertyName{
    return [propertyName mj_underlineFromCamel];
}
@end


@implementation HeroWeekDataDataChartsRatioDataModel

@end
