//
//  CWUBCell_TitleTop_TitleBottom.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleTop_TitleBottom.h"

@interface CWUBCell_TitleTop_TitleBottom()

@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_top;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_bottom;
@property (nonatomic, strong) UIImageView * m_img_sep;
@end
@implementation CWUBCell_TitleTop_TitleBottom

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleTop_TitleBottom_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_TitleTop_TitleBottom_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_TitleTop_TitleBottom_Model*)model{

    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.m_model = model;
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    [self initWithSubViews];
}

- (void) initWithSubViews{

    [self addSubview:self.m_lbl_top];
    [self addSubview:self.m_lbl_bottom];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];

}

- (void)func_updateConsrtains{

    [_m_lbl_top mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(self.m_model.m_title_top.m_margin_top);
        make.bottom.equalTo(self.m_lbl_bottom.mas_top).offset(-self.m_model.m_title_top.m_margin_bottom);
        make.left.equalTo(self).offset(self.m_model.m_title_top.m_margin_left);
        make.right.equalTo(self.mas_centerX).offset(-self.m_model.m_title_top.m_margin_right);
    }];

    [_m_lbl_bottom mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self.m_lbl_top.mas_bottom).offset(self.m_model.m_title_bottom.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title_bottom.m_margin_bottom);
        make.left.equalTo(self).offset(self.m_model.m_title_bottom.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_title_bottom.m_margin_right);
    }];

    [_m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_bottom.mas_bottom).offset(self.m_model.m_title_bottom.m_margin_bottom);
    }];
}

-(CWUBCell_TitleTop_TitleBottom_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleTop_TitleBottom_Model new];
    }

    return _m_model;
}

- (CWUBLabelWithModel *)m_lbl_top{

    if (!_m_lbl_top) {
        _m_lbl_top = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_top];
        _m_lbl_top.textAlignment = NSTextAlignmentLeft;
        _m_lbl_top.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_top.numberOfLines = 0;
    }
    return _m_lbl_top;
}

- (CWUBLabelWithModel *)m_lbl_bottom{

    if (!_m_lbl_bottom) {
        _m_lbl_bottom = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_bottom];
        _m_lbl_bottom.textAlignment = NSTextAlignmentLeft;
        _m_lbl_bottom.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_bottom.numberOfLines = 0;
    }

    return _m_lbl_bottom;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

- (void) interface_updateWithModel:(CWUBCell_TitleTop_TitleBottom_Model*)model{

    self.m_model = model;
    [self.m_lbl_top interface_update:model.m_title_top];
    [self.m_lbl_bottom interface_update:model.m_title_bottom];

    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }

    [self func_updateConsrtains];

}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

#pragma mark - 事件
- (void)event_imgLeft{
    //    if ([self.delegate respondsToSelector:@selector(CWUBCell_Passenger_Delete_Delegate_Del:)]) {
    //
    //        [self.delegate CWUBCell_Passenger_Delete_Delegate_Del:self.m_model.m_id];
    //    }
}
@end
