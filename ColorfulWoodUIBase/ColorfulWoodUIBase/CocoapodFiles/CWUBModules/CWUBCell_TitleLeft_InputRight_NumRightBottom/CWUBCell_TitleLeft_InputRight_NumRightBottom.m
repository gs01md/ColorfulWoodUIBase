//
//  CWUBCell_TitleLeft_InputRight_NumRightBottom.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/1/3.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_InputRight_NumRightBottom.h"

@interface CWUBCell_TitleLeft_InputRight_NumRightBottom()<
UITextViewDelegate
>

@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_left;
@property (nonatomic, strong) CWUBTextView *m_textfield_center;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_numRight;

@end

@implementation CWUBCell_TitleLeft_InputRight_NumRightBottom

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleLeft_InputRight_NumRightBottom_Model*)model{

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
    [self addSubview:self.m_textfield_center];
    [self addSubview:self.m_lbl_numRight];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_lbl_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(self.m_model.m_title_left.m_margin_left);
        make.top.equalTo(self.m_textfield_center);
        make.width.equalTo(@(self.m_model.m_title_left.m_width));
    }];


    /**
     * 刷新textView的高度
     */
    float textWidth = _m_textfield_center.frame.size.width;
    float fMinHeight = self.m_model.m_input_center.m_height_min > 0?self.m_model.m_input_center.m_height_min:0;
    float textViewHeight =  fMinHeight;
    if (textWidth > 0) {
        textViewHeight = [_m_textfield_center sizeThatFits:CGSizeMake(textWidth, MAXFLOAT)].height;
        textViewHeight = textViewHeight>fMinHeight?textViewHeight:fMinHeight;
    }

    [_m_textfield_center mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).offset(self.m_model.m_input_center.m_margin_top);
        make.left.equalTo(self.m_lbl_left.mas_right).offset(self.m_model.m_input_center.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_input_center.m_margin_right);
        if (textViewHeight>0) {
            make.height.mas_equalTo(textViewHeight);
        }

    }];

    [_m_lbl_numRight mas_remakeConstraints:^(MASConstraintMaker *make) {

        /**
         * 是否显示，如果不限制输入字数，则不显示
         */
        if (self.m_model.m_title_numRightBottom.m_isHidden) {
            make.bottom.equalTo(self.m_textfield_center.mas_bottom);
            make.height.mas_equalTo(1);
            make.right.equalTo(self);
        } else {
            make.top.equalTo(self.m_textfield_center.mas_bottom).offset(self.m_model.m_title_numRightBottom.m_margin_top);
            //make.width.mas_equalTo([self.m_model.m_title_numRightBottom interface_setWidthByContent]);
            make.right.equalTo(self).offset(-self.m_model.m_title_numRightBottom.m_margin_right);
        }

    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_numRight.mas_bottom).offset(self.m_model.m_bottomLineInfo.m_margin_top);
    }];
}

-(CWUBCell_TitleLeft_InputRight_NumRightBottom_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleLeft_InputRight_NumRightBottom_Model new];
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

- (CWUBLabelWithModel *)m_lbl_numRight{

    if (!_m_lbl_numRight) {
        _m_lbl_numRight = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_numRightBottom];
        _m_lbl_numRight.textAlignment = NSTextAlignmentRight;

        _m_lbl_numRight.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_numRight.numberOfLines = 0;
    }
    return _m_lbl_numRight;
}

- (CWUBTextView *)m_textfield_center{

    if (!_m_textfield_center) {
        _m_textfield_center = [[CWUBTextView alloc] initWithModel:self.m_model.m_input_center];
        if (self.m_model.m_input_center.m_textField_realTime) {
            _m_textfield_center.delegate = self;
        } else {
            _m_textfield_center.delegate = nil;
        }
    }

    return _m_textfield_center;
}

