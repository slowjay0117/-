//
//  TuWanListCell.m
//  MyProject
//
//  Created by will on 2017/8/8.
//  Copyright © 2017年 will. All rights reserved.
//

#import "TuWanListCell.h"

@implementation TuWanListCell
- (UIImageView *)iconIV{
    if (!_iconIV) {
        _iconIV = [[UIImageView alloc]init];
        //内容模式：保持比例，填充满
        //_iconIV.contentMode = UIViewContentModeScaleAspectFill;
    }
    return _iconIV;
}
- (UILabel *)titleLb{
    if (!_titleLb) {
        _titleLb = [UILabel new];
        _titleLb.font = [UIFont systemFontOfSize:17];
    }
    return _titleLb;
}
- (UILabel *)longTitleLb{
    if (!_longTitleLb) {
        _longTitleLb = [UILabel new];
        _longTitleLb.font = [UIFont systemFontOfSize:14];
        _longTitleLb.textColor = [UIColor lightGrayColor];
        _longTitleLb.numberOfLines = 0;
    }
    return _longTitleLb;
}
- (UILabel *)clicksNumberLb{
    if (!_clicksNumberLb) {
        _clicksNumberLb = [UILabel new];
        _clicksNumberLb.textColor = [UIColor lightGrayColor];
        _clicksNumberLb.font = [UIFont systemFontOfSize:12];
    }
    return _clicksNumberLb;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self.contentView addSubview:self.iconIV];
        [self.contentView addSubview:self.titleLb];
        [self.contentView addSubview:self.longTitleLb];
        [self.contentView addSubview:self.clicksNumberLb];
        
        //图片 左10，宽高92、70，竖向居中
        [self.iconIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(10);
            make.size.mas_equalTo(CGSizeMake(92, 70));
            make.centerY.mas_equalTo(0);
        }];
        //题目 距离图片右边缘8，右边缘10，上边缘比图片上边缘矮3
        [self.titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.iconIV.mas_right).mas_equalTo(8);
            make.right.mas_equalTo(-10);
            make.topMargin.mas_equalTo(self.iconIV.mas_topMargin).mas_equalTo(3);
        }];
        //长题目 左右边缘与题目一样，上边距离题目下边8像素
        [self.longTitleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leftMargin.mas_equalTo(self.titleLb.mas_leftMargin).mas_equalTo(0);
            make.rightMargin.mas_equalTo(self.titleLb.mas_rightMargin).mas_equalTo(0);
            make.top.mas_equalTo(self.titleLb.mas_bottom).mas_equalTo(8);
        }];
        //点击数 下边缘与图片对齐，右边缘与任意title对齐
        [self.clicksNumberLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottomMargin.mas_equalTo(self.iconIV.mas_bottomMargin).mas_equalTo(0);
            make.rightMargin.mas_equalTo(self.titleLb.mas_rightMargin).mas_equalTo(0);
        }];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
