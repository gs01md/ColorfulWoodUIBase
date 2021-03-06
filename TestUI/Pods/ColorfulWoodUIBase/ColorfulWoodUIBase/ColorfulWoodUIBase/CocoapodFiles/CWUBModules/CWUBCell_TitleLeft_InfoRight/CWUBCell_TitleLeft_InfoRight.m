//
//  CWUBCell_TitleLeft_InfoRight.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/14.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_InfoRight.h"
#import "CWUBLableLeftTop.h"
#import "CWUBLabelWithModel.h"

@interface CWUBCell_TitleLeft_InfoRight()

@property (nonatomic, strong) CWUBLableLeftTop *m_lblShow;
@property (nonatomic, strong) CWUBLabelWithModel *m_lblInfo;

@end

@implementation CWUBCell_TitleLeft_InfoRight

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleLeft_InfoRight_Model*)model{

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

    [self addSubview:self.m_lblShow];
    [self addSubview:self.m_lblInfo];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_lblShow mas_remakeConstraints:^(MASConstraintMaker *make) {

        float width = CWUBBaseViewConfig_Width_Title_Big;
        if (self.m_model.m_title.m_width>0.) {
            width = self.m_model.m_title.m_width;
        }
        make.left.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Horizontal);
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.width.equalTo(@(width));
    }];

    [_m_lblInfo mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.left.equalTo(self.m_lblShow.mas_right).offset(CWUBBaseViewConfig_Space_Element_Horizontal);
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lblInfo.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical);
    }];
}

#pragma mark - 属性
-(CWUBCell_TitleLeft_InfoRight_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleLeft_InfoRight_Model new];
    }

    return _m_model;
}

- (UILabel *)m_lblShow{

    if (!_m_lblShow) {
        _m_lblShow = [CWUBLableLeftTop new];
        _m_lblShow.text = self.m_model.m_title.m_text;
        _m_lblShow.textAlignment = NSTextAlignmentLeft;
        _m_lblShow.font = self.m_model.m_title.m_font;
        _m_lblShow.textColor = self.m_model.m_title.m_color;
        _m_lblShow.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lblShow.numberOfLines = 0;
    }
    return _m_lblShow;
}

- (CWUBLabelWithModel *)m_lblInfo{

    if (!_m_lblInfo) {
        _m_lblInfo = [CWUBLabelWithModel new];
        _m_lblInfo.text = self.m_model.m_info.m_text;
        _m_lblInfo.textAlignment = NSTextAlignmentRight;
        _m_lblInfo.font = self.m_model.m_info.m_font;
        _m_lblInfo.textColor = self.m_model.m_info.m_color;
        _m_lblInfo.lineBreakMode = NSLineBreakByCharWrapping;
        _m_lblInfo.numberOfLines = 0;
    }

    return _m_lblInfo;
}

- (void) interface_updateWithModel:(CWUBCell_TitleLeft_InfoRight_Model*)model{

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
    [self.m_lblInfo interface_update:model.m_info];

    [self.m_lblShow interface_update:model.m_title];

    [self func_updateConsrtains];
}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end

