//
//  CWUBCell_TitleLeft_TextViewRight_TitleRightBottom.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_TextViewRight_TitleRightBottom.h"

@interface CWUBCell_TitleLeft_TextViewRight_TitleRightBottom()<
UITextViewDelegate
>

@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_left;
@property (nonatomic, strong) UITextView *m_textfield_right;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_rightBottom;
@property (nonatomic, strong) UIImageView * m_img_sep;
@end

@implementation CWUBCell_TitleLeft_TextViewRight_TitleRightBottom

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleLeft_TextViewRight_TitleRightBottom_Model*)model{

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
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];

}

- (void)func_updateConsrtains{

    [_m_lbl_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Horizontal);
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.width.equalTo(@(CWUBBaseViewConfig_Width_Title_Default));
    }];
    _m_textfield_right.text = self.m_model.m_input_right.m_text;
    [_m_textfield_right mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);

        make.left.equalTo(self.m_lbl_left.mas_right).offset(CWUBBaseViewConfig_Space_Element_Horizontal);
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);

        make.height.mas_equalTo(self.m_textfield_right.contentSize.height);

        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
    }];

    [_m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_textfield_right.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical);
    }];
}

- (CWUBCell_TitleLeft_TextViewRight_TitleRightBottom_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleLeft_TextViewRight_TitleRightBottom_Model new];
    }

    return _m_model;
}

- (CWUBLableLeftTop *)m_lbl_left{

    if (!_m_lbl_left) {
        _m_lbl_left = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_left];
        _m_lbl_left.textAlignment = NSTextAlignmentLeft;

        _m_lbl_left.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_left.numberOfLines = 0;
    }
    return _m_lbl_left;
}

- (CWUBLableLeftTop *)m_lbl_rightBottom{

    if (!_m_lbl_rightBottom) {
        _m_lbl_rightBottom = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_bottomRight];
        _m_lbl_rightBottom.textAlignment = NSTextAlignmentLeft;

        _m_lbl_rightBottom.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_rightBottom.numberOfLines = 0;
    }
    return _m_lbl_rightBottom;
}

- (UITextView *)m_textfield_right{

    if (!_m_textfield_right) {
        //_m_textfield_right = [[CWUBTextfieldWithModel alloc] initWithModel:self.m_model.m_input_right];
        _m_textfield_right = [UITextView new];
        _m_textfield_right.delegate = self;
        _m_textfield_right.backgroundColor = [UIColor blueColor];
        _m_textfield_right.textContainer.lineFragmentPadding = 0;
        _m_textfield_right.textContainerInset = UIEdgeInsetsZero;
        _m_textfield_right.text = self.m_model.m_input_right.m_text;
        //[_m_textfield_right addTarget:self action:@selector(event_textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    }

    return _m_textfield_right;
}


-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

- (void) interface_updateWithModel:(CWUBCell_TitleLeft_TextViewRight_TitleRightBottom_Model*)model{

    self.m_model = model;
    //[self.m_textfield_right interface_update:model.m_input_right];
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

    [self.m_textfield_right becomeFirstResponder];
}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

#pragma mark - 事件

- (void)event_textFieldDidChange:(UITextField *)theTextField{

    if (![theTextField.text interface_checkWithRegex:self.m_model.m_input_right.m_regex] ) {

        theTextField.text = self.m_model.m_input_right.m_text;
        return;
    }

    self.m_model.m_input_right.m_text = theTextField.text;
    self.m_model.m_dataOut = self.m_model.m_input_right.m_text;
}

#pragma mark - textview 代理
- (void)textViewDidChange:(UITextView *)textView{

    if(textView.contentSize.height != textView.bounds.size.height){

        if ([self.delegate respondsToSelector:@selector(CWUBCell_TitleLeft_TextViewRight_TitleRightBottom_Delegate_constrains:)]) {

            [self.delegate CWUBCell_TitleLeft_TextViewRight_TitleRightBottom_Delegate_constrains:self.m_textfield_right.text];
        }

    }

}

#pragma mark - system
- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

#pragma mark - 接口

- (NSString*) interface_getInput{

    return @"";
    //return self.m_textfield_right.text;
}
@end

