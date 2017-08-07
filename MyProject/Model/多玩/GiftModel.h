//
//  GiftModel.h
//  MyProject
//  天赋
//  Created by will on 2017/7/26.
//  Copyright © 2017年 will. All rights reserved.
//

#import "BaseModel.h"

@class GiftAModel;
@interface GiftModel : BaseModel

@property (nonatomic, strong) NSArray<GiftAModel *> *a;

@property (nonatomic, strong) NSArray<GiftAModel *> *d;

@property (nonatomic, strong) NSArray<GiftAModel *> *g;

@end
@interface GiftAModel : NSObject

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, strong) NSArray<NSString *> *level;

@end
