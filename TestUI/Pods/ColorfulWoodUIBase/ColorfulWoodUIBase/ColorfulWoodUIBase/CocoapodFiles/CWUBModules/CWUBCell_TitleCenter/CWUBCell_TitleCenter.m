//
//  CWUBCell_TitleCenter.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/23.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleCenter.h"
#import "CWUBLabelWithModel.h"

@interface CWUBCell_TitleCenter()


@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_title;

@end

@implementation CWUBCell_TitleCenter

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleCenter_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_TitleCenter_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_TitleCenter_Model*)model{

    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.m_model = model;
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    [self func_initWithSubViews];
}

- (void) func_initWithSubViews{

    [self addSubview:self.m_lbl_title];
    [self addSubview:self.m_img_sep];
    
    [self func_updateConsrtains];

}

- (void)func_updateConsrtains{

    [_m_lbl_title mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(self.m_model.m_title.m_margin_left);
        make.top.equalTo(self).offset(self.m_model.m_title.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title.m_margin_bottom);
        make.right.equalTo(@(-self.m_model.m_title.m_margin_right));
        if (self.m_model.m_title.m_height>1.) {
            make.height.equalTo(@(self.m_model.m_title.m_height));
        }
    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_title.mas_bottom).offset(self.m_model.m_title.m_margin_bottom);
    }];
}

-(CWUBCell_TitleCenter_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleCenter_Model new];
    }

    return _m_model;
}

- (CWUBLabelWithModel *)m_lbl_title{

    if (!_m_lbl_title) {
        _m_lbl_title = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title];
        _m_lbl_title.textAlignment = NSTextAlignmentCenter;

        _m_lbl_title.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_title.numberOfLines = 0;
    }
    return _m_lbl_title;
}

- (void) interface_updateWithModel:(CWUBCell_TitleCenter_Model*)model{

    [super interface_updateWithModel:model];
    
    self.m_model = model;
    [self.m_lbl_title interface_update:model.m_title];
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

