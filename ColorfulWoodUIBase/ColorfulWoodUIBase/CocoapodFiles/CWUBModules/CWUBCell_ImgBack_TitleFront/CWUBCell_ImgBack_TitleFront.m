//
//  CWUBCell_ImgBack_TitleFront.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/21.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgBack_TitleFront.h"

@interface CWUBCell_ImgBack_TitleFront()

@property (nonatomic, strong) CWUBImageViewWithModel *m_img_back;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_front;
@property (nonatomic, strong) UIImageView * m_img_sep;
@end

@implementation CWUBCell_ImgBack_TitleFront

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_ImgBack_TitleFront_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_ImgBack_TitleFront_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_ImgBack_TitleFront_Model*)model{

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

    [self addSubview:self.m_img_back];
    [self addSubview:self.m_lbl_front];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_img_back mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(self.m_model.m_image.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_image.m_margin_right);
        if (self.m_model.m_image.m_height>1) {
            make.height.equalTo(@(self.m_model.m_image.m_height));
        }
        make.top.equalTo(self).offset(self.m_model.m_image.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_image.m_margin_bottom);
    }];

    [_m_lbl_front mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(self.m_model.m_title.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_title.m_margin_right);
        make.centerY.equalTo(self.m_img_back).offset(self.m_model.m_title.m_margin_CenterY);
    }];

    [_m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_img_back.mas_bottom).offset(self.m_model.m_image.m_margin_bottom);

    }];
}

-(CWUBCell_ImgBack_TitleFront_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_ImgBack_TitleFront_Model new];
    }

    return _m_model;
}

- (CWUBLabelWithModel *)m_lbl_front{

    if (!_m_lbl_front) {
        _m_lbl_front = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title];
        _m_lbl_front.textAlignment = NSTextAlignmentCenter;

        _m_lbl_front.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_front.numberOfLines = 0;
    }
    return _m_lbl_front;
}

-(CWUBImageViewWithModel *)m_img_back{

    if(!_m_img_back){
        _m_img_back = [[CWUBImageViewWithModel alloc] initWithModel:self.m_model.m_image];
    }
    return _m_img_back;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

- (void) interface_updateWithModel:(CWUBCell_ImgBack_TitleFront_Model*)model{

    [super interface_updateWithModel:model];
    
    self.m_model = model;
    [self.m_lbl_front interface_update:self.m_model.m_title];
    [self.m_img_back interface_update:self.m_model.m_image];
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

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

#pragma mark - 事件

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end
