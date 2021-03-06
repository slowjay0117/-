//
//  TuWanImageCell.h
//  MyProject
//
//  Created by will on 2017/8/8.
//  Copyright © 2017年 will. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyImageView.h"

@interface TuWanImageCell : UITableViewCell
/** 题目标签 */
@property (nonatomic,strong) UILabel *titleLb;
/** 点击数标签 */
@property (nonatomic,strong) UILabel *clickNumLb;
/** 图片1 */
@property (nonatomic,strong) MyImageView *iconIV0;
/** 图片2 */
@property (nonatomic,strong) MyImageView *iconIV1;
/** 图片3 */
@property (nonatomic,strong) MyImageView *iconIV2;
@end
