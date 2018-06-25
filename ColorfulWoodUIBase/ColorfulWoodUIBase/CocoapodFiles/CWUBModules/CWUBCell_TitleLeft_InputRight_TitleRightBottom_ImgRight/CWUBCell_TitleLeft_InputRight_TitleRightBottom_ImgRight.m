//
//  CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight.h"

@interface CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight()

@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_left;
@property (nonatomic, strong) CWUBTextfieldWithModel *m_textfield_right;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_rightBottom;
@property (nonatomic, strong) UIImageView * m_img_right;
@property (nonatomic, strong) UIImageView * m_img_sep;

@end

@implementation CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Model*)model{

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

    [self addSubview:self.m_lbl_left];
    [self addSubview:self.m_textfield_right];
    [self addSubview:self.m_lbl_rightBottom];
    [self addSubview:self.m_img_right];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_lbl_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(self.m_model.m_title_left.m_margin_left);
        make.centerY.equalTo(self.m_textfield_right);
        make.width.equalTo(@(self.m_model.m_title_left.m_width));
    }];

    [_m_img_right mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self).offset(-self.m_model.m_img_right.m_margin_right);
        make.centerY.equalTo(self.m_textfield_right);
        make.width.equalTo(@(self.m_model.m_img_right.m_width));
        make.height.equalTo(@(self.m_model.m_img_right.m_height));
    }];

    [_m_textfield_right mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).offset(self.m_model.m_input_right.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_input_right.m_margin_bottom);
        make.left.equalTo(self.m_lbl_left.mas_right).offset(self.m_model.m_input_right.m_margin_left);
        make.right.equalTo(self.m_img_right.mas_left).offset(-self.m_model.m_input_right.m_margin_right);
    }];

    [_m_lbl_rightBottom mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title_bottomRight.m_margin_bottom);
        make.left.equalTo(self.m_lbl_left.mas_right).offset(self.m_model.m_input_right.m_margin_left);
        make.right.equalTo(self.m_textfield_right);
    }];

    [_m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_textfield_right.mas_bottom).offset(self.m_model.m_bottomLineInfo.m_margin_top);
    }];
}


-(CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Model new];
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

- (CWUBLabelWithModel *)m_lbl_rightBottom{

    if (!_m_lbl_rightBottom) {
        _m_lbl_rightBottom = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_bottomRight];
        _m_lbl_rightBottom.textAlignment = NSTextAlignmentRight;

        _m_lbl_rightBottom.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_rightBottom.numberOfLines = 0;
    }
    return _m_lbl_rightBottom;
}

- (CWUBTextfieldWithModel *)m_textfield_right{

    if (!_m_textfield_right) {
        _m_textfield_right = [[CWUBTextfieldWithModel alloc] initWithModel:self.m_model.m_input_right];
        _m_textfield_right.textAlignment = NSTextAlignmentRight;
        [_m_textfield_right addTarget:self action:@selector(event_textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    }

    return _m_textfield_right;
}

-(UIImageView *)m_img_right{

    if(!_m_img_right){
        _m_img_right = [UIImageView new];
        [_m_img_right setImage:[UIImage imageNamed:self.m_model.m_img_right.m_imgName]];
        _m_img_right.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_right.clipsToBounds = YES;
        [_m_img_right setClipsToBounds:YES];
    }
    return _m_img_right;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

- (void) interface_updateWithModel:(CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Model*)model{

    self.m_model = model;
    [self.m_textfield_right interface_update:model.m_input_right];
    [self.m_lbl_left interface_update:model.m_title_left];
    [self.m_lbl_rightBottom interface_update:model.m_title_bottomRight];
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

- (void)event_textFieldDidChange:(UITextField *)theTextField{

    self.m_model.m_input_right.m_text = [theTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    self.m_model.m_dataOut = self.m_model.m_input_right.m_text;

    if ([self.delegate respondsToSelector:@selector(CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Delegate_textChanged:)]) {

        [self.delegate CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Delegate_textChanged:self.m_model.m_dataOut];
    }
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

#pragma mark - 接口

- (NSString*) interface_getInput{

    return self.m_textfield_right.text;
}
@end
