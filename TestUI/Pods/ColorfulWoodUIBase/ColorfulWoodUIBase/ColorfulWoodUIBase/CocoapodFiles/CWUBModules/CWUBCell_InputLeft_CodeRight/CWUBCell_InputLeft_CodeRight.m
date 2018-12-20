//
//  CWUBCell_InputLeft_CodeRight.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/10/15.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import "CWUBCell_InputLeft_CodeRight.h"

@interface CWUBCell_InputLeft_CodeRight()

@property (nonatomic, strong) CWUBTextfieldWithModel *m_textfield_left;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_right;

/**
 * 按钮倒计时
 */
@property int m_iNum;
@property (nonatomic, strong) NSTimer * m_timer;

@end

@implementation CWUBCell_InputLeft_CodeRight

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_InputLeft_CodeRight_Model*)model{

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

    [self addSubview:self.m_textfield_left];
    [self addSubview:self.m_lbl_right];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_textfield_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(self.m_model.m_input_left.m_margin_left);
        make.right.equalTo(self.m_lbl_right.mas_left).offset(-self.m_model.m_input_left.m_margin_right);
        make.top.equalTo(self).offset(self.m_model.m_input_left.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_input_left.m_margin_bottom);
    }];

    [_m_lbl_right mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_textfield_left);

        make.right.equalTo(self).offset(-self.m_model.m_title_right.m_margin_right);
        if (self.m_model.m_title_right.m_width>1) {
            make.width.mas_equalTo(self.m_model.m_title_right.m_width);
        }else{
            make.left.equalTo(self.m_textfield_left.mas_right).offset(self.m_model.m_title_right.m_margin_left);
        }
        if (self.m_model.m_title_right.m_height>1) {
            make.height.mas_equalTo(self.m_model.m_title_right.m_height);
        }
    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_textfield_left.mas_bottom).offset(self.m_model.m_bottomLineInfo.m_margin_top);
    }];
}

-(CWUBCell_InputLeft_CodeRight_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_InputLeft_CodeRight_Model new];
    }

    return _m_model;
}




- (CWUBLabelWithModel *)m_lbl_right{

    if (!_m_lbl_right) {
        _m_lbl_right = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_right];
        _m_lbl_right.textAlignment = NSTextAlignmentCenter;
        _m_lbl_right.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_right.numberOfLines = 0;
        _m_lbl_right.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onClick_right)];
        [_m_lbl_right addGestureRecognizer:tap];

    }
    return _m_lbl_right;
}



- (CWUBTextfieldWithModel *)m_textfield_left{

    if (!_m_textfield_left) {
        _m_textfield_left = [[CWUBTextfieldWithModel alloc] initWithModel:self.m_model.m_input_left];
        _m_textfield_left.textAlignment = NSTextAlignmentRight;
        [_m_textfield_left addTarget:self action:@selector(event_textFieldDidChange:) forControlEvents:UIControlEventEditingDidEnd];
    }

    return _m_textfield_left;
}

- (void) interface_updateWithModel:(CWUBCell_InputLeft_CodeRight_Model*)model{

    [super interface_updateWithModel:model];

    self.m_model = model;
    [self.m_textfield_left interface_update:model.m_input_left];
    [self.m_lbl_right interface_update:model.m_title_right];
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

- (void)onClick_right{

    /**
     * 倒计时
     */
    [self func_timer];

    if ([self.delegate respondsToSelector:@selector(CWUBCell_InputLeft_CodeRight_Delegate_right)]) {

        [self.delegate CWUBCell_InputLeft_CodeRight_Delegate_right];
    }
}

- (void)func_timer{

    [self.m_lbl_right setUserInteractionEnabled:NO];

    self.m_iNum = self.m_model.m_title_right.m_valueOpt;

    self.m_timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(func_resetTimer) userInfo:nil repeats:YES];
    [self.m_timer fire];

}

#pragma mark - 设置倒计时时间

- (void)func_resetTimer{

    if (_m_iNum <= 0) {

        self.m_lbl_right.text = self.m_model.m_title_right.m_text;
        [self.m_lbl_right setUserInteractionEnabled:YES];
        [_m_timer invalidate];

        return;
    }

    NSString * str = [NSString stringWithFormat:@"剩余%dS",_m_iNum--];
    self.m_lbl_right.text = str;

}

- (void)event_textFieldDidChange:(UITextField *)theTextField{

    theTextField.text = [theTextField.text interface_getWithRegex:self.m_model.m_input_left.m_regex];

    /**
     * 小写字母变成大写字母
     */
    if (self.m_model.m_input_left.m_bUppercaseString) {
        theTextField.text = [theTextField.text uppercaseString];
    }

    self.m_model.m_input_left.m_text = theTextField.text;
    self.m_model.m_dataOut = self.m_model.m_input_left.m_text;

    if ([self.delegate respondsToSelector:@selector(CWUBCell_InputLeft_CodeRight_Delegate_textChanged:)]) {

        [self.delegate CWUBCell_InputLeft_CodeRight_Delegate_textChanged:self.m_model.m_dataOut];
    }

    if ([self.delegate respondsToSelector:@selector(CWUBCell_InputLeft_CodeRight_Delegate_changed:)]) {

        [self.delegate CWUBCell_InputLeft_CodeRight_Delegate_changed:self.m_model];
    }
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

#pragma mark - 接口

- (NSString*) interface_getInput{

    return self.m_textfield_left.text;
}

/**
 * 根据参数刷新界面
 */
- (void)interface_updateWithCode:(NSString*)code{

}
@end
