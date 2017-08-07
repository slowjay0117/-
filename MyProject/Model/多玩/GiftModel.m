//
//  GiftModel.m
//  MyProject
//
//  Created by will on 2017/7/26.
//  Copyright © 2017年 will. All rights reserved.
//

#import "GiftModel.h"

@implementation GiftModel


+ (NSDictionary *)objectClassInArray{
    return @{@"a" : [GiftAModel class], @"d" : [GiftAModel class], @"g" : [GiftAModel class]};
}
@end
@implementation GiftAModel

@end
