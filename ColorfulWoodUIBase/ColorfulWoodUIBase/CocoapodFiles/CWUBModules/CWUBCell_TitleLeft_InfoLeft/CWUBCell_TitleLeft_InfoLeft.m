//
//  CWUBCell_TitleLeft_InfoLeft.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/14.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_InfoLeft.h"
#import "CWUBLableLeftTop.h"
#import "CWUBLabelWithModel.h"

@interface CWUBCell_TitleLeft_InfoLeft()



@property (nonatomic, strong) CWUBLableLeftTop *m_lblShow;
@property (nonatomic, strong) CWUBLabelWithModel *m_lblInfo;
@property (nonatomic, strong) UIImageView * m_img_sep;
@end

@implementation CWUBCell_TitleLeft_InfoLeft

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleLeft_InfoLeft_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {
        self.m_model = model;
        if (self.m_model.m_bottomLineInfo.m_color) {
            self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
        }else{
            self.m_img_sep.backgroundColor = [UIColor clearColor];
        }
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self initWithSubViews];
    }

    return self;
}

- (void) initWithSubViews{

    [self addSubview:self.m_lblShow];
    [self addSubview:self.m_lblInfo];
    [self addSubview:self.m_img_sep];

    [_m_lblShow mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Horizontal);
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.width.equalTo(@(self.m_model.m_titleWidth));
    }];

    [_m_lblInfo mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.left.equalTo(self.m_lblShow.mas_right).offset(CWUBBaseViewConfig_Space_Element_Horizontal);
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
    }];

    [_m_img_sep mas_makeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(CWUBBaseViewConfig_Space_Side_Horizontal));
        make.right.equalTo(@(-CWUBBaseViewConfig_Space_Side_Horizontal));
        make.bottom.equalTo(self);

        if (self.m_model.m_bottomLineInfo.m_isHiddenBottom) {
            make.height.equalTo(@(0.01));
        }else{
            make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        }

        make.top.equalTo(self.m_lblInfo.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical);
    }];
}

-(CWUBCell_TitleLeft_InfoLeft_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleLeft_InfoLeft_Model new];
    }

    return _m_model;
}

- (CWUBLableLeftTop *)m_lblShow{

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
        _m_lblInfo.textAlignment = NSTextAlignmentLeft;
        _m_lblInfo.font = self.m_model.m_info.m_font;
        _m_lblInfo.textColor = self.m_model.m_info.m_color;
        _m_lblInfo.lineBreakMode = NSLineBreakByCharWrapping;
        _m_lblInfo.numberOfLines = 0;
    }

    return _m_lblInfo;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}



- (void) interface_updateWithModel:(CWUBCell_TitleLeft_InfoLeft_Model*)model{

    self.m_model = model;
    [self.m_lblInfo interface_update:model.m_info];
    [self.m_lblShow interface_update:model.m_title];

    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
}

/**
 * 隐藏底部的虚线
 */
- (void) interface_bottomLine_hidden{
    [self.m_img_sep setImage:[UIImage imageNamed:@""]];
}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end

