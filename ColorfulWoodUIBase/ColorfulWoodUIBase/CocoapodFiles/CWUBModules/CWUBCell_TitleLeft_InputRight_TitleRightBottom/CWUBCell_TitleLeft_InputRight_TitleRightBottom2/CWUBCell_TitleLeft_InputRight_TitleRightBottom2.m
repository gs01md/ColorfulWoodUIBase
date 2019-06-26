//
//  CWUBCell_TitleLeft_InputRight_TitleRightBottom2.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_InputRight_TitleRightBottom2.h"


@interface CWUBCell_TitleLeft_InputRight_TitleRightBottom2()<
UITextFieldDelegate,
UITextViewDelegate
>

@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_left;
@property (nonatomic, strong) CWUBTextView *m_textfield_right;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_rightBottom;

@end

@implementation CWUBCell_TitleLeft_InputRight_TitleRightBottom2

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Model*)model{

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
    [self addSubview:self.m_textfield_right];
    [self addSubview:self.m_lbl_rightBottom];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_lbl_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(self.m_model.m_title_left.m_margin_left);
        make.centerY.equalTo(self.m_textfield_right);
        make.width.equalTo(@(self.m_model.m_title_left.m_width));
    }];

    /**
     * 刷新textView的高度
     */
    float textWidth = _m_textfield_right.frame.size.width;
    float fMinHeight = self.m_model.m_input_right.m_height_min > 0?self.m_model.m_input_right.m_height_min:0;
    float textViewHeight =  fMinHeight;
    if (textWidth > 0) {
        textViewHeight = [_m_textfield_right sizeThatFits:CGSizeMake(textWidth, MAXFLOAT)].height;
        textViewHeight = textViewHeight>fMinHeight?textViewHeight:fMinHeight;
    }

    [_m_textfield_right mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).offset(self.m_model.m_input_right.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_input_right.m_margin_bottom);
        make.left.equalTo(self.m_lbl_left.mas_right).offset(self.m_model.m_input_right.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_input_right.m_margin_right);
        if (textViewHeight>0) {
            make.height.mas_equalTo(textViewHeight);
        }
    }];

    [_m_lbl_rightBottom mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title_bottomRight.m_margin_bottom);
        make.left.equalTo(self.m_lbl_left.mas_right).offset(self.m_model.m_input_right.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_input_right.m_margin_right);
    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_textfield_right.mas_bottom).offset(self.m_model.m_bottomLineInfo.m_margin_top);
    }];
}

-(CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Model new];
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

- (CWUBTextView *)m_textfield_right{

    if (!_m_textfield_right) {
        _m_textfield_right = [[CWUBTextView alloc] initWithModel:self.m_model.m_input_right];

        if (self.m_model.m_input_right.m_textField_realTime) {
            _m_textfield_right.delegate = self;
        } else {
            _m_textfield_right.delegate = nil;
        }

    }

    return _m_textfield_right;
}

- (void) interface_updateWithModel:(CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Model*)model{

    [super interface_updateWithModel:model];

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

    if (self.m_model.m_input_right.m_textField_realTime) {
        self.m_textfield_right.delegate = self;
    } else {
        self.m_textfield_right.delegate = nil;
    }

    [self func_updateConsrtains];
}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

#pragma mark - textfield
/**
 * 可能是代理的原因：输入汉字时，对应的英文也会输入进去
 * 所以该方法不便经常使用，需要加个条件，默认是关闭的
 * 我是因为输入手机号码后，点击按钮，不能及时获取手机号码才加入该功能的
 */
