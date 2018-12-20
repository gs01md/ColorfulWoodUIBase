//
//  CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/10/15.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight.h"

@interface CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight()

@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_left;
@property (nonatomic, strong) CWUBTextfieldWithModel *m_textfield_right;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_rightBottom;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_right;

/**
 * 按钮倒计时
 */
@property int m_iNum;
@property (nonatomic, strong) NSTimer * m_timer;

/**
 * 逻辑上，比如手机号码不符合格式，不应该进行倒计时的处理，这时，通过该参数进行判断。
 * 需要注册消息，通过消息来判断。
 * 因为通过刷新页面，会导致输入框的收起
 */
@property (nonatomic, assign) BOOL m_canTimer;

@end

@implementation CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {
        self.m_model = model;
        if (self.m_model.m_bottomLineInfo.m_color) {
            self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
        }else{
            self.m_img_sep.backgroundColor = [UIColor clearColor];
        }
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self func_initWithSubViews];

        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(noti_change:) name:CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_NOTI object:nil];

    }

    return self;
}

- (void) func_initWithSubViews{

    [self addSubview:self.m_lbl_left];
    [self addSubview:self.m_textfield_right];
    [self addSubview:self.m_lbl_rightBottom];
    [self addSubview:self.m_lbl_right];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_lbl_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(self.m_model.m_title_left.m_margin_left);
        make.centerY.equalTo(self.m_textfield_right);
        make.width.equalTo(@(self.m_model.m_title_left.m_width));
    }];

    [_m_lbl_right mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_lbl_left);

        make.right.equalTo(self).offset(-self.m_model.m_title_right.m_margin_right);
        if (self.m_model.m_title_right.m_width>1) {
            make.width.mas_equalTo(self.m_model.m_title_right.m_width);
        }else{
            make.left.equalTo(self.m_textfield_right.mas_right).offset(self.m_model.m_title_right.m_margin_left);
        }
        if (self.m_model.m_title_right.m_height>1) {
            make.height.mas_equalTo(self.m_model.m_title_right.m_height);
        }
    }];

    [_m_textfield_right mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).offset(self.m_model.m_input_right.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_input_right.m_margin_bottom);
        make.left.equalTo(self.m_lbl_left.mas_right).offset(self.m_model.m_input_right.m_margin_left);
        make.right.equalTo(self.m_lbl_right.mas_left).offset(-self.m_model.m_input_right.m_margin_right);
    }];

    [_m_lbl_rightBottom mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title_bottomRight.m_margin_bottom);
        make.left.equalTo(self.m_lbl_left.mas_right).offset(self.m_model.m_input_right.m_margin_left);
        make.right.equalTo(self.m_lbl_right.mas_left).offset(-self.m_model.m_input_right.m_margin_right);
    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_textfield_right.mas_bottom).offset(self.m_model.m_bottomLineInfo.m_margin_top);
    }];
}

-(CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Model new];
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



- (CWUBTextfieldWithModel *)m_textfield_right{

    if (!_m_textfield_right) {
        _m_textfield_right = [[CWUBTextfieldWithModel alloc] initWithModel:self.m_model.m_input_right];
        _m_textfield_right.textAlignment = NSTextAlignmentRight;
        [_m_textfield_right addTarget:self action:@selector(event_textFieldDidChange:) forControlEvents:UIControlEventEditingDidEnd];
    }

    return _m_textfield_right;
}

- (void) interface_updateWithModel:(CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Model*)model{

    [super interface_updateWithModel:model];

    self.m_model = model;
    [self.m_textfield_right interface_update:model.m_input_right];
    [self.m_lbl_left interface_update:model.m_title_left];
    [self.m_lbl_rightBottom interface_update:model.m_title_bottomRight];

    /**
     * 可以通过这个属性来判断是否在进行倒计时操作
     */
    if (self.m_lbl_right.isUserInteractionEnabled) {
        [self.m_lbl_right interface_update:model.m_title_right];
    }

    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    if (self.m_model.m_bottomLineInfo.m_image && self.m_model.m_bottomLineInfo.m_image.length>0) {
        [self.m_img_sep setImage:[UIImage imageNamed:self.m_model.m_bottomLineInfo.m_image]];
    }

    if (self.m_model.m_stopTimer) {
        [self func_endTimer];
        self.m_model.m_stopTimer = FALSE;
    }
    
    [self func_updateConsrtains];
}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

#pragma mark - 事件

- (void)onClick_right{

    if (self.m_canTimer) {

        /**
         * 倒计时
         */
        [self func_timer];

        if ([self.delegate respondsToSelector:@selector(CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Delegate_right)]) {

            [self.delegate CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Delegate_right];
        }
    }

}

- (void)func_timer{

    [self.m_lbl_right setUserInteractionEnabled:NO];

    self.m_iNum = self.m_model.m_title_right.m_valueOpt;

    self.m_timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(func_resetTimer) userInfo:nil repeats:YES];
    [self.m_timer fire];

}

- (void)noti_change:(NSNotification*)noti{

    self.m_canTimer = NO;

    if (noti && noti.object) {
        CWUBModelNotification *model = (CWUBModelNotification*)noti.object;
        if ([NSString checkForMobilePhoneNo: model.m_value]) {
            self.m_canTimer = YES;
        }
    }

}

#pragma mark - 设置倒计时时间

- (void)func_resetTimer{

    if (_m_iNum <= 0) {

        [self func_endTimer];

        return;
    }

    [self.m_lbl_right setUserInteractionEnabled:NO];

    NSString * str = [NSString stringWithFormat:@"剩余%dS",_m_iNum--];
    self.m_lbl_right.text = str;

}

- (void)func_endTimer{

    self.m_lbl_right.text = self.m_model.m_title_right.m_textPlaceholder;
    [self.m_lbl_right setUserInteractionEnabled:YES];
    [_m_timer invalidate];

}

#pragma mark - 事件
- (void)event_textFieldDidChange:(UITextField *)theTextField{

    theTextField.text = [theTextField.text interface_getWithRegex:self.m_model.m_input_right.m_regex];

    /**
     * 小写字母变成大写字母
     */
    if (self.m_model.m_input_right.m_bUppercaseString) {
        theTextField.text = [theTextField.text uppercaseString];
    }

    self.m_model.m_input_right.m_text = theTextField.text;
    self.m_model.m_dataOut = self.m_model.m_input_right.m_text;

    if ([self.delegate respondsToSelector:@selector(CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Delegate_textChanged:)]) {

        [self.delegate CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Delegate_textChanged:self.m_model.m_dataOut];
    }

    if ([self.delegate respondsToSelector:@selector(CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Delegate_changed:)]) {

        [self.delegate CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Delegate_changed:self.m_model];
    }
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

#pragma mark - 接口

- (NSString*) interface_getInput{

    return self.m_textfield_right.text;
}

/**
 * 根据参数刷新界面
 */
- (void)interface_updateWithCode:(NSString*)code{

    if ([code isEqualToString:@"hiddenBottomLine"]) {
        self.m_lbl_rightBottom.hidden = YES;
    }

    if ([code isEqualToString:@"showBottomLine"]) {
        self.m_lbl_rightBottom.hidden = NO;
    }
}

- (void)dealloc {

    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
@end

