//
//  ItemDetailModel.m
//  MyProject
//
//  Created by will on 2017/7/26.
//  Copyright © 2017年 will. All rights reserved.
//

#import "ItemDetailModel.h"

@implementation ItemDetailModel

+ (NSDictionary *)replacedKeyFromPropertyName{
    return @{@"desc": @"description", @"ID": @"id"};
}

@end

@implementation ItemDetailExtattrsModel

//属性首字母小写->变大写
+ (NSString *)replacedKeyFromPropertyName121:(NSString *)propertyName{
    return [propertyName mj_firstCharUpper];
}

@end
