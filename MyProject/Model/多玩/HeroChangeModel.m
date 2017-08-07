//
//  HeroChangeModel.m
//  MyProject
//
//  Created by will on 2017/7/26.
//  Copyright © 2017年 will. All rights reserved.
//

#import "HeroChangeModel.h"

@implementation HeroChangeModel


+ (NSDictionary *)objectClassInArray{
    return @{@"changeLog" : [HeroChangeChangelogModel class]};
}
@end
@implementation HeroChangeChangelogModel

@end
