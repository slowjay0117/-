//
//  TuWanNetManager.m
//  MyProject
//
//  Created by will on 2017/7/26.
//  Copyright © 2017年 will. All rights reserved.
//

#import "TuWanNetManager.h"

#define kTuWanPath  @"http://cache.tuwan.com/app/"
#define kAppId      @"appid":@1
#define kClassMore  @"classmore":@"indexpic"
#define kAppVer     @"appver":@2.1

#define kRemoveClassMore(dic)   [dic removeObjectForKey:@"classmore"];
#define kSetDtId(string, dic)   [dic setObject:string forKey:@"dtid"];
#define kSetClass(string, dic)  [dic setObject:string forKey:@"class"];
#define kSetMod(string, dic)    [dic setObject:string forKey:@"mod"];

@implementation TuWanNetManager
+ (id)getTuWanInfoWithType:(InfoType)type start:(NSInteger)start completionHandle:(void (^)(id, NSError *))completionHandle{
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:@{kAppId, kAppVer, kClassMore, @"start":@(start)}];
    switch (type) {
        case InfoTypeTouTiao:
            break;
        
        case InfoTypeDuJia:
            kRemoveClassMore(params)
            kSetClass(@"heronews", params)
            kSetMod(@"八卦", params);
            break;
            
        case InfoTypeAnHei3:
            kSetDtId(@"83623", params);
            break;
            
        case InfoTypeMoShou:
            kSetDtId(@"31537", params);
            break;
            
        case InfoTypeFengBao:
            kSetDtId(@"31538", params);
            break;
            
        case InfoTypeLuShi:
            kSetDtId(@"31528", params);
            break;
            
        case InfoTypeXingJi2:
            kRemoveClassMore(params);
            kSetDtId(@"91821", params);
            break;
            
        case InfoTypeShouWang:
            kRemoveClassMore(params);
            kSetDtId(@"57067", params);
            break;
            
        case InfoTypeTuPian:
        case InfoTypeShiPin:
        case InfoTypeGongLue:
            if (type == InfoTypeTuPian) {
                [params setObject:@"pic" forKey:@"type"];
            }
            if (type == InfoTypeShiPin) {
                [params setObject:@"video" forKey:@"type"];
            }
            if (type == InfoTypeGongLue) {
                [params setObject:@"guide" forKey:@"type"];
            }
            kRemoveClassMore(params);
            kSetDtId(@"83623,31528,31537,31538,57067,91821", params);
            break;
            
        case InfoTypeHuanHua:
            kRemoveClassMore(params);
            kSetClass(@"heronews", params);
            kSetMod(@"幻化", params);
            break;
            
        case InfoTypeQuWen:
            kSetClass(@"heronews", params);
            kSetMod(@"趣闻", params);
            kSetDtId(@"0", params);
            break;
            
        case InfoTypeCos:
            kSetDtId(@"0", params);
            kSetMod(@"cos", params);
            kSetClass(@"cos", params);
            break;
            
        case InfoTypeMeiNv:
            kSetClass(@"heronews", params);
            kSetMod(@"美女", params);
            [params setObject:@"cos1" forKey:@"typechild"];
            break;
            
        default:
            NSAssert1(NO, @"%s:type类型不正确", __func__);
            break;
    }
    
    NSString *path = [self percentPathWithPath:kTuWanPath parmas:params];
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandle([TuWanModel mj_objectWithKeyValues:responseObj], error);
    }];
    
}
@end
