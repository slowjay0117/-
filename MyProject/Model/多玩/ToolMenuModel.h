//
//  ToolMenuModel.h
//  MyProject
//
//  Created by will on 2017/7/26.
//  Copyright © 2017年 will. All rights reserved.
//

#import "BaseModel.h"

@interface ToolMenuModel : BaseModel

@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *tag;

@end
