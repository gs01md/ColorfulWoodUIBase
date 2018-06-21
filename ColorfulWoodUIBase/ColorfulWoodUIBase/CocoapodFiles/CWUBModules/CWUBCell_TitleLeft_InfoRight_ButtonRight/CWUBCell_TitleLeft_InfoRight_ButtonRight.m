//
//  CWUBCell_TitleLeft_InfoRight_ButtonRight.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_InfoRight_ButtonRight.h"
#import "CWUBLabelWithModel.h"

@interface CWUBCell_TitleLeft_InfoRight_ButtonRight()

@property (nonatomic, strong) CWUBLabelWithModel *m_lblShow;
@property (nonatomic, strong) CWUBLabelWithModel *m_lblShowBtn;
@property (nonatomic, strong) UIImageView * m_img_btn;
@property (nonatomic, strong) UIImageView * m_img_sep;

@end

@implementation CWUBCell_TitleLeft_InfoRight_ButtonRight

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleLeft_InfoRight_ButtonRight_Model*)model{

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
    [self addSubview:self.m_lblShowBtn];
    [self addSubview:self.m_img_btn];
    [self addSubview:self.m_img_sep];

    [_m_lblShow mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.m_lblShowBtn.mas_left).offset(-10.);
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.left.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Horizontal);
    }];

    [_m_img_btn mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.left.equalTo(self.m_lblShow.mas_right).offset(CWUBBaseViewConfig_Space_Element_Horizontal);
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
        make.width.equalTo(@(self.m_model.m_btnImg.m_width));
        make.height.equalTo(@(self.m_model.m_btnImg.m_height));
    }];

    [_m_lblShowBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.m_img_btn.mas_left).offset(-10.);
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.left.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Horizontal);
    }];

    [_m_img_sep mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lblShow.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical);
    }];
}

-(CWUBCell_TitleLeft_InfoRight_ButtonRight_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleLeft_InfoRight_ButtonRight_Model new];
    }

    return _m_model;
}

- (CWUBLabelWithModel *)m_lblShow{

    if (!_m_lblShow) {
        _m_lblShow = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title];
        _m_lblShow.textAlignment = NSTextAlignmentRight;
        _m_lblShow.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lblShow.numberOfLines = 0;
    }
    return _m_lblShow;
}

- (CWUBLabelWithModel *)m_lblShowBtn{

    if (!_m_lblShowBtn) {
        _m_lblShowBtn = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title_btn];
        _m_lblShowBtn.textAlignment = NSTextAlignmentRight;
        _m_lblShowBtn.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lblShowBtn.numberOfLines = 0;
    }
    return _m_lblShowBtn;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

-(UIImageView *)m_img_btn{

    if(!_m_img_btn){
        _m_img_btn = [UIImageView new];
        [_m_img_btn setImage:[UIImage imageNamed:self.m_model.m_btnImg.m_imgName]];
        _m_img_btn.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_btn.clipsToBounds = YES;
        [_m_img_btn setClipsToBounds:YES];
    }
    return _m_img_btn;
}

- (void) interface_updateWithModel:(CWUBCell_TitleLeft_InfoRight_ButtonRight_Model*)model{

    self.m_model = model;

    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }

    [self.m_img_btn setImage:[UIImage imageNamed:self.m_model.m_btnImg.m_imgName]];

    [self.m_lblShow interface_update:model.m_title];
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


