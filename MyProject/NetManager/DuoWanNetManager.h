//
//  DuoWanNetManager.h
//  MyProject
//
//  Created by will on 2017/7/26.
//  Copyright © 2017年 will. All rights reserved.
//

#import "BaseNetManager.h"
#import "DuoWanModel.h"

typedef NS_ENUM(NSUInteger, HeroType) {
    HeroTypeFree,   //免费英雄
    HeroTypeAll,    //全部英雄
};

@interface DuoWanNetManager : BaseNetManager
/**
 *  获取免费英雄或收费英雄列表
 *
 *  @param type 请求英雄类型
 *
 *  @return 当前请求所在任务
 */
+ (id)getHeroWithType:(HeroType)type kCompletionHandle;

/**
 *  获取英雄皮肤
 *
 *  @param heroName 要获取皮肤的英雄英文名称
 *
 *  @return 请求所在任务
 */
+ (id)getHeroSkinsWithHeroName:(NSString *)heroName kCompletionHandle;

/**
 *  获取英雄配音
 *
 *  @param heroName 英雄英文名
 *
 *  @return 网络请求任务
 */
+ (id)getHeroSoundWithHeroName:(NSString *)heroName kCompletionHandle;

/**
 *  获取某英雄相关视频
 *
 *  @param page 视频页数，最小为1. eg 1,2,3,4....
 *  @param enName 英雄英文名
 *
 *  @return 网络请求任务
 */
+ (id)getHeroVideosWithPage:(NSInteger)page tag:(NSString *)enName kCompletionHandle;

/**
 *  获取某英雄出装
 *
 *  @param enName 英雄英文名
 *
 *  @return 网络请求任务
 */
+ (id)getHeroCZWithHeroName:(NSString *)enName kCompletionHandle;

/**
 *  获取英雄资料
 *
 *  @param enName 英雄英文名
 *
 *  @return 网络请求任务
 */
+ (id)getHeroDetailWithHeroName:(NSString *)enName kCompletionHandle;

/**
 *  获取英雄天赋和符文
 *
 *  @param enName 英雄英文名
 *
 *  @return 网络请求任务
 */
+ (id)getHeroGiftAndRunWithHeroName:(NSString *)enName kCompletionHandle;

/**
 *  获取英雄改动
 *
 *  @parma enName 英雄英文名
 *
 *  @return 网络请求任务
 */
+ (id)getHeroInfoWithHeroName:(NSString *)enName kCompletionHandle;

/**
 *  获取英雄一周数据
 *
 *  @param heroId 英雄id
 *
 *  @return 网络请求任务
 */
+ (id)getWeekDataWithHeroId:(NSInteger)heroId kCompletionHandle;

/** 获取游戏百科列表 */
+ (id)getToolMenuCompletionHandle:(void(^)(id model, NSError *error))completionHandle;

/** 获取装备分类 */
+ (id)getZBCategoryCompletionHandle:(void(^)(id model, NSError *error))completionHandle;

/**
 *  获取某分类装备列表
 *
 *  @param tag 分类tag
 *
 *  @return 网络请求任务
 */
+ (id)getZBItemListWithTag:(NSString *)tag kCompletionHandle;

/**
 *  装备详情
 *
 *  @parma itemId 装备id
 *
 *  @return 网络请求任务
 */
+ (id)getItemDetaiWithItemId:(NSInteger)itemId kCompletionHandle;

/** 获取天赋树 */
+ (id)getGiftCompletionHandle:(void(^)(id model, NSError *error))completionHandle;

/** 获取符文列表 */
+ (id)getRunesCompletionHandle:(void(^)(id model, NSError *error))completionHandle;

/** 获取召唤师技能 */
+ (id)getSumAbilityCompletionHandle:(void(^)(id model, NSError *error))completionHandle;

/** 获取最佳阵容 */
+ (id)getHeroBestGroupCompletionHandle:(void(^)(id model, NSError *error))completionHandle;
@end
