//
//  TuWanNetManager.h
//  MyProject
//
//  Created by will on 2017/7/26.
//  Copyright © 2017年 will. All rights reserved.
//

#import "BaseNetManager.h"
#import "TuWanModel.h"
#import "TuWanPicModel.h"
#import "TuWanVideoModel.h"

typedef NS_ENUM(NSInteger, InfoType){
    InfoTypeTouTiao,    //头条
    InfoTypeDuJia,      //独家
    InfoTypeAnHei3,     //暗黑3
    InfoTypeMoShou,     //魔兽
    InfoTypeFengBao,    //风暴
    InfoTypeLuShi,      //炉石
    InfoTypeXingJi2,    //星际2
    InfoTypeShouWang,   //守望
    InfoTypeTuPian,     //图片
    InfoTypeShiPin,     //视频
    InfoTypeGongLue,    //攻略
    InfoTypeHuanHua,    //幻化
    InfoTypeQuWen,      //趣闻
    InfoTypeCos,        //COS
    InfoTypeMeiNv,      //美女
};

@interface TuWanNetManager : BaseNetManager

/**
 *  @author will, 17-07-27 14:07:12
 *  获取某种类型的资讯
 *
 *  @param type 资讯类型
 *  @param start 当前资讯起始索引值，最小为0.eg 0，11，22，33，44....
 *
 *  @return 请求所在任务
 */
+ (id)getTuWanInfoWithType:(InfoType)type start:(NSInteger)start kCompletionHandle;

+ (id)getVideoDetailWithId:(NSString *)aid kCompletionHandle;

+ (id)getPicDetailWithId:(NSString *)aid kCompletionHandle;

@end
