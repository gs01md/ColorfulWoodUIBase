//
//  CWUBCell_TitleLeft_ImgFollow.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/1/8.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_ImgFollow.h"

@interface CWUBCell_TitleLeft_ImgFollow()<
UITextViewDelegate
>

@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_left;
@property (nonatomic, strong) CWUBImageViewWithModel *m_imgView_follow;
/**
 * 类似图片中央的播放按钮
 */
@property (nonatomic, strong) CWUBImageViewWithModel *m_imgView_followLogo;

@end

@implementation CWUBCell_TitleLeft_ImgFollow

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleLeft_ImgFollow_Model*)model{

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

    [self addSubview:self.m_lbl_left];
    [self addSubview:self.m_imgView_follow];
    [self addSubview:self.m_imgView_followLogo];

    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_lbl_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(self.m_model.m_title_left.m_margin_left);

        if(!self.m_model.m_title_isTopView){
            make.top.equalTo(self).offset(self.m_model.m_title_left.m_margin_top);
        }else{
            make.centerY.equalTo(self.m_imgView_follow);
        }

        if (self.m_model.m_title_left.m_width > 1) {
            make.width.equalTo(@(self.m_model.m_title_left.m_width));
        }

    }];

    [_m_imgView_follow mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).offset(self.m_model.m_img_follow.m_margin_top);
        make.left.equalTo(self.m_lbl_left.mas_right).offset(self.m_model.m_img_follow.m_margin_left);
        make.width.mas_equalTo(self.m_model.m_img_follow.m_width);
        make.height.mas_equalTo(self.m_model.m_img_follow.m_height);

    }];

    [_m_imgView_followLogo mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_imgView_follow);
        make.centerX.equalTo(self.m_imgView_follow);
        make.width.mas_equalTo(self.m_model.m_img_followLogo.m_width);
        make.height.mas_equalTo(self.m_model.m_img_followLogo.m_height);

    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_imgView_follow.mas_bottom).offset(self.m_model.m_bottomLineInfo.m_margin_top);
    }];
}

-(CWUBCell_TitleLeft_ImgFollow_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleLeft_ImgFollow_Model new];
    }

    return _m_model;
}

- (CWUBLabelWithModel *)m_lbl_left{

    if (!_m_lbl_left) {
        _m_lbl_left = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_left];
        _m_lbl_left.textAlignment = NSTextAlignmentLeft;

        _m_lbl_left.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_left.numberOfLines = 0;
    }
    return _m_lbl_left;
}

- (CWUBImageViewWithModel *)m_imgView_follow{

    if (!_m_imgView_follow) {
        _m_imgView_follow = [[CWUBImageViewWithModel alloc] initWithModel:self.m_model.m_img_follow];
    }
    return _m_imgView_follow;
}

- (CWUBImageViewWithModel *)m_imgView_followLogo{

    if (!_m_imgView_followLogo) {
        _m_imgView_followLogo = [[CWUBImageViewWithModel alloc] initWithModel:self.m_model.m_img_followLogo];
    }
    return _m_imgView_followLogo;
}

- (void) interface_updateWithModel:(CWUBCell_TitleLeft_ImgFollow_Model*)model{

    [super interface_updateWithModel:model];

    self.m_model = model;
    [self.m_imgView_follow interface_update:model.m_img_follow];
    [self.m_imgView_followLogo interface_update:model.m_img_followLogo];
    [self.m_lbl_left interface_update:model.m_title_left];

    [self func_updateConsrtains];
}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end

