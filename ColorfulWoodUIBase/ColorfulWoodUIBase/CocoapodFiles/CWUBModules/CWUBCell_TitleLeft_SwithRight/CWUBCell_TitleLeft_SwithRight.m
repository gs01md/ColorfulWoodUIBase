//
//  CWUBCell_TitleLeft_SwithRight.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/22.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_SwithRight.h"
#import "CWUBLabelWithModel.h"
#import "CWUBLableLeftTop.h"

@interface CWUBCell_TitleLeft_SwithRight()

@property (nonatomic, strong) CWUBLableLeftTop *m_lbl_left;
@property (nonatomic, strong) UISwitch * m_switch;
@property (nonatomic, strong) UIImageView * m_img_sep;

@end

@implementation CWUBCell_TitleLeft_SwithRight

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleLeft_SwithRight_Model*)model{

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

- (id)initWithModel:(CWUBCell_TitleLeft_SwithRight_Model*)model{

    if (self = [super init]) {
        self.m_model = model;
        [self initWithSubViews];
    }

    return self;
}

- (void) initWithSubViews{

    [self addSubview:self.m_lbl_left];
    [self addSubview:self.m_switch];
    [self addSubview:self.m_img_sep];
    
    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_lbl_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Horizontal);
        make.right.equalTo(self.m_switch.mas_left).offset(-CWUBBaseViewConfig_Space_Element_Horizontal);
        //make.width.equalTo(@(CWUBBaseViewConfig_Width_Title_Default));
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title.m_margin_bottom);

    }];

    [_m_switch mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal + 6.);
        make.centerY.equalTo(self.m_lbl_left);
    }];

    [_m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_left.mas_bottom).offset(self.m_model.m_title.m_margin_bottom);
    }];
}

#pragma mark - 属性
- (UISwitch *)m_switch{

    if (!_m_switch) {
        _m_switch = [UISwitch new];
        _m_switch.tintColor = [UIColor lightGrayColor];
        _m_switch.transform = CGAffineTransformMakeScale(0.7, 0.7);//缩放
        // _invoiceSwitch.thumbTintColor = [UIColor colorWithHexString:@"#00b1ed" alpha:1];
        _m_switch.onTintColor = [UIColor colorWithHexString:@"#00b1ed" alpha:1];
        [_m_switch addTarget:self action:@selector(switchChange:) forControlEvents:UIControlEventValueChanged];
        _m_switch.onTintColor = [CWUBDefine colorBlueDeep];
        if (self.m_model.m_color_swith) {
            _m_switch.onTintColor = self.m_model.m_color_swith;
        }
        [_m_switch setOn:NO animated:YES];
    }
    return _m_switch;
}


-(CWUBCell_TitleLeft_SwithRight_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleLeft_SwithRight_Model new];
    }

    return _m_model;
}

- (CWUBLableLeftTop *)m_lbl_left{

    if (!_m_lbl_left) {
        _m_lbl_left = [[CWUBLableLeftTop alloc] initWithModel: self.m_model.m_title];
        _m_lbl_left.textAlignment = NSTextAlignmentLeft;
        _m_lbl_left.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_left.numberOfLines = 0;
    }
    return _m_lbl_left;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

- (void) interface_updateWithModel:(CWUBCell_TitleLeft_SwithRight_Model*)model{

    self.m_model = model;

    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    [self.m_lbl_left interface_update:model.m_title];
    _m_switch.onTintColor = self.m_model.m_color_swith;

}

#pragma mark - 事件
-(void)switchChange:(UISwitch*)sender{

    if (sender.on)
    {
        [_m_switch setOn:NO animated:YES];
    }
    else
    {
        [_m_switch setOn:YES animated:YES];
    }

    if ([self.delegate respondsToSelector:@selector(CWUBCell_TitleLeft_SwithRight_Delegate_Switch:)]) {

        [self.delegate CWUBCell_TitleLeft_SwithRight_Delegate_Switch:sender.on];
    }

    //    if (self.switchon)
    //    {
    //        self.switchon(sender.on);
    //    }
}

-(void)changeSwichColor:(UIColor *)color{
    _m_switch.onTintColor = color;
}

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end


