//
//  CWUBCell_ButtonRight_SpaceBottom.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/19.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ButtonRight_SpaceBottom.h"
#import "CWUBButtonWithInfo.h"

@interface CWUBCell_ButtonRight_SpaceBottom()

@property (nonatomic, strong) CWUBButtonWithInfo *m_btn;



@end

@implementation CWUBCell_ButtonRight_SpaceBottom

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_ButtonRight_SpaceBottom_Model*)model{

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

    [self addSubview:self.m_btn];
    [self addSubview:self.m_img_sep];
    
    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{


    [_m_btn mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical*2);
        make.width.equalTo(@(100));
        make.height.equalTo(@(30));
    }];


    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_btn.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical);
    }];
}

#pragma mark - 属性
- (CWUBButtonWithInfo *)m_btn{

    if (!_m_btn) {
        if (self.m_model.m_btn_info) {
            _m_btn = [[CWUBButtonWithInfo alloc] initWithModel:self.m_model.m_btn_info];
        }else{
            _m_btn = [CWUBButtonWithInfo new];
        }

        _m_btn.layer.cornerRadius = 5.;
        _m_btn.layer.borderWidth = 1.;
        _m_btn.clipsToBounds = YES;

        [_m_btn interface_updateWithModel:self.m_model.m_btn_info];

        [_m_btn addTarget:self action:@selector(uiEvent_detail) forControlEvents:UIControlEventTouchUpInside];
    }

    return _m_btn;
}

- (void) interface_updateWithModel:(CWUBCell_ButtonRight_SpaceBottom_Model*)model{

    [super interface_updateWithModel:model];
    
    if (model) {
        self.m_model = model;
        [self.m_btn interface_updateWithModel:self.m_model.m_btn_info];
    }

    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    if (self.m_model.m_bottomLineInfo.m_image && self.m_model.m_bottomLineInfo.m_image.length>0) {
        [self.m_img_sep setImage:[UIImage imageNamed:self.m_model.m_bottomLineInfo.m_image]];
    }
    self.delegate = (id<CWUBCell_ButtonRight_SpaceBottom_Delegate>)self.m_delegate;

    [self func_updateConsrtains];

}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

- (void)uiEvent_detail{

    if ([self.delegate respondsToSelector:@selector(CWUBCell_ButtonRight_SpaceBottom_Delegate:)]) {

        [self.delegate CWUBCell_ButtonRight_SpaceBottom_Delegate:self.m_model.m_id];
    }
}
@end


