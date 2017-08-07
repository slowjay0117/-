//
//  XiMaLaYaNetManager.h
//  MyProject
//
//  Created by will on 2017/7/26.
//  Copyright © 2017年 will. All rights reserved.
//

#import "BaseNetManager.h"
#import "XiMaLaYaModel.h"

@interface XiMaLaYaNetManager : BaseNetManager
/**
 *  @author will, 17-07-27 15:07:55
 *  获取音乐分类列表
 *
 *  @param pageId   当前页数
 *
 *  return 返回当前请求所在的任务
 */
+ (id)getRankListWithPageId:(NSInteger)pageId kCompletionHandle;

/**
 *  @author will, 17-07-27 15:07:53
 *  获取音乐分类内容
 *
 *  @param ID       音乐组ID
 *  @param pageId   当前页数
 *
 *  return 返回当前请求所在的任务
 */
+ (id)getAlbumWithId:(NSInteger)ID page:(NSInteger)pageId kCompletionHandle;

@end
