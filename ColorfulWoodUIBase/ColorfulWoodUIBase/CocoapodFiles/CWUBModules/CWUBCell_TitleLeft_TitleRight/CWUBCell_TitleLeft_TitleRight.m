//
//  CWUBCell_TitleLeft_TitleRight.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_TitleRight.h"
#import "CWUBLabelWithModel.h"

@interface CWUBCell_TitleLeft_TitleRight()

@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_left;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_right;
@property (nonatomic, strong) UIImageView * m_img_sep;
@end
@implementation CWUBCell_TitleLeft_TitleRight

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleLeft_TitleRight_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_TitleLeft_TitleRight_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_TitleLeft_TitleRight_Model*)model{

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

    [self addSubview:self.m_lbl_left];
    [self addSubview:self.m_lbl_right];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{
    [_m_lbl_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(self.m_model.m_title_left.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title_left.m_margin_bottom);
        make.left.equalTo(self).offset(self.m_model.m_title_left.m_margin_left);
        make.right.equalTo(self.mas_centerX).offset(-self.m_model.m_title_left.m_margin_right);
    }];

    [_m_lbl_right mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).offset(self.m_model.m_title_right.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title_right.m_margin_bottom);
        make.left.equalTo(self.mas_centerX).offset(self.m_model.m_title_right.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_title_right.m_margin_right);
    }];

    [_m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_right.mas_bottom).offset(self.m_model.m_title_right.m_margin_bottom);
        make.top.equalTo(self.m_lbl_left.mas_bottom).offset(self.m_model.m_title_left.m_margin_bottom);
    }];

}

-(CWUBCell_TitleLeft_TitleRight_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleLeft_TitleRight_Model new];
    }

    return _m_model;
}

- (CWUBLabelWithModel *)m_lbl_left{

    if (!_m_lbl_left) {
        _m_lbl_left = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_left];
        _m_lbl_left.textAlignment = NSTextAlignmentRight;
        _m_lbl_left.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_left.numberOfLines = 0;
    }
    return _m_lbl_left;
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

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

- (void) interface_updateWithModel:(CWUBCell_TitleLeft_TitleRight_Model*)model{

    self.m_model = model;
    [self.m_lbl_left interface_update:model.m_title_left];
    [self.m_lbl_right interface_update:model.m_title_right];

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