- (BOOL)textField:(UITextField *)theTextField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    NSString * new_text_str = [theTextField.text stringByReplacingCharactersInRange:range withString:string];

    /**
     * 小写字母变成大写字母
     */
    if (self.m_model.m_input_right.m_bUppercaseString) {
        new_text_str = [new_text_str uppercaseString];
    }

    self.m_model.m_input_right.m_text = new_text_str;
    self.m_model.m_dataOut = self.m_model.m_input_right.m_text;

    [self.m_textfield_right interface_update:self.m_model.m_input_right];

    if ([self.delegate respondsToSelector:@selector(CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Delegate_textChanged:)]) {

        [self.delegate CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Delegate_textChanged:self.m_model.m_dataOut];
    }

    if ([self.delegate respondsToSelector:@selector(CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Delegate_changed:)]) {

        [self.delegate CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Delegate_changed:self.m_model];
    }

    return YES;
}
#pragma mark - 事件
- (void)textViewDidChange:(UITextView *)theTextField{

    /**
     * 之所以保留改事件，就是因为 正则表达式需要最后来判断
     */
    theTextField.text = [theTextField.text interface_getWithRegex:self.m_model.m_input_right.m_regex];

    /**
     * 小写字母变成大写字母
     */
    if (self.m_model.m_input_right.m_bUppercaseString) {
        theTextField.text = [theTextField.text uppercaseString];
    }

    self.m_model.m_input_right.m_text = theTextField.text;
    self.m_model.m_dataOut = self.m_model.m_input_right.m_text;

    [self.m_textfield_right interface_update:self.m_model.m_input_right];

    if ([self.delegate respondsToSelector:@selector(CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Delegate_textChanged:)]) {

        [self.delegate CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Delegate_textChanged:self.m_model.m_dataOut];
    }

    if ([self.delegate respondsToSelector:@selector(CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Delegate_changed:)]) {

        [self.delegate CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Delegate_changed:self.m_model];
    }

    /**
     * 刷新界面
     */
    [self func_updateConsrtains];
    if (self.m_tableView) {
        [UIView performWithoutAnimation:^{
            [self.m_tableView beginUpdates];
            [self.m_tableView endUpdates];
        }];
    }
}

-(void)textViewDidEndEditing:(UITextView *)theTextField{

    /**
     * 之所以保留改事件，就是因为 正则表达式需要最后来判断
     */
    theTextField.text = [theTextField.text interface_getWithRegex:self.m_model.m_input_right.m_regex];

    /**
     * 小写字母变成大写字母
     */
    if (self.m_model.m_input_right.m_bUppercaseString) {
        theTextField.text = [theTextField.text uppercaseString];
    }

    self.m_model.m_input_right.m_text = theTextField.text;
    self.m_model.m_dataOut = self.m_model.m_input_right.m_text;

    if ([self.delegate respondsToSelector:@selector(CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Delegate_textChanged:)]) {

        [self.delegate CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Delegate_textChanged:self.m_model.m_dataOut];
    }

    if ([self.delegate respondsToSelector:@selector(CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Delegate_changed:)]) {

        [self.delegate CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Delegate_changed:self.m_model];
    }

    if ([self.delegate respondsToSelector:@selector(CWUBCellBaseDelegate_textView_endEditing:)]) {

        [self.delegate CWUBCellBaseDelegate_textView_endEditing:self.m_model];
    }
}

- (void)event_textFieldDidChange:(UITextField *)theTextField{

    /**
     * 之所以保留改事件，就是因为 正则表达式需要最后来判断
     */
    theTextField.text = [theTextField.text interface_getWithRegex:self.m_model.m_input_right.m_regex];

    /**
     * 小写字母变成大写字母
     */
    if (self.m_model.m_input_right.m_bUppercaseString) {
        theTextField.text = [theTextField.text uppercaseString];
    }

    self.m_model.m_input_right.m_text = theTextField.text;
    self.m_model.m_dataOut = self.m_model.m_input_right.m_text;

    if ([self.delegate respondsToSelector:@selector(CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Delegate_textChanged:)]) {

        [self.delegate CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Delegate_textChanged:self.m_model.m_dataOut];
    }

    if ([self.delegate respondsToSelector:@selector(CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Delegate_changed:)]) {

        [self.delegate CWUBCell_TitleLeft_InputRight_TitleRightBottom2_Delegate_changed:self.m_model];
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
@end
