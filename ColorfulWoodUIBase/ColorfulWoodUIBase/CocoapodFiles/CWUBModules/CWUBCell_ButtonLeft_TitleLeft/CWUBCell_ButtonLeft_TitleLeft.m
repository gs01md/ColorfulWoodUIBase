//
//  CWUBCell_ButtonLeft_TitleLeft.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ButtonLeft_TitleLeft.h"
#import "CWUBLabelWithModel.h"

@interface CWUBCell_ButtonLeft_TitleLeft()



@property (nonatomic, strong) CWUBLabelWithModel *m_lblShowBtn;
@property (nonatomic, strong) UIImageView * m_img_btn;


@end

@implementation CWUBCell_ButtonLeft_TitleLeft

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_ButtonLeft_TitleLeft_Model*)model{

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

    [self addSubview:self.m_lblShowBtn];
    [self addSubview:self.m_img_btn];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_img_btn mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.left.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Horizontal);
        make.width.equalTo(@(self.m_model.m_btnImg.m_width));
        make.height.equalTo(@(self.m_model.m_btnImg.m_height));
    }];

    [_m_lblShowBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_img_btn.mas_right).offset(CWUBBaseViewConfig_Space_Element_Horizontal/2.);
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);

    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lblShowBtn.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical);
    }];
}

#pragma mark - 属性
-(CWUBCell_ButtonLeft_TitleLeft_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_ButtonLeft_TitleLeft_Model new];
    }

    return _m_model;
}

- (CWUBLabelWithModel *)m_lblShowBtn{

    if (!_m_lblShowBtn) {
        _m_lblShowBtn = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title_btn];
        _m_lblShowBtn.textAlignment = NSTextAlignmentLeft;
        _m_lblShowBtn.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lblShowBtn.numberOfLines = 0;
    }
    return _m_lblShowBtn;
}

-(UIImageView *)m_img_btn{

    if(!_m_img_btn){
        _m_img_btn = [UIImageView new];
        [_m_img_btn setImage:[UIImage imageNamed:self.m_model.m_btnImg.m_imgName]];
        _m_img_btn.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_btn.clipsToBounds = YES;
        [_m_img_btn setClipsToBounds:YES];
    }
    return _m_img_btn;
}

- (void) interface_updateWithModel:(CWUBCell_ButtonLeft_TitleLeft_Model*)model{

    [super interface_updateWithModel:model];
    
    self.m_model = model;

    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    [self.m_img_btn setImage:[UIImage imageNamed:self.m_model.m_btnImg.m_imgName]];
    [self.m_lblShowBtn interface_update:model.m_title_btn];
    if (self.m_model.m_bottomLineInfo.m_image && self.m_model.m_bottomLineInfo.m_image.length>0) {
        [self.m_img_sep setImage:[UIImage imageNamed:self.m_model.m_bottomLineInfo.m_image]];
    }
    [self func_updateConsrtains];
}

- (NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end



