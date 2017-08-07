//
//  RuneModel.m
//  MyProject
//
//  Created by will on 2017/7/26.
//  Copyright © 2017年 will. All rights reserved.
//

#import "RuneModel.h"

@implementation RuneModel

//首字母大写
+ (NSString *)replacedKeyFromPropertyName121:(NSString *)propertyName{
    return [propertyName mj_firstCharUpper];
}

+ (NSDictionary *)objectClassInArray{
    return @{@"Purple" : [RunePurpleModel class], @"Yellow" : [RunePurpleModel class], @"Blue" : [RunePurpleModel class], @"Red" : [RunePurpleModel class]};
}
@end
@implementation RunePurpleModel

+ (NSDictionary *)replacedKeyFromPropertyName{
    return @{@"img": @"Img", @"name": @"Name", @"recom": @"Recom", @"units": @"Units", @"type": @"Type", @"standby": @"Standby", @"alias": @"Alias", @"prop": @"Prop"};
}

@end
