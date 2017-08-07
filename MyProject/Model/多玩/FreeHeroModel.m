//
//  FreeHeroModel.m
//  MyProject
//
//  Created by will on 2017/7/26.
//  Copyright © 2017年 will. All rights reserved.
//

#import "FreeHeroModel.h"

@implementation FreeHeroModel


+ (NSDictionary *)objectClassInArray{
    return @{@"free" : [FreeHeroFreeModel class]};
}
@end
@implementation FreeHeroFreeModel

@end


