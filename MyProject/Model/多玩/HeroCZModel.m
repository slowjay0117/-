//
//  HeroCZModel.m
//  MyProject
//
//  Created by will on 2017/7/26.
//  Copyright © 2017年 will. All rights reserved.
//

#import "HeroCZModel.h"

@implementation HeroCZModel

+ (NSString *)replacedKeyFromPropertyName121:(NSString *)propertyName{
    //    驼峰转下划线（loveYou -> love_you）
    return [propertyName mj_underlineFromCamel];
}

@end
