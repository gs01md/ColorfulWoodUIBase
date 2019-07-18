//
//  CWUBCell_ImgRightTopTwo_TitleRightBottomTwo.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/7/13.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgRightTopTwo_TitleRightBottomTwo.h"

@interface CWUBCell_ImgRightTopTwo_TitleRightBottomTwo()
/**
 * 最右边 上面
 */
@property (nonatomic, strong) CWUBImageViewWithModel *m_img_right;
@property (nonatomic, strong) CWUBImageViewWithModel *m_img_right2;


@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_right;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_right2;

/**
 * 上传标识
 */
@property (nonatomic, strong) CWUBImageViewWithModel *m_img_rightLogo;

/**
 * 上传标识
 */
@property (nonatomic, strong) CWUBImageViewWithModel *m_img_rightLogo2;

@end

@implementation CWUBCell_ImgRightTopTwo_TitleRightBottomTwo

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_ImgRightTopTwo_TitleRightBottomTwo_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {
        self.m_model = model;
        if (self.m_model.m_bottomLineInfo.m_color) {
            self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
        }else{
            self.m_img_sep.backgroundColor = [UIColor clearColor];
        }
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self func_initWithSubViews];
    }

    return self;
}

- (void) func_initWithSubViews{

    [self addSubview:self.m_img_right];
    [self addSubview:self.m_img_right2];
    [self addSubview:self.m_img_rightLogo];
    [self addSubview:self.m_img_rightLogo2];
    [self addSubview:self.m_lbl_right2];
    [self addSubview:self.m_lbl_right];

    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_img_right mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(self.m_model.m_img_right.m_margin_top);
        make.right.equalTo(self).offset(-self.m_model.m_img_right.m_margin_right);
        make.width.mas_equalTo(self.m_model.m_img_right.m_width);
        make.height.mas_equalTo(self.m_model.m_img_right.m_height);
    }];

    [_m_lbl_right mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.m_img_right.mas_bottom).offset(self.m_model.m_title_right.m_margin_top);
        make.centerX.equalTo(self.m_img_right);
        //make.width.equalTo(@(self.m_model.m_title_right.m_width));

        if (self.m_model.m_title_right.m_width > 1) {
            make.width.mas_equalTo(self.m_model.m_title_right.m_width);
        }

        if (self.m_model.m_title_right.m_height > 1) {
            make.height.mas_equalTo(self.m_model.m_title_right.m_height);
        }

    }];

    [_m_img_right2 mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.m_img_right);
        make.right.equalTo(self.m_img_right.mas_left).offset(-self.m_model.m_img_right2.m_margin_right);
        make.width.mas_equalTo(self.m_model.m_img_right2.m_width);
        make.height.mas_equalTo(self.m_model.m_img_right2.m_height);
    }];

    [_m_lbl_right2 mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.m_img_right2);
        make.centerY.equalTo(self.m_lbl_right);

        if (self.m_model.m_title_right2.m_width > 1) {
            make.width.mas_equalTo(self.m_model.m_title_right2.m_width);
        }

        if (self.m_model.m_title_right2.m_height > 1) {
            make.height.mas_equalTo(self.m_model.m_title_right2.m_height);
        }
    }];

    [_m_img_rightLogo mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.m_img_right);
        make.centerX.equalTo(self.m_img_right);
        make.width.mas_equalTo(self.m_model.m_img_rightLogo.m_width);
        make.height.mas_equalTo(self.m_model.m_img_rightLogo.m_height);
    }];

    [_m_img_rightLogo2 mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.m_img_right2);
        make.centerX.equalTo(self.m_img_right2);

        make.width.mas_equalTo(self.m_model.m_img_rightLogo2.m_width);
        make.height.mas_equalTo(self.m_model.m_img_rightLogo2.m_height);

    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_right.mas_bottom).offset(self.m_model.m_title_right.m_margin_bottom);
    }];
}

-(CWUBCell_ImgRightTopTwo_TitleRightBottomTwo_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_ImgRightTopTwo_TitleRightBottomTwo_Model new];
    }

    return _m_model;
}

- (CWUBImageViewWithModel *)m_img_rightLogo{
    if (!_m_img_rightLogo) {
        _m_img_rightLogo = [[CWUBImageViewWithModel alloc] initWithModel:self.m_model.m_img_rightLogo];
    }
    return _m_img_rightLogo;
}

- (CWUBImageViewWithModel *)m_img_rightLogo2{
    if (!_m_img_rightLogo2) {
        _m_img_rightLogo2 = [[CWUBImageViewWithModel alloc] initWithModel:self.m_model.m_img_rightLogo2];
    }
    return _m_img_rightLogo2;
}

- (CWUBImageViewWithModel *)m_img_right{
    if (!_m_img_right) {
        _m_img_right = [[CWUBImageViewWithModel alloc] initWithModel:self.m_model.m_img_right];
    }
    return _m_img_right;
}

- (CWUBImageViewWithModel *)m_img_right2{
    if (!_m_img_right2) {
        _m_img_right2 = [[CWUBImageViewWithModel alloc] initWithModel:self.m_model.m_img_right2];
    }
    return _m_img_right2;
}

- (CWUBLabelWithModel *)m_lbl_right{

    if (!_m_lbl_right) {
        _m_lbl_right = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_right];
        _m_lbl_right.textAlignment = NSTextAlignmentLeft;

        _m_lbl_right.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_right.numberOfLines = 0;
    }
    return _m_lbl_right;
}

- (CWUBLabelWithModel *)m_lbl_right2{

    if (!_m_lbl_right2) {
        _m_lbl_right2 = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_right2];
        _m_lbl_right2.textAlignment = NSTextAlignmentRight;

        _m_lbl_right2.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_right2.numberOfLines = 0;
    }
    return _m_lbl_right2;
}

- (void) interface_updateWithModel:(CWUBCell_ImgRightTopTwo_TitleRightBottomTwo_Model*)model{

    [super interface_updateWithModel:model];

    self.m_model = model;

    [self.m_lbl_right interface_update:model.m_title_right];
    [self.m_lbl_right2 interface_update:model.m_title_right2];
    [self.m_img_right interface_update:model.m_img_right];
    [self.m_img_right2 interface_update:model.m_img_right2];
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    if (self.m_model.m_bottomLineInfo.m_image && self.m_model.m_bottomLineInfo.m_image.length>0) {
        [self.m_img_sep setImage:[UIImage imageNamed:self.m_model.m_bottomLineInfo.m_image]];
    }


    [self func_updateConsrtains];
}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

#pragma mark - 事件

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}


@end