- (void) interface_updateWithModel:(CWUBCell_TitleLeft_InputRight_NumRightBottom_Model*)model{

    [super interface_updateWithModel:model];

    self.m_model = model;
    [self.m_textfield_center interface_update:model.m_input_center];

    [self.m_lbl_left interface_update:model.m_title_left];
    [self.m_lbl_numRight interface_update:model.m_title_numRightBottom];
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    if (self.m_model.m_bottomLineInfo.m_image && self.m_model.m_bottomLineInfo.m_image.length>0) {
        [self.m_img_sep setImage:[UIImage imageNamed:self.m_model.m_bottomLineInfo.m_image]];
    }

    if (self.m_model.m_input_center.m_textField_realTime) {
        self.m_textfield_center.delegate = self;
    } else {
        self.m_textfield_center.delegate = nil;
    }

    self.m_lbl_numRight.text = [NSString stringWithFormat:@"%lu/%d",(unsigned long)model.m_input_center.m_text.length,self.m_model.m_input_center.m_limitInputNum];

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
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{

    NSString * new_text_str = [textView.text stringByReplacingCharactersInRange:range withString:text];

    /**
     * 如果不符合正则表达式，则不改变
     */
    NSString *str = [new_text_str interface_getWithRegex:self.m_model.m_input_center.m_regex];
    if (![new_text_str isEqualToString: str]) {
        return FALSE;
    }

    /**
     * 更新限制个数
     * 如果超过限制，则返回
     */
    if (self.m_model.m_input_center.m_limitInputNum>0) {

        if (new_text_str.length>self.m_model.m_input_center.m_limitInputNum) {

            return FALSE;
        } else {
            self.m_lbl_numRight.text = [NSString stringWithFormat:@"%lu/%d",(unsigned long)new_text_str.length,self.m_model.m_input_center.m_limitInputNum];
            self.m_model.m_title_numRightBottom.m_text = self.m_lbl_numRight.text;
        }

    }

    /**
     * 小写字母变成大写字母
     */
    if (self.m_model.m_input_center.m_bUppercaseString) {
        new_text_str = [new_text_str uppercaseString];
    }

    self.m_model.m_input_center.m_text = new_text_str;
    self.m_model.m_dataOut = self.m_model.m_input_center.m_text;

    return YES;
}

- (void)textViewDidChange:(UITextView *)textView{

    NSString * str = textView.text;
    self.m_lbl_numRight.text = [NSString stringWithFormat:@"%lu/%d",(unsigned long)str.length,self.m_model.m_input_center.m_limitInputNum];
    self.m_model.m_input_center.m_text = str;

    [self.m_textfield_center interface_update:self.m_model.m_input_center];

    if ([self.delegate respondsToSelector:@selector(CWUBCell_TitleLeft_InputRight_NumRightBottom_Delegate_textChanged:)]) {

        [self.delegate CWUBCell_TitleLeft_InputRight_NumRightBottom_Delegate_textChanged:self.m_model.m_dataOut];
    }

    if ([self.delegate respondsToSelector:@selector(CWUBCell_TitleLeft_InputRight_NumRightBottom_Delegate_changed:)]) {

        [self.delegate CWUBCell_TitleLeft_InputRight_NumRightBottom_Delegate_changed:self.m_model];
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

-(void)textViewDidEndEditing:(UITextView *)textView{

    if ([self.delegate respondsToSelector:@selector(CWUBCellBaseDelegate_textView_endEditing:)]) {

        [self.delegate CWUBCellBaseDelegate_textView_endEditing:self.m_model];
    }
}


- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

#pragma mark - 接口

- (NSString*) interface_getInput{

    return self.m_textfield_center.text;
}

/**
 * 根据参数刷新界面
 */
- (void)interface_updateWithCode:(NSString*)code{

    if ([code isEqualToString:@"hiddenBottomLine"]) {
        self.m_lbl_numRight.hidden = YES;
    }

    if ([code isEqualToString:@"showBottomLine"]) {
        self.m_lbl_numRight.hidden = NO;
    }
}
@end
