//
//  TuWanImageCell.m
//  MyProject
//
//  Created by will on 2017/8/8.
//  Copyright © 2017年 will. All rights reserved.
//

#import "TuWanImageCell.h"

@implementation TuWanImageCell
- (UILabel *)titleLb{
    if (!_titleLb) {
        _titleLb = [UILabel new];
        _titleLb.font = [UIFont systemFontOfSize:17];
    }
    return _titleLb;
}
- (UILabel *)clickNumLb{
    if (!_clickNumLb) {
        _clickNumLb = [UILabel new];
        _clickNumLb.font = [UIFont systemFontOfSize:12];
        _clickNumLb.textColor = [UIColor lightGrayColor];
        _clickNumLb.textAlignment = NSTextAlignmentRight;
    }
    return _clickNumLb;
}
- (MyImageView *)iconIV0{
    if (!_iconIV0) {
        _iconIV0 = [MyImageView new];
        //_iconIV0.contentMode = UIViewContentModeScaleAspectFill;
    }
    return _iconIV0;
}
- (MyImageView *)iconIV1{
    if (!_iconIV1) {
        _iconIV1 = [MyImageView new];
        //_iconIV1.contentMode = 2;
    }
    return _iconIV1;
}
- (MyImageView *)iconIV2{
    if (!_iconIV2) {
        _iconIV2 = [MyImageView new];
        //_iconIV2.contentMode = 2;
    }
    return _iconIV2;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.titleLb];
        [self.contentView addSubview:self.clickNumLb];
        [self.contentView addSubview:self.iconIV0];
        [self.contentView addSubview:self.iconIV1];
        [self.contentView addSubview:self.iconIV2];
        /** 题目 左上 10，右10 */
        [self.titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.mas_equalTo(10);
            make.right.mas_equalTo(self.clickNumLb.mas_left).mas_equalTo(-10);
        }];
        /** 点击数 上右10像素，宽度最大70，最小40 */
        [self.clickNumLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(10);
            make.right.mas_equalTo(-10);
            make.width.mas_lessThanOrEqualTo(70);
            make.width.mas_greaterThanOrEqualTo(40);
        }];
        /** 图片：宽高相等，间距5，边缘10 高度88 上边缘5 */
        [self.iconIV0 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(88);
            make.left.mas_equalTo(10);
            make.top.mas_equalTo(self.titleLb.mas_bottom).mas_equalTo(5);
        }];
        [self.iconIV1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(self.iconIV0);
            make.left.mas_equalTo(self.iconIV0.mas_right).mas_equalTo(5);
            make.topMargin.mas_equalTo(self.iconIV0);
        }];
        [self.iconIV2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(self.iconIV0);
            make.left.mas_equalTo(self.iconIV1.mas_right).mas_equalTo(5);
            make.right.mas_equalTo(-10);
            make.topMargin.mas_equalTo(self.iconIV1);
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
