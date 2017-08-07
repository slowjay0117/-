//
//  ItemDetailModel.h
//  MyProject
//
//  Created by will on 2017/7/26.
//  Copyright © 2017年 will. All rights reserved.
//

#import "BaseModel.h"

@class ItemDetailExtattrsModel;
@interface ItemDetailModel : BaseModel

@property (nonatomic, strong) ItemDetailExtattrsModel *extAttrs;

@property (nonatomic, copy) NSString *need;

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, assign) NSInteger price;

@property (nonatomic, assign) NSInteger allPrice;

@property (nonatomic, assign) NSInteger sellPrice;

@property (nonatomic, copy) NSString *compose;

@property (nonatomic, copy) NSString *extDesc;

@property (nonatomic, copy) NSString *desc;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *tags;

@end


@interface ItemDetailExtattrsModel : NSObject

@property (nonatomic, assign) NSInteger flatMPPoolMod;

@property (nonatomic, assign) NSInteger flatPhysicalDamageMod;

@property (nonatomic, assign) CGFloat fercentBaseMPRegenMod;

@end
