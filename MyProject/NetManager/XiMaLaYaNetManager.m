//
//  XiMaLaYaNetManager.m
//  MyProject
//
//  Created by will on 2017/7/26.
//  Copyright © 2017年 will. All rights reserved.
//

#import "XiMaLaYaNetManager.h"

#define kRankListPath   @"http://mobile.ximalaya.com/mobile/discovery/v1/rankingList/album"
#define kAlbumPath      @"http://mobile.ximalaya.com/mobile/others/ca/album/track/%@/true/%@/20"

#define kDevice     @"device":@"iPhone"
#define kKey        @"key":@"ranking:album:played:1:2"
#define kPageSize   @"pageSize":@20
#define kPosition   @"position":@0
#define kTitle      @"title":@"排行榜"


@implementation XiMaLaYaNetManager
+ (id)getRankListWithPageId:(NSInteger)pageId completionHandle:(void (^)(id, NSError *))completionHandle{
    NSDictionary *params = @{kDevice, kKey, kPageSize, kPosition, kTitle, @"pageId":@(pageId)};
    return [self GET:kRankListPath parameters:params completionHandler:^(id responseObj, NSError *error) {
        completionHandle([RankingListModel mj_objectWithKeyValues:responseObj], error);
    }];
}

+ (id)getAlbumWithId:(NSInteger)ID page:(NSInteger)pageId completionHandle:(void (^)(id, NSError *))completionHandle{
    NSString *path = [NSString stringWithFormat:kAlbumPath, @(ID), @(pageId)];
    return [self GET:path parameters:@{kDevice} completionHandler:^(id responseObj, NSError *error) {
        completionHandle([AlbumModel mj_objectWithKeyValues:responseObj], error);
    }];
}
@end
