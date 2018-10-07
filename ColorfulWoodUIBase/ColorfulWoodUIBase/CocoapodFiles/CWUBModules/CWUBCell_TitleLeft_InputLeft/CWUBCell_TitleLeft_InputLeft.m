//
//  CWUBCell_TitleLeft_InputLeft.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/16.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_InputLeft.h"
#import "CWUBLableLeftTop.h"
#import "CWUBLabelWithModel.h"
#import "CWUBTextfieldWithModel.h"

@interface CWUBCell_TitleLeft_InputLeft()


@property (nonatomic, strong) CWUBLableLeftTop *m_lbl_title;
@property (nonatomic, strong) CWUBTextfieldWithModel *m_lbl_textfield;

@end

@implementation CWUBCell_TitleLeft_InputLeft

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleLeft_InputLeft_Model*)model{

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

    [self addSubview:self.m_lbl_title];
    [self addSubview:self.m_lbl_textfield];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{
    
    [_m_lbl_title mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(self.m_model.m_title.m_margin_left);
        make.top.equalTo(self).offset(self.m_model.m_title.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title.m_margin_bottom);

        if (self.m_model.m_title.m_width > 0.01) {
            make.width.equalTo(@(self.m_model.m_title.m_width));
        }else{
            make.width.equalTo(@(CWUBBaseViewConfig_Width_Title_Default));
        }
    }];

    [_m_lbl_textfield mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).offset(self.m_model.m_input.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_input.m_margin_bottom);
        make.right.equalTo(self).offset(-self.m_model.m_input.m_margin_right);

        if (self.m_model.m_input.m_width > 0.01) {
            make.width.equalTo(@(self.m_model.m_input.m_width));
        }else{
            make.left.equalTo(self.m_lbl_title.mas_right).offset(self.m_model.m_input.m_margin_left);
        }
    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_textfield.mas_bottom).offset(self.m_model.m_bottomLineInfo.m_margin_top);
    }];

}

#pragma mark - 属性
-(CWUBCell_TitleLeft_InputLeft_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleLeft_InputLeft_Model new];
    }

    return _m_model;
}

- (CWUBLableLeftTop *)m_lbl_title{

    if (!_m_lbl_title) {
        _m_lbl_title = [[CWUBLableLeftTop alloc] initWithModel:self.m_model.m_title];
        _m_lbl_title.textAlignment = NSTextAlignmentLeft;

        _m_lbl_title.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_title.numberOfLines = 0;
    }
    return _m_lbl_title;
}

- (CWUBTextfieldWithModel *)m_lbl_textfield{

    if (!_m_lbl_textfield) {
        _m_lbl_textfield = [[CWUBTextfieldWithModel alloc] initWithModel:self.m_model.m_input];
        [_m_lbl_textfield addTarget:self action:@selector(event_textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    }

    return _m_lbl_textfield;
}

- (void) interface_updateWithModel:(CWUBCell_TitleLeft_InputLeft_Model*)model{

    [super interface_updateWithModel:model];
    
    self.m_model = model;
    [self.m_lbl_textfield interface_update:model.m_input];
    [self.m_lbl_title interface_update:model.m_title];
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

    if (![theTextField.text interface_checkWithRegex:self.m_model.m_input.m_regex] ) {

        theTextField.text = self.m_model.m_input.m_text;
        return;
    }

    self.m_model.m_input.m_text = theTextField.text;
    self.m_model.m_dataOut = self.m_model.m_input.m_text;
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

#pragma mark - 接口

- (NSString*) interface_getInput{

    return self.m_lbl_textfield.text;
}
@end

