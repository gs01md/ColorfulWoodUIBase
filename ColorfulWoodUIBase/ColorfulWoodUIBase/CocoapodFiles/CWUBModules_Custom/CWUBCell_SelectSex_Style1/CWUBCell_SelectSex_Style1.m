//
//  CWUBCell_SelectSex_Style1.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/27.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_SelectSex_Style1.h"

@interface CWUBCell_SelectSex_Style1()

@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_left;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_man;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_woman;

@end

@implementation CWUBCell_SelectSex_Style1

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_SelectSex_Style1_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_SelectSex_Style1_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_SelectSex_Style1_Model*)model{

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

    [self addSubview:self.m_lbl_left];
    [self addSubview:self.m_lbl_man];
    [self addSubview:self.m_lbl_woman];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_lbl_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(self.m_model.m_title_left.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title_left.m_margin_bottom);
        make.left.equalTo(self).offset(self.m_model.m_title_left.m_margin_left);

    }];

    [_m_lbl_man mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_lbl_left);
        make.left.equalTo(self.m_lbl_left.mas_right).offset(self.m_model.m_title_man.m_margin_left);
        make.height.equalTo(@(self.m_model.m_title_man.m_height));
        make.width.equalTo(@(self.m_model.m_title_man.m_width));

    }];

    [_m_lbl_woman mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_lbl_left);
        make.left.equalTo(self.m_lbl_man.mas_right).offset(self.m_model.m_title_woman.m_margin_left);
        make.height.equalTo(@(self.m_model.m_title_woman.m_height));
        make.width.equalTo(@(self.m_model.m_title_man.m_width));
    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_woman.mas_bottom).offset(self.m_model.m_title_woman.m_margin_bottom);
        make.top.equalTo(self.m_lbl_left.mas_bottom).offset(self.m_model.m_title_left.m_margin_bottom);
    }];

}

-(CWUBCell_SelectSex_Style1_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_SelectSex_Style1_Model new];
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

- (CWUBLabelWithModel *)m_lbl_man{

    if (!_m_lbl_man) {
        _m_lbl_man = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_woman];
        _m_lbl_man.textAlignment = NSTextAlignmentCenter;
        _m_lbl_man.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_man.numberOfLines = 0;
        _m_lbl_man.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(event_man)];
        [_m_lbl_man addGestureRecognizer:tap];
    }

    return _m_lbl_man;
}

- (CWUBLabelWithModel *)m_lbl_woman{

    if (!_m_lbl_woman) {
        _m_lbl_woman = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_woman];
        _m_lbl_woman.textAlignment = NSTextAlignmentCenter;
        _m_lbl_woman.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_woman.numberOfLines = 0;
        _m_lbl_woman.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(event_woman)];
        [_m_lbl_woman addGestureRecognizer:tap];
    }

    return _m_lbl_woman;
}

- (void) interface_updateWithModel:(CWUBCell_SelectSex_Style1_Model*)model{

    [super interface_updateWithModel:model];
    
    self.m_model = model;
    [self.m_lbl_left interface_update:model.m_title_left];
    [self.m_lbl_woman interface_update:model.m_title_woman];
    [self.m_lbl_man interface_update:model.m_title_man];

    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    if (self.m_model.m_bottomLineInfo.m_image && self.m_model.m_bottomLineInfo.m_image.length>0) {
        [self.m_img_sep setImage:[UIImage imageNamed:self.m_model.m_bottomLineInfo.m_image]];
    }
    [self func_updateConsrtains];

    /**
     * 默认设置的是选中男士，但是有时也会设置女士为默认选中
     */
    if (self.m_model.m_isSelectedWoman) {
        [self event_woman];
    }else{
        [self event_man];
    }

}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

#pragma mark - 事件

- (void)event_man{

    if (!self.m_model.m_cantEnabled) {

        [self.m_lbl_woman interface_update:self.m_model.m_title_woman];
        [self.m_lbl_man interface_update:self.m_model.m_title_man];
        self.m_lbl_woman.text = self.m_model.m_title_woman.m_text;
        self.m_lbl_man.text = self.m_model.m_title_man.m_text;

        if ([self.delegate respondsToSelector:@selector(CWUBCell_SelectSex_Style1_Delegate_selectMan)]) {

            [self.delegate CWUBCell_SelectSex_Style1_Delegate_selectMan];
        }
    }
}

- (void)event_woman{

    if (!self.m_model.m_cantEnabled) {

        [self.m_lbl_woman interface_update:self.m_model.m_title_man];
        [self.m_lbl_man interface_update:self.m_model.m_title_woman];
        self.m_lbl_woman.text = self.m_model.m_title_woman.m_text;
        self.m_lbl_man.text = self.m_model.m_title_man.m_text;

        if ([self.delegate respondsToSelector:@selector(CWUBCell_SelectSex_Style1_Delegate_selectWoman)]) {

            [self.delegate CWUBCell_SelectSex_Style1_Delegate_selectWoman];
        }
    }
    

}

@end
