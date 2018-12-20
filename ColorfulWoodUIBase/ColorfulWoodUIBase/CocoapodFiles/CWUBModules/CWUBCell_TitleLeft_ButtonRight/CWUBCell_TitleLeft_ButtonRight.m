//
//  CWUBCell_TitleLeft_ButtonRight.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/23.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_ButtonRight.h"
#import "CWUBLabelWithModel.h"

@interface CWUBCell_TitleLeft_ButtonRight()

@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_title;
@property (nonatomic, strong) UIImageView * m_img_btn;


@end

@implementation CWUBCell_TitleLeft_ButtonRight

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleLeft_ButtonRight_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_TitleLeft_ButtonRight_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_TitleLeft_ButtonRight_Model*)model{

    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.m_model = model;
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    [self func_initWithSubViews];

    self.backgroundColor = self.m_model.m_color_backGround;
}

- (void) func_initWithSubViews{

    [self addSubview:self.m_lbl_title];
    [self addSubview:self.m_img_btn];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_lbl_title mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.m_img_btn.mas_left).offset(-self.m_model.m_title.m_margin_right);
        make.top.equalTo(self).offset(self.m_model.m_title.m_margin_top);
        make.left.equalTo(self).offset(self.m_model.m_title.m_margin_left);
    }];

    [_m_img_btn mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_lbl_title);
        make.left.equalTo(self.m_lbl_title.mas_right).offset(self.m_model.m_btnImg.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_btnImg.m_margin_right);
        make.width.equalTo(@(self.m_model.m_btnImg.m_width));
        make.height.equalTo(@(self.m_model.m_btnImg.m_height));
    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_title.mas_bottom).offset(self.m_model.m_title.m_margin_bottom);

    }];

}

-(CWUBCell_TitleLeft_ButtonRight_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleLeft_ButtonRight_Model new];
    }

    return _m_model;
}

- (CWUBLabelWithModel *)m_lbl_title{

    if (!_m_lbl_title) {
        _m_lbl_title = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title];
        _m_lbl_title.textAlignment = NSTextAlignmentLeft;
        _m_lbl_title.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_title.numberOfLines = self.m_model.m_title.m_numberOfLines;
    }
    return _m_lbl_title;
}

-(UIImageView *)m_img_btn{

    if(!_m_img_btn){
        _m_img_btn = [UIImageView new];
        [_m_img_btn setImage:[UIImage imageNamed:self.m_model.m_btnImg.m_imgName]];
        _m_img_btn.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_btn.clipsToBounds = NO;
        [_m_img_btn setClipsToBounds:NO];
    }
    return _m_img_btn;
}

- (void) interface_updateWithModel:(CWUBCell_TitleLeft_ButtonRight_Model*)model{

    [super interface_updateWithModel:model];

    self.m_model = model;

    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    if (self.m_model.m_bottomLineInfo.m_image && self.m_model.m_bottomLineInfo.m_image.length>0) {
        [self.m_img_sep setImage:[UIImage imageNamed:self.m_model.m_bottomLineInfo.m_image]];
    }
    [self.m_img_btn setImage:[UIImage imageNamed:self.m_model.m_btnImg.m_imgName]];

    [self.m_lbl_title interface_update:model.m_title];
    self.backgroundColor = self.m_model.m_color_backGround;

    [self func_updateConsrtains];
}

/**
 * 获取该列的操作标识 - 用于点击事件
 */
- (NSString*) interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end



